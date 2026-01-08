import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:invit/src/core/utils/extenssions/widget_extensions.dart';

import '../../resourses/color_manager/app_colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final Color? color;
  final VoidCallback onTap;
  final bool isFiled;
  final double height;
  final TextStyle? style;
  final double width;
  final double? radius;
  final double? topPading;
  final double? fontSize;
  const CustomButtonWidget({
    super.key,
    required this.text,
    this.backgroundColor,
    this.color,
    required this.onTap,
    required this.isFiled,
    required this.height,
    required this.width,
    this.radius,
    this.style,
    this.fontSize,
    this.topPading,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: backgroundColor ?? Colors.transparent,
          foregroundColor: AppColors.black900,
          fixedSize: Size(
            width,
            height,
          ),
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: color ?? backgroundColor ?? Colors.transparent),
              borderRadius: BorderRadius.circular(radius ?? 25))),
      onPressed: () {
        onTap();
      },
      child: Text(context.tr(text),
              style: style ??
                  Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: fontSize ?? 16,
                      color: isFiled ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w500))
          .centered(),
    ).onlyPadding(top: topPading ?? 0);
  }
}
