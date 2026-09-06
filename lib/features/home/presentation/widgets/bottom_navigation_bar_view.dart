import 'dart:ui' as ui;

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

import '../controller/home_controller.dart';

class BottomNavigationBarView extends ConsumerWidget {
  const BottomNavigationBarView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(bottomNavIndexProvider);

    final iconList = [
      Assets.icons.homeIc.svg(),
      Assets.icons.scanIc.svg(),
      Assets.icons.notificationIc.svg(),
      Assets.icons.settingsIc.svg(),
    ];

    final labelList = [
      context.tr('home'),
      context.tr('scan'),
      context.tr('notifications'),
      context.tr('settings'),
    ];

    return Directionality(
      textDirection: ui.TextDirection.ltr,
      // 1. أزلنا الـ SizedBox الخارجي تماماً
      child: AnimatedBottomNavigationBar.builder(
        // 2. استخدمنا ارتفاعاً ثابتاً ومثالياً (65 إلى 70 ممتاز جداً لنسبة وتناسب الـ FAB)
        height: 68,
        // 3. هذا السطر يحمي النص من لمس الخط السفلي للآيفون (Safe Area)
        safeAreaValues: const SafeAreaValues(bottom: true),
        itemCount: iconList.length,
        tabBuilder: (int i, bool isActive) {
          final color = isActive ? AppColors.primary : AppColors.black;

          return Padding(
            // 4. إعطاء مساحة تنفس صغيرة من الأعلى والأسفل
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: Column(
              mainAxisSize: MainAxisSize.min, // لاحتواء العناصر بحجمها الطبيعي
              children: [
                // --- المؤشر العلوي ---
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: selectedIndex == i
                        ? AppColors.primary
                        : Colors.transparent,
                  ),
                  width: 27,
                  height: 4, // من الأفضل ترك الارتفاعات الصغيرة ثابتة بدون .h
                ),

                // --- الأيقونة (مغلفة بـ Expanded) ---
                // الـ Expanded سيجبر الأيقونة على التوسط في المساحة المتبقية
                // بدون أن تضغط على النص أو المؤشر وبدون Overflow
                Expanded(
                  child: Center(
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
                      child: iconList[i],
                    ),
                  ),
                ),

                // --- النص ---
                Text(
                  labelList[i],
                  style: TextStyle(
                    fontSize: 11,
                    color: color,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 1, // لمنع أي Overflow في حال كان النص طويلاً
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          );
        },
        gapLocation: GapLocation.center,
        splashSpeedInMilliseconds: 1,
        notchSmoothness: NotchSmoothness.smoothEdge,
        activeIndex: selectedIndex,
        onTap: (i) => ref.read(bottomNavIndexProvider.notifier).state = i,
        backgroundColor: Colors.white,
        shadow: Shadow(
          blurRadius: 24,
          offset: const Offset(0, -5),
          color: Colors.black.withOpacity(.12),
        ),
      ),
    );
  }
}
