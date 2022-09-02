import 'package:achievement_view/achievement_view.dart';
import 'package:flutter/material.dart';

class UtilService {
  showSuccessToast(
    BuildContext context, {
    double? elevation = 1.25,
    String? title,
    String? desc,
  }) {
    AchievementView(
      context,
      title: title!,
      subTitle: desc!,
      elevation: elevation!,
      color: Colors.teal[400]!.withOpacity(0.75),
      borderRadius: BorderRadius.circular(25),
      iconBackgroundColor: Colors.teal[400]!,
      icon: const Icon(Icons.check_outlined, color: Colors.white),
    ).show();
  }

  showErrorToast(
    BuildContext context, {
    double? elevation = 1.25,
    String? title,
    String? desc,
  }) {
    AchievementView(
      context,
      title: title!,
      subTitle: desc!,
      elevation: elevation!,
      color: Colors.red[400]!.withOpacity(0.75),
      borderRadius: BorderRadius.circular(25),
      iconBackgroundColor: Colors.red[400]!,
      icon: const Icon(Icons.cancel_outlined, color: Colors.white),
    ).show();
  }

  showWarningToast(
    BuildContext context, {
    double? elevation = 1.25,
    String? title,
    String? desc,
  }) {
    AchievementView(
      context,
      title: title!,
      subTitle: desc!,
      elevation: elevation!,
      color: Colors.amber[400]!.withOpacity(0.75),
      borderRadius: BorderRadius.circular(25),
      iconBackgroundColor: Colors.amber[400]!,
      icon: const Icon(Icons.warning_amber, color: Colors.white),
    ).show();
  }
}
