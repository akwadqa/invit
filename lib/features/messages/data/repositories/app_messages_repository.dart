
import 'package:invit/features/messages/data/datasources/messages_datasource.dart';
import 'package:invit/features/messages/domain/model/app_messages_model.dart';
import 'package:invit/features/notifications/domain/model/app_notifications_model.dart';
import 'package:invit/src/infrastructure/api/response/api_response.dart';
import 'package:invit/src/infrastructure/network/exception/dio_exceptions.dart';
import 'package:invit/src/infrastructure/network/services/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_messages_repository.g.dart';

@Riverpod(keepAlive: true)
AppMessagesRepository appMessagesRepository(Ref ref) {
  final networkService = ref.watch(networkServiceProvider());
  return AppMessagesRepository(MessagesDatasource(networkService));
}

class AppMessagesRepository {
  final MessagesDatasource _remoteDataSource;

  AppMessagesRepository(this._remoteDataSource);

  Future<ApiResponse<List<AppMessagesModel>>> getAllmessages(
      {required int page,String? search,}) async {
    try {
      final result = await _remoteDataSource.getAllmessages(page,search);
      if (result.hasFailed) {
        throw AppException(
          result.message ?? 'Failed to fetch getAllmessages',
        );
      }
      // if (result.status == 200) {
      return result;
      // }
    } catch (e) {
      throw AppException('Failed to Get getAllmessages: $e');
    }
  }

  // }
}
