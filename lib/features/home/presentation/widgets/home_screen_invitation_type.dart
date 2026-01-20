import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/home/domain/model/ocation%20type/ocation_type_model.dart';
import 'package:invit/features/invitation_type/presentation/screens/invitation_types_screen.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/core/shared_widgets/app_cached_network_image.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/core/utils/extenssions/widget_extensions.dart';
import 'package:invit/src/infrastructure/api/endpoint/services_urls.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class HomeScreenInvitationType extends StatelessWidget {
  final List<OcationTypeModel>? ocationTypeModel;
  const HomeScreenInvitationType({super.key, this.ocationTypeModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('invitation_type'.tr(),
                style: AppTextStyle.rubikSemiBold18
                    .copyWith(color: AppColors.primary)),
            GestureDetector(
              onTap: () =>
                  context.push(AppRoutes.invitationsSecreen, extra: false),

              //  Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) => InvitationTypesScreen(),
              // )),
              child: Text('view_all'.tr(),
                  style: AppTextStyle.rubikMedium16
                      .copyWith(color: AppColors.secondPrimary)),
            ),
          ],
        ).symmetricPadding(horizontal: 20),
        SizedBox(
          height: 124,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsetsDirectional.only(start: 8),
              itemBuilder: (context, index) {
                final ocation = ocationTypeModel?[index];
                return GestureDetector(
                    onTap: () => context.push(AppRoutes.allEventsSecreen,
                        extra: ocation?.title),
                    child: _circleCategory(ocation));
              },
              separatorBuilder: (context, index) => 18.horizontalSpace,
              itemCount: ocationTypeModel?.length ?? 5),
        )
      ],
    );
  }

  Widget _circleCategory(OcationTypeModel? ocation) {
    return Column(
      spacing: 12,
      children: [
        ClipOval(
          child: Container(
              width: 92,
              height: 92,
              color: AppColors
                  .grayBorder, // decoration: BoxDecoration(boxShadow: [
              //   BoxShadow(
              //     color: AppColors.black.withValues(alpha: .25),
              //     blurRadius: 4,
              //   )
              // ]),
              child: ocation?.image != null
                  ? AppCachedNetworkImage(
                      imageUrl: ServicesUrls.imageUrl + (ocation?.image ?? ""))
                  : Container()),
        ),
        Text(
          ocation?.title ?? 'Wedding',
          style: AppTextStyle.rubikMedium14,
        )
      ],
    );
  }
}
