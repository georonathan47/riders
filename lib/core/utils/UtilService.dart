import 'package:achievement_view/achievement_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class UtilService {
  showSuccessToast(
    BuildContext context, {
    double? elevation = 1.25,
    String? title,
    String? desc,
  }) {
    AchievementView(
      title: title ?? 'Success',
      subTitle: desc!,
      elevation: elevation!,
      color: Colors.teal[400]!.withOpacity(0.75),
      borderRadius: BorderRadius.circular(25),
      iconBackgroundColor: Colors.teal[400]!,
      icon: const Icon(Icons.check_outlined, color: Colors.white),
    ).show(context);
  }

  showErrorToast(
    BuildContext context, {
    double? elevation = 1.25,
    String? title,
    String? desc,
  }) {
    AchievementView(
      title: title!,
      subTitle: desc!,
      elevation: elevation!,
      color: Colors.red[400]!.withOpacity(0.75),
      borderRadius: BorderRadius.circular(25),
      iconBackgroundColor: Colors.red[400]!,
      icon: const Icon(Icons.cancel_outlined, color: Colors.white),
    ).show(context);
  }

  showWarningToast(
    BuildContext context, {
    double? elevation = 1.25,
    String? title,
    String? desc,
  }) {
    AchievementView(
      title: title!,
      subTitle: desc!,
      elevation: elevation!,
      color: Colors.amber[400]!.withOpacity(0.75),
      borderRadius: BorderRadius.circular(25),
      iconBackgroundColor: Colors.amber[400]!,
      icon: const Icon(Icons.warning_amber, color: Colors.white),
    ).show(context);
  }

  newOrderToast(
    BuildContext context, {
    double? elevation = 1.25,
    String? title,
    String? desc,
  }) {
    AchievementView(
      title: title!,
      subTitle: desc!,
      elevation: elevation!,
      color: Colors.white60,
      borderRadius: BorderRadius.circular(25),
      iconBackgroundColor: secondColor,
      // icon: const Icon(Icons.warning_amber, color: Colors.white),
      icon: Text(
        '😊',
        style: GoogleFonts.lato(fontSize: 20),
      ),
    ).show(context);
  }
}
