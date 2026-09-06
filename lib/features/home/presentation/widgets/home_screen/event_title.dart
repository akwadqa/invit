import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:invit/features/event/presentation/controller/create_event/create_event_controller.dart';
import 'package:invit/features/home/domain/model/ocation%20type/ocation_type_model.dart';
import 'package:invit/features/home/presentation/controller/home_controller.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';
import 'package:skeletonizer/skeletonizer.dart';

class EventTitle extends ConsumerWidget {
  final String? title;
  final String? type;
  const EventTitle({super.key, required this.title, required this.type});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = ref
        .watch(homeControllerProvider)
        .value
        ?.occasionTypes
        .firstWhere(
          (element) => element.title == type,
          orElse: () => OcationTypeModel(title: '', color: '0xff000000'),
        )
        .color;

    final formatedColor = color?.replaceAll('#', '0xff');
    return Row(
      children: [
        //? Title :
        Expanded(
          child: Text(
            title ?? 'Guest graduated',
            style: AppTextStyle.rubikMedium16,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        8.horizontalSpace,

        //? Type :
        Skeleton.ignore(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Color(int.parse(formatedColor ?? '0xff000000')),
              // color: AppColors.primary,
            ),
            child: Text(
              type ?? 'graduation'.tr(),
              style: AppTextStyle.rubikMedium14.copyWith(
                color: AppColors.background,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
