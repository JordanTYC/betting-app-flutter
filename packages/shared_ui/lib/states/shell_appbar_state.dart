import 'package:freezed_annotation/freezed_annotation.dart';
part 'shell_appbar_state.freezed.dart';

@freezed
abstract class ShellAppBarState with _$ShellAppBarState {
  const factory ShellAppBarState({
    @Default(true) bool visible,
    @Default(false) bool showBackground,
  }) = _ShellAppBarState;
}
