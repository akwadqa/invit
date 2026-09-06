import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:invit/features/messages/domain/model/app_messages_model.dart';
import 'package:invit/features/messages/presentation/controller/app_messages_controller.dart';
import 'package:invit/features/messages/presentation/widgets/message_card_widget.dart';
import 'package:invit/features/notifications/domain/model/app_notifications_model.dart';
import 'package:invit/features/notifications/presentation/controller/app_notifications_controller.dart';
import 'package:invit/features/notifications/presentation/widgets/notification_card_widget.dart';
import 'package:invit/src/core/shared_widgets/app_error_widget.dart';
import 'package:invit/src/core/shared_widgets/app_loader.dart';
import 'package:invit/src/core/shared_widgets/app_pagination_widget.dart';
import 'package:invit/src/core/shared_widgets/custom_appbar.dart';
import 'package:invit/src/core/utils/extenssions/time_extension.dart';
import 'package:invit/src/core/utils/extenssions/widget_extensions.dart';

@RoutePage()
class MessagesScreen extends ConsumerWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ordersNotificationsAsync = ref.watch(appMessagesControllerProvider);
    final controller = ref.read(appMessagesControllerProvider.notifier);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 65),
        child: CustomAppbar(
          title: context.tr('messages'),
          withBackButton: false,
        ),
      ),
      body: ordersNotificationsAsync.when(
        data: (notifications) {
          if (notifications.isEmpty) {
            return Center(child: Text('no_messages'.tr()));
          }

          final grouped = <String, List<_NotificationWrapper>>{};

          for (final item in notifications) {
            final createdAt = item.creation;
            final dateKey = DateFormat('dd-MM-yyyy').format(createdAt);
            final formattedTime = item.creation.timeAgo();

            grouped
                .putIfAbsent(dateKey, () => [])
                .add(
                  _NotificationWrapper(
                    notification: item,
                    formattedTime: formattedTime,
                  ),
                );
          }

          final groupedEntries = grouped.entries.toList()
            ..sort((a, b) => b.key.compareTo(a.key));

          return AppPaginationWidget(
            onLoading: (page) async => await controller.loadNextPage(),
            onRefresh: () async => await controller.refreshOrders(),
            enablePullDown: true,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              itemCount: groupedEntries.fold(
                0,
                (count, e) => count! + e.value.length + 1,
              ),
              itemBuilder: (context, index) {
                int runningIndex = 0;

                for (final entry in groupedEntries) {
                  // if (index == runningIndex) {
                  //   return Padding(
                  //     padding: const EdgeInsets.symmetric(vertical: 8),
                  //     child: Center(
                  //       child: Text(
                  //         entry.key ==
                  //                 DateFormat('dd-MM-yyyy')
                  //                     .format(DateTime.now())
                  //             ? 'Today'
                  //             : 'Yesterday',
                  //         style: const TextStyle(
                  //           color: Colors.grey,
                  //           fontSize: 16,
                  //           fontWeight: FontWeight.w600,
                  //         ),
                  //       ).onlyPadding(top: 8),
                  //     ),
                  //   );
                  // }

                  runningIndex++;

                  for (final item in entry.value) {
                    if (index == runningIndex) {
                      final data = item.notification;

                      return MessageCard(
                        message: data.emailContent,
                        time: data.creation.timeAgo(),
                        name: data.subject.toUpperCase(),
                      );
                    }
                    runningIndex++;
                  }
                }

                return const SizedBox.shrink();
              },
            ),
          );
        },
        error: (error, stackTrace) => AppErrorWidget(
          onTap: () => ref
              .read(appMessagesControllerProvider.notifier)
              .fetchOrdersOffersNotifications(page: 1),
        ),
        loading: () => const Center(child: AppLoader()),
      ),
    );
  }
}

class _NotificationWrapper {
  final AppMessagesModel notification;
  final String formattedTime;

  _NotificationWrapper({
    required this.notification,
    required this.formattedTime,
  });
}
