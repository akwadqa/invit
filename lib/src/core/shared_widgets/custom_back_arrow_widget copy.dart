import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/core/utils/functions/helper_methods.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';

class CustomBackArrowWidget extends StatelessWidget {
  final VoidCallback? onTap;
  const CustomBackArrowWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (context.canPop()) {
          context.pop();
        } else {
          context.go(AppRoutes.mainScreen);
        }

        // await safelyPop(context);
        if (onTap != null) onTap?.call();
      },
      child: Container(
          margin: EdgeInsetsDirectional.all(10),
          padding: EdgeInsetsDirectional.all(4),
          decoration: ShapeDecoration(
            color: AppColors.cardWhite,
            shape: CircleBorder(),
            // borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: Icon(
            Icons.arrow_back,
            color: AppColors.primary,
            // size: 18,
          )),
    );
  }
}
