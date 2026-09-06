import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/event/domain/model/template%20model/template_model.dart';
import 'package:invit/features/event/presentation/controller/create_event/create_event_controller.dart';
import 'package:invit/features/event/presentation/screens/create_event/templates_screen.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/core/utils/extenssions/widget_extensions.dart';
import 'package:invit/src/infrastructure/api/endpoint/services_urls.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class TemplateItem extends ConsumerWidget {
  const TemplateItem({super.key, required this.template});

  final TemplateModel template;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: () {
          ref
              .read(createEventControllerProvider.notifier)
              .updateEvent(EventModel(inviteTemplate: template.name));
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => TemplateQrBottomSheet(template: template),
          );
        },
        child: SizedBox(
          width: 307,
          child: Stack(
            alignment: Alignment.center,
            children: [
              //? Background Image + the shadows :
              Positioned(
                child: Container(
                  width: 286,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.borderGrey, width: .5),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 4,
                        spreadRadius: 0,
                        color: AppColors.black.withOpacity(0.20),
                      ),
                    ],
                  ),
                  child: Assets.images.templateBackgroundImage.image(
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              //? Template name :
              Positioned(
                bottom: MediaQuery.of(context).size.height * .012,
                left: 0,
                right: 0,
                child: Text(
                  template.name ?? '',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.rubikMedium14,
                ),
              ),

              //? Template content :
              Positioned(
                width: 286,
                top: 0,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 19, vertical: 16),
                  decoration: BoxDecoration(
                    color: AppColors.white,

                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: [
                      //? The image :
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.fromLTRB(16, 16, 16, 5),
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.gray02,
                        ),
                        child: template.image == null || template.image!.isEmpty
                            ? const Icon(Icons.image, size: 22)
                            : ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      ServicesUrls.imageUrl + template.image!,
                                  width: double.infinity,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                      ),

                      Column(
                        spacing: 10,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'عزيزتي هديل',
                            style: AppTextStyle.rubikMedium14,
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            template.message ?? '',
                            style: AppTextStyle.rubikRegular12,
                            textAlign: TextAlign.start,
                          ),
                          // Text.rich(
                          //   TextSpan(
                          //     children: [
                          //       TextSpan(
                          //         text: "أنتِ مدعوة لحضور حفل زفاف :",
                          //         style: AppTextStyle.rubikRegular12,
                          //       ),
                          //       TextSpan(
                          //         text: " روان",
                          //         style: AppTextStyle.rubikMedium14,
                          //       ),
                          //     ],
                          //   ),
                          // ),

                          //? Location :
                          Row(
                            spacing: 4,
                            children: [
                              Assets.icons.templateLocationIc.svg(),
                              Text(
                                'فندق الريتز كارلتون -قاعة المختصر',
                                style: AppTextStyle.rubikRegular12,
                              ),
                            ],
                          ),

                          //? Date :
                          Row(
                            spacing: 4,
                            children: [
                              Assets.icons.templateDateIc.svg(),
                              Text(
                                '25-10-2025',
                                style: AppTextStyle.rubikRegular12,
                              ),
                            ],
                          ),

                          //? Time :
                          Row(
                            spacing: 4,
                            children: [
                              Assets.icons.templateTimeIc.svg(),
                              Text(
                                '70:30 مساءً',
                                style: AppTextStyle.rubikRegular12,
                              ),
                            ],
                          ),
                        ],
                      ).onlyPadding(start: 25),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '10:30 PM',
                            style: AppTextStyle.rubikRegular10.copyWith(
                              color: AppColors.gray02,
                            ),
                          ),
                          Text(
                            'invite',
                            style: AppTextStyle.rubikRegular10.copyWith(
                              color: AppColors.gray02,
                            ),
                          ),
                        ],
                      ).symmetricPadding(horizontal: 8),

                      Divider(color: AppColors.grayBorder, height: 0),
                      //? Buttons :
                      ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Row(
                          spacing: 8,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              template.buttons?[index].buttonLabel ?? 'Button',
                              style: AppTextStyle.rubikMedium16.copyWith(
                                color: AppColors.cyan,
                              ),
                            ),
                            Assets.icons.templateConfirmArrowIc.svg(),
                          ],
                        ),
                        separatorBuilder: (context, index) =>
                            Divider(color: AppColors.grayBorder, height: 20),
                        itemCount: template.buttons?.length ?? 0,
                      ),
                      SizedBox(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
