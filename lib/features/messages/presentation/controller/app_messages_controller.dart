
import 'package:invit/features/messages/data/repositories/app_messages_repository.dart';
import 'package:invit/features/messages/domain/model/app_messages_model.dart';
import 'package:invit/features/notifications/data/repositories/app_notifications_repository.dart';
import 'package:invit/features/notifications/domain/model/app_notifications_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_messages_controller.g.dart';


@riverpod
class AppMessagesController extends _$AppMessagesController {
  List<AppMessagesModel> _messages = [];
  int _currentPage = 1;
  int _totalPages = 1;

  @override
  FutureOr<List<AppMessagesModel>> build() async {
    return await fetchOrdersOffersNotifications(page: 1);
  }

  Future<List<AppMessagesModel>> fetchOrdersOffersNotifications(
      {required int page, bool showLoading = true}) async {
    try {
      if (showLoading) state = const AsyncLoading();

      final repo = ref.read(appMessagesRepositoryProvider);
      final response = await repo.getAllmessages(page: page);

      // افترض أن الدالة ترجع كائن يحتوي على:
      // data: List<AppMessagesModel>
      // pagination: {...}
      _currentPage = response.pagination!.currentPage;
      _totalPages = response.pagination!.totalPages;

      if (page == 1) {
        _messages =  List.from(response.data!);
      } else {
        _messages.addAll(response.data!);
      }

      state = AsyncData(_messages);
      return _messages;
    } catch (e, st) {
      state = AsyncError(e, st);
      return [];
    }
  }

  Future<bool> loadNextPage() async {
    if (_currentPage >= _totalPages) return false;
    final nextPage = _currentPage + 1;
    final result = await fetchOrdersOffersNotifications(page: nextPage,showLoading: false);
    return result.isNotEmpty;
  }

  Future<bool> refreshOrders() async {
    _messages.clear();
    _currentPage = 1;
    _totalPages = 1;
    await fetchOrdersOffersNotifications(page: 1);
    return true;
  }


  
}
