import 'package:flutter/material.dart';

class ClickableEffectWidget extends StatelessWidget {
  const ClickableEffectWidget({
    super.key,
    required this.child,
    required this.onTap,
    required this.borderRadius,
    this.color = Colors.transparent,
    this.shadows,
  });

  final Widget child;
  final VoidCallback onTap;
  final double borderRadius;
  final Color color;
  final List<BoxShadow>? shadows;

  @override
  Widget build(BuildContext context) {
    Widget current = Material(
      type: color == Colors.transparent
          ? MaterialType.transparency
          : MaterialType.canvas,
      color: color,
      borderRadius: BorderRadius.circular(borderRadius),
      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius),
        onTap: onTap,
        child: child,
      ),
    );

    if (shadows != null) {
      current = DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: shadows,
        ),
        child: current,
      );
    }

    return current;
  }
}
