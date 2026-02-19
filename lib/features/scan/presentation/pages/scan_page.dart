import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/home/domain/model/events/event_model.dart';
import 'package:invit/features/scan/presentation/controller/scan_controller.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/core/shared_widgets/app_empty_data_widget.dart';
import 'package:invit/src/core/shared_widgets/app_error_widget.dart';
import 'package:invit/src/core/shared_widgets/app_loader.dart';
import 'package:invit/src/core/shared_widgets/app_pagination_widget.dart';
import 'package:invit/src/core/shared_widgets/custom_appbar.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/core/utils/extenssions/widget_extensions.dart';
import 'package:invit/src/infrastructure/api/endpoint/services_urls.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

import '../../../../src/core/utils/functions/helper_methods.dart';
import '../../../featured_events/presentation/widgets/section_title.dart';
import '../../data/model/user_scan_event_response/user_scan_event_response.dart';

class ScanPage extends ConsumerStatefulWidget {
  const ScanPage({super.key});

  @override
  ConsumerState<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends ConsumerState<ScanPage> {
  @override
  void initState() {
    super.initState();

    Future(() {
      ref.read(scanControllerProvider.notifier).getUserScanEvent(page: 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(
      scanControllerProvider.select((val) => val.value!.userScanEventResponse),
    );
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 65),
        child: CustomAppbar(title: context.tr('scan'), withBackButton: false),
      ),
      body: controller?.when(
        data: (data) {
          if (data.isEmpty) {
            return AppEmptyDataWidget(text: "no_events_to_scan_yet".tr());
            // Center(child: Assets.images.emptyData.svg());
          }
          return _buildBody(data);
        },
        error: (e, st) {
          return AppErrorWidget(
            onTap: () {
              ref
                  .read(scanControllerProvider.notifier)
                  .getUserScanEvent(page: 1);
            },
          );
        },
        loading: () {
          return Center(child: AppLoader());
        },
      ),
    );
  }

  Widget _buildBody(List<UserScanEventResponse> events) {
    debugPrint(events.length.toString());
    return AppPaginationWidget(
      enablePullDown: true,
      onRefresh: () =>
          ref.read(scanControllerProvider.notifier).refreshEvents(),
      onLoading: (_) =>
          ref.read(scanControllerProvider.notifier).onLoadMoreEvents(),
      child: Column(
        children: [
          SectionTitle(
            title: "all_events".tr(),
            count: events.length.toString(),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => 20.verticalSpace,
              padding: EdgeInsets.fromLTRB(22, 25, 22, 130),
              itemBuilder: (context, index) =>
                  ScanScreenItem(event: events[index]),
              itemCount: events.length,
            ),
          ),
        ],
      ),
    );
  }
}

class ScanScreenItem extends StatelessWidget {
  const ScanScreenItem({super.key, required this.event});
  final UserScanEventResponse event;

  String? resolveImageUrl() {
    final imagePath = event.imageUrl;
    final baseUrl = ServicesUrls.imageUrl;
    if (imagePath == null || imagePath.isEmpty) return null;
    if (imagePath.startsWith('http')) return imagePath;
    final base = baseUrl.endsWith('/') ? baseUrl : '$baseUrl/';
    final path = imagePath.startsWith('/') ? imagePath.substring(1) : imagePath;
    return '$base$path';
  }

  @override
  Widget build(BuildContext context) {
    final deviceLocale = Localizations.localeOf(context).toString();
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.background,
          // boxShadow: [
          //   BoxShadow(
          //     offset: Offset(4, 4),
          //     blurRadius: 4,
          //     color: AppColors.black.withValues(alpha: .25),
          //   ),
          // ],
        ),
        width: double.infinity,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    child: (event.imageUrl != null && resolveImageUrl() != null)
                        ? CachedNetworkImage(
                            fadeInCurve: Curves.linear,
                            placeholder: (context, url) => AppLoader(),
                            imageUrl: resolveImageUrl()!,
                            height: 129,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          )
                        : SizedBox(
                            width: double.infinity,
                            height: 129,
                            child: Icon(
                              Icons.card_giftcard_sharp,
                              color: AppColors.primary,
                            ),
                          )),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                    decoration: BoxDecoration(
                      color: AppColors.background.withValues(alpha: .8),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      formatDate(event.date),
                      textAlign: TextAlign.center,
                      style: AppTextStyle.rubikMedium10,
                    ),
                  ),
                ),
              ],
            ),
            10.verticalSpace,
            Text(
              event.title ?? '',
              style: AppTextStyle.rubikMedium14.copyWith(
                color: AppColors.primary,
              ),
            ).centered(),
            Spacer(),
            15.verticalSpace,
            Row(
              children: [
                19.horizontalSpace,
                // if (event.role == 'operator')
                //   CustomButtonWidget(
                //     // content: Text(
                //     //   context.tr('operator'),
                //     //   style: AppTextStyle.rubikRegular14.copyWith(
                //     //     color: AppColors.black,
                //     //   ),
                //     // ),
                //     backgroundColor: AppColors.darkRed,
                //     text: 'operator',
                //     radius: 32,
                //     onTap: () {},
                //     isFiled: false,
                //     height: 25,
                //     width: 70,
                //     topPading: 0,
                //   ),
                // if (event.role == 'handler')
                //   CustomButtonWidget(
                //     // : Text(
                //     //   context.tr('authorized'),
                //     //   style: AppTextStyle.rubikRegular14.copyWith(
                //     //     color: AppColors.black,
                //     //   ),
                //     // ),
                //     backgroundColor: AppColors.grayBorder,
                //     text: 'authorized',
                //     radius: 8,
                //     onTap: () {},
                //     isFiled: false,
                //     height: 25,
                //     width: 84,
                //     topPading: 0,
                //   ),
                // Spacer(),

                19.horizontalSpace,
              ],
            ),
            15.verticalSpace,
            CustomButtonWidget(
              text: 'scan',
              onTap: () {
                context.push(AppRoutes.scanQr, extra: event.occasionId);
              },
              // content: Text(
              //   context.tr('scan'),
              //   style: AppTextStyle.rubikMedium14.copyWith(
              //     color: AppColors.white,
              //   ),
              // ),
              isFiled: true,
              height: 44,
              width: 294,
              radius: 12,
              backgroundColor: AppColors.primary,
            ),
            12.verticalSpace,
          ],
        ),
      ),
    );
  }
}
