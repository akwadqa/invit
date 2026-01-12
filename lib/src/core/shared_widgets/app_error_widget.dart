import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';

import '../../../gen/assets.gen.dart';

class AppErrorWidget extends StatelessWidget {
 final  String? errorMsg;
  const AppErrorWidget({super.key, this.errorMsg});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.images.errorData.image(),
          30.verticalSpace,
          Text(
            context.tr(errorMsg?? "Unkown error occured"),
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ],
      ),
    );
  }
}
