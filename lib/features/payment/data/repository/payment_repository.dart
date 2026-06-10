import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:invit/features/payment/data/data%20source/payment_remote_data_source.dart';
import 'package:invit/src/infrastructure/api/response/api_response.dart';
import 'package:invit/src/infrastructure/network/exception/dio_exceptions.dart';
import 'package:invit/src/infrastructure/network/services/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'payment_repository.g.dart';

@Riverpod(keepAlive: true)
PaymentRepository paymentRepository(Ref ref) {
  final networkService = ref.watch(networkServiceProvider());
  return PaymentRepository(PaymentRemoteDataSource(networkService));
}

class PaymentRepository {
  final PaymentRemoteDataSource _remoteDataSource;

  PaymentRepository(this._remoteDataSource);

  Future<ApiResponse<String>> getPaymentUrl(
    String subscriptionType,
    String local,
  ) async {
    final response =
        await _remoteDataSource.getPaymentLink(subscriptionType, local);

    if (response.status == 200) {
      return response;
    }

    throw AppException(response.message);
  }
}
