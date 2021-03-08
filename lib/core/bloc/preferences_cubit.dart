import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'preferences_cubit.freezed.dart';
part 'preferences_cubit.g.dart';

class PreferencesCubit extends HydratedCubit<PreferencesState> {
  PreferencesCubit() : super(const PreferencesState());

  void setToken(String token) => emit(state.copyWith(token: token));

  void setRefreshToken(String refreshToken) =>
      emit(state.copyWith(refreshToken: refreshToken));

  void cleanAll() => emit(const PreferencesState());

  @override
  PreferencesState fromJson(Map<String, dynamic> json) =>
      PreferencesState.fromJson(json);

  @override
  Map<String, dynamic> toJson(PreferencesState state) => state.toJson();
}

@freezed
abstract class PreferencesState with _$PreferencesState {
  @JsonSerializable(explicitToJson: true)
  const factory PreferencesState(
      {@nullable @Default(null) String token,
        @nullable @Default(null) String refreshToken}) = _PreferencesState;

  factory PreferencesState.fromJson(Map<String, dynamic> json) =>
      _$PreferencesStateFromJson(json);
}