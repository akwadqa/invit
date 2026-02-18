import 'package:invit/features/home/domain/model/events/event_model.dart';
import 'package:invit/features/scan/data/model/scan_qr_response/scan_qr_response.dart';
import 'package:invit/features/scan/data/model/user_scan_event_response/user_scan_event_response.dart';
import 'package:invit/features/scan/data/repository/scan_respository.dart';
import 'package:invit/features/scan/presentation/controller/scan_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'scan_controller.g.dart';

@riverpod
class ScanController extends _$ScanController {
  @override
  FutureOr<ScanState> build() {
    return ScanState.init();
  }

  int _currentPage = 1;
  int _totalPages = 1;
  List<UserScanEventResponse> _eventsList = [];

  Future<bool> setScannedCode(String qr) async {
    state = AsyncData(state.value!.copyWith(scannedCode: qr));

    return true;
  }

  Future<ScanQrResponse?> scanQr({
    required String qrCode,
    required String inviteeId,
  }) async {
    try {
      state = AsyncData(state.value!.copyWith(scanQrResponse: AsyncLoading()));
      final repo = ref.read(scanRepositoryProvider);
      final response = await repo.scanQr(
        qrCode: qrCode,
        checkinBy: '',
        inviteeId: inviteeId,
      );

      if (response.hasFailed) {
        state = AsyncData(state.value!.copyWith(
            scanQrResponse: AsyncError(
          response.message ?? '',
          StackTrace.fromString(response.message ?? ''),
        )));

        return null;
      }

      state = AsyncData(
          state.value!.copyWith(scanQrResponse: AsyncData(response.data!)));
      return response.data;
    } catch (e, st) {
      state =
          AsyncData(state.value!.copyWith(scanQrResponse: AsyncError(e, st)));
      return null;
    }
  }

  Future<List<UserScanEventResponse>?> getUserScanEvent({
    required int page,
    bool showLoading = true,
  }) async {
    try {
      if (showLoading) {
        state = AsyncData(
          state.value!.copyWith(userScanEventResponse: AsyncLoading()),
        );
      }
      final repo = ref.read(scanRepositoryProvider);
      final response = await repo.getUserScanEvent(page: page);
      _currentPage = response.pagination?.currentPage ?? _currentPage;
      _totalPages = response.pagination?.totalPages ?? _totalPages;

      if (page == 1) {
        _eventsList = List.from(response.data ?? []);
      } else {
        _eventsList.addAll(
          (response.data ?? []) as Iterable<UserScanEventResponse>,
        );
      }

      if (response.hasFailed) {
        state = AsyncData(
          state.value!.copyWith(
            userScanEventResponse: AsyncError(
              response.message ?? '',
              StackTrace.fromString(response.message ?? ''),
            ),
          ),
        );
        throw Exception(response.message);
      }
      // final eventResponse = UserScanEventResponse(events: _eventsList);

      state = AsyncData(
        state.value!.copyWith(userScanEventResponse: AsyncData(_eventsList)),
      );
      return response.data;
    } catch (e, st) {
      state = AsyncError(e, st);
      return null;
    }
  }

  Future<bool> onLoadMoreEvents() async {
    if (_currentPage >= _totalPages) return false;
    final nextPage = _currentPage + 1;
    final result = await getUserScanEvent(showLoading: false, page: nextPage);
    return result?.isNotEmpty ?? false;
  }

  Future<bool> refreshEvents() async {
    _eventsList.clear();
    _currentPage = 1;
    _totalPages = 1;
    await getUserScanEvent(page: 1, showLoading: true);
    return true;
  }
}
