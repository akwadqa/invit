import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class VerificationScreenTimer extends ConsumerStatefulWidget {
  const VerificationScreenTimer({super.key});

  @override
  ConsumerState<VerificationScreenTimer> createState() =>
      _VerificationScreenTimerState();
}

class _VerificationScreenTimerState
    extends ConsumerState<VerificationScreenTimer> {
  late int _remainingSeconds;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
    _remainingSeconds = 120;
    // _remainingSeconds = ref.read(
    //   sendOtpControllerProvider.select((val) {
    //     return val.asData!.value!.allow_login_after!;
    //   }),
    // );
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingSeconds > 0) {
        setState(() {
          _remainingSeconds--;
        });
      } else {
        timer.cancel();
        // ref
        //     .read(authUiControllerProvider.notifier)
        //     .makeResendButtonVisibleOrNo(true);
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String get timerText {
    final minutes = (_remainingSeconds ~/ 60).toString().padLeft(2, '0');
    final seconds = (_remainingSeconds % 60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

  @override
  Widget build(BuildContext context) {
    // ref.listen(sendOtpControllerProvider, (pre, next) {
    //   if (next is AsyncData) {
    //     _timer?.cancel();
    //     ref
    //         .read(authUiControllerProvider.notifier)
    //         .makeResendButtonVisibleOrNo(false);
    //     startTimer();
    //     _remainingSeconds = ref.read(
    //       sendOtpControllerProvider.select((val) {
    //         return val.asData!.value!.allow_login_after!;
    //       }),
    //     );
    //   }
    // });
    // ref
    //     .read(authUiControllerProvider.notifier)
    //     .makeResendButtonVisibleOrNo(false);
    return Text.rich(
      style: AppTextStyle.rubikRegular14.copyWith(color: AppColors.primary),
      TextSpan(
        children: [
          TextSpan(text: context.tr('verificationExpired')),
          TextSpan(text: '$timerText '),
          TextSpan(text: context.tr('seconds')),
        ],
      ),
    );
  }
}
