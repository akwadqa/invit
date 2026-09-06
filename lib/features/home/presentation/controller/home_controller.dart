import 'package:flutter_riverpod/legacy.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/home/data/repositories/home_repository.dart';
import 'package:invit/features/home/domain/model/home/home_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'home_controller.g.dart';

@Riverpod(keepAlive: true)
class HomeController extends _$HomeController {
  @override
  FutureOr<HomeModel?> build() async {
    return await getHomeData(page: 1);
  }

  List<EventModel> _items = [];
  int _currentPage = 1;
  int _totalPages = 1;

  Future<HomeModel?> getHomeData(
      {required int page, bool showLoading = true}) async {
    try {
      if (showLoading) state = const AsyncLoading();

      final repo = ref.read(homeRepositoryProvider);
      final response = await repo.getHomeData(page: page);

      _currentPage = response.pagination!.currentPage;
      _totalPages = response.pagination!.totalPages;

      if (page == 1) {
        _items = List.from(response.data?.events ?? []);
      } else {
        _items = [..._items, ...List.from(response.data?.events ?? [])];
      }
      // final homeModel = response.data!.copyWith(events: _items);
      final homeModel = HomeModel(
          bundles: response.data?.bundles ?? [],
          events: _items,
          consumingBalance: response.data?.consumingBalance ,
          remainingBalance: response.data?.remainingBalance ,
          featuredEvents: response.data?.featuredEvents ?? [],
          occasionTypes: response.data?.occasionTypes ?? []);

      state = AsyncData(homeModel);
      return homeModel;
    } catch (e, st) {
      state = AsyncError(e, st);
      return null;
    }
  }

  Future<bool> loadNextPage() async {
    if (_currentPage >= _totalPages) return false;
    final nextPage = _currentPage + 1;
    final result = await getHomeData(page: nextPage, showLoading: false);
    return result?.events.isNotEmpty ?? false;
  }

  Future<bool> refresh() async {
    _items.clear();
    _currentPage = 1;
    _totalPages = 1;
    await getHomeData(page: 1);
    return true;
  }
}

final bottomNavIndexProvider = StateProvider<int>((ref) => 0);
