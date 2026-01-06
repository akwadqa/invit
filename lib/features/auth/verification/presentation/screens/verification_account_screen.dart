import 'package:flutter/material.dart';
import 'package:invit/features/auth/verification/presentation/widgets/verification_screen_confirmation_buttons.dart';
import 'package:invit/features/auth/verification/presentation/widgets/verification_screen_heading.dart';
import 'package:invit/features/auth/verification/presentation/widgets/verification_screen_pin.dart';
import 'package:invit/features/auth/verification/presentation/widgets/verification_screen_timer.dart';
import 'package:invit/features/auth/widgets/auth_build_content.dart';

class VerificationAccountScreen extends StatelessWidget {
  const VerificationAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AuthScreen(
      withBackButton: true,
      child: _VerificationScreenContent(),
    ));
  }
}

class _VerificationScreenContent extends StatefulWidget {
  const _VerificationScreenContent();

  @override
  State<_VerificationScreenContent> createState() =>
      _VerificationScreenContentState();
}

class _VerificationScreenContentState
    extends State<_VerificationScreenContent> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 24,
      children: [
        VerificationScreenHeading(),
        VerificationScreenPin(
          controller: controller,
        ),
        VerificationScreenTimer(),
        VerificationScreenConfirmationButtons()
      ],
    );
  }
}
