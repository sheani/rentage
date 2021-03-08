import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Callback when BLoC ready to create
/// [bloc] - previous closed BLoC or null if first create
typedef BlocLifecycleCreate<T> = T Function(
  BuildContext context,
  T bloc,
);

/// Callback when BLoC ready to close
typedef BlocLifecycleClose<T> = void Function(
  BuildContext context,
  T bloc,
);

typedef BlocLifecycleBuilder<T> = Widget Function(
  T bloc,
);

/// Widget is responsible for the life cycle of the block,
/// rebuilding when context is changed.
@immutable
class BlocLifecycle<T extends Cubit<Object>> extends StatefulWidget {
  const BlocLifecycle({
    @required this.create,
    this.child,
    this.builder,
    this.close,
    Key key,
  })  : assert(
          (child != null) ^ (builder != null),
          'Field child or builder in widget BlocLifecycle<T> must not be null',
        ),
        assert(
          create != null,
          'Field create in widget BlocLifecycle<T> must not be null',
        ),
        super(key: key);
  final Widget child;
  final BlocLifecycleBuilder<T> builder;
  final BlocLifecycleCreate<T> create;
  final BlocLifecycleClose<T> close;

  @override
  State<BlocLifecycle<T>> createState() => _BlocLifecycleState<T>();
}

class _BlocLifecycleState<T extends Cubit<Object>>
    extends State<BlocLifecycle<T>> {
  T _bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _rebuildBLoC(context, _bloc);
  }

  @override
  void dispose() {
    _closeIfNotNull(_bloc);
    super.dispose();
  }

  void _rebuildBLoC(BuildContext context, T currentBloc) {
    _bloc = widget.create(
      context,
      _bloc,
    );
    if (!identical(currentBloc, _bloc)) {
      _closeIfNotNull(currentBloc);
    }
  }

  void _closeIfNotNull(T oldBloc) {
    if (oldBloc != null) {
      if (widget.close != null) {
        widget.close(
          context,
          oldBloc,
        );
      }
      oldBloc.close();
    }
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              'Manages the life cycle of a BLoC',
            ),
          )
          ..add(
            StringProperty(
              'current state',
              _bloc?.state?.toString() ?? 'none',
            ),
          ),
      );

  @override
  Widget build(BuildContext context) => BlocProvider<T>.value(
        value: _bloc,
        child: widget?.child ?? widget.builder(_bloc),
      );
}
