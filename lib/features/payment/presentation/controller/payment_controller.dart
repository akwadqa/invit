import 'package:invit/features/payment/data/repository/payment_repository.dart';
import 'package:invit/features/payment/presentation/controller/payment_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'payment_controller.g.dart';
@riverpod
class PaymentController extends _$PaymentController {
  @override
  FutureOr<PaymentState> build() {
    return PaymentState();
  }

   Future<String?> getPaymentUrl(String subscriptionType, String local) async {
    try {
      state = AsyncData(state.value!.copyWith(paymentLink: AsyncLoading()));
      final repo = ref.read(paymentRepositoryProvider);
      final response = await repo.getPaymentUrl(subscriptionType, local);

      if (response.hasFailed) {
        state = AsyncData(
          state.value!.copyWith(
            paymentLink: AsyncError(
              response.message ?? '',
              StackTrace.fromString(response.message ?? ''),
            ),
          ),
        );

        return null;
      }

      state = AsyncData(
        state.value!.copyWith(paymentLink: AsyncData(response.data!)),
      );
      return response.data;
    } catch (e, st) {
      state = AsyncData(state.value!.copyWith(paymentLink: AsyncError(e, st)));
      return null;
    }
  }
}