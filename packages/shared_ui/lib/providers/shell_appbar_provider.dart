import 'package:flutter/rendering.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_ui/states/shell_appbar_state.dart';

part 'shell_appbar_provider.g.dart';

@riverpod
class ShellAppBar extends _$ShellAppBar {
  @override
  ShellAppBarState build() {
    return const ShellAppBarState();
  }

  void setTransparent() {
    state = state.copyWith(showBackground: false);
  }

  void setDefault() {
    state = state.copyWith(visible: true, showBackground: true);
  }

  void onScroll({required double offset, required ScrollDirection direction}) {
    if (offset == 0) {
      state = state.copyWith(visible: true, showBackground: false);
      return;
    }

    if (offset <= 70) {
      state = state.copyWith(visible: true, showBackground: true);
      return;
    }

    if (direction == ScrollDirection.forward) {
      state = state.copyWith(visible: true);
    } else {
      state = state.copyWith(visible: false);
    }
  }
}
