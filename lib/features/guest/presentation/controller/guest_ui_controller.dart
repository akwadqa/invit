import 'package:invit/features/guest/presentation/controller/guest_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'guest_ui_controller.g.dart';

@riverpod
class GuestUiController extends _$GuestUiController {
  @override
  GuestUiState build() {
    return GuestUiState.init();
  }

  void changIndex(int index) {
    state = state.copyWith(index: index);
  }
}
