import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

import '../../../gen/assets.gen.dart';

class AppEmptyDataWidget extends StatelessWidget {
  final String text;
  const AppEmptyDataWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20,
        children: [
          SvgPicture.asset(Assets.images.emptyData.keyName,height: 200,),
          20.verticalSpace,
          Text(
            context.tr(text),
            style: AppTextStyle.rubikMedium20,
          ),
          80.verticalSpace,

        ],
      ),
    );
  }
}
