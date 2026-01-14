
import 'package:invit/features/featured_events/data/repositories/featured_events_repository.dart';
import 'package:invit/features/featured_events/domain/model/all_events_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'featured_event_controller.g.dart';


@riverpod
class FeaturedEventController extends _$FeaturedEventController {
  List<AllEventsModel> _events = [];
  int _currentPage = 1;
  int _totalPages = 1;

  @override
  FutureOr<List<AllEventsModel>> build() async {
    return await fetchAllEvents(page: 1);
  }

  Future<List<AllEventsModel>> fetchAllEvents(
      {required int page, bool showLoading = true}) async {
    try {
      if (showLoading) state = const AsyncLoading();

      final repo = ref.read(featuredEventsRepositoryProvider);
      final response = await repo.getAllEvents(page: page);

      // افترض أن الدالة ترجع كائن يحتوي على:
      // data: List<AllEventsModel>
      // pagination: {...}
      _currentPage = response.pagination!.currentPage;
      _totalPages = response.pagination!.totalPages;

      if (page == 1) {
        _events =  List.from(response.data!);
      } else {
        _events.addAll(response.data!);
      }

      state = AsyncData(_events);
      return _events;
    } catch (e, st) {
      state = AsyncError(e, st);
      return [];
    }
  }

  Future<bool> loadNextPage() async {
    if (_currentPage >= _totalPages) return false;
    final nextPage = _currentPage + 1;
    final result = await fetchAllEvents(page: nextPage,showLoading: false);
    return result.isNotEmpty;
  }

  Future<bool> refreshOrders() async {
    _events.clear();
    _currentPage = 1;
    _totalPages = 1;
    await fetchAllEvents(page: 1);
    return true;
  }


  
}
