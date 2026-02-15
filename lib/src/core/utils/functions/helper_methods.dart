import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

Future<T> retryOperation<T>(Future<T> Function() operation,
    {int maxAttempts = 3}) async {
  int attempts = 0;
  while (attempts < maxAttempts) {
    try {
      return await operation();
    } catch (e) {
      attempts++;
      print('Operation failed (attempt $attempts): $e');
      if (attempts >= maxAttempts) rethrow;
      // Exponential backoff
      await Future.delayed(
          Duration(milliseconds: pow(2, attempts).toInt() * 500));
    }
  }
  throw Exception('Failed after $maxAttempts attempts');
}
bool isRTL(String text) {
  final rtlRegex = RegExp(r'^[\u0600-\u06FF]');
  return rtlRegex.hasMatch(text.trim());
}



Future<void> safelyPop(BuildContext context) async {
  FocusScope.of(context).unfocus();
  await Future.delayed(const Duration(milliseconds: 100));
  if (context.mounted) context.maybePop();
}


String formatDate(String? date) {
    if (date == null || date.isEmpty) return '';

    final parsed = DateTime.tryParse(date);
    if (parsed == null) return '';

    return '${parsed.day}\n${_month(parsed.month)}';
  }

  String _month(int m) {
    const months = [
      'JAN',
      'FEB',
      'MAR',
      'APR',
      'MAY',
      'JUN',
      'JUL',
      'AUG',
      'SEP',
      'OCT',
      'NOV',
      'DEC'
    ];
    return months[m - 1];
  }
