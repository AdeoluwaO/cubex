import 'package:cubex/src/core/utils/app_colors.dart';
import 'package:cubex/src/general_widgets/custom_spacing.dart';
import 'package:cubex/src/general_widgets/custom_text.dart';
import 'package:flutter/material.dart';

showCustomBottomSheet(
    {required BuildContext context,
    String? title,
    required List<Widget> contents}) {
  showModalBottomSheet(
    context: context,
    backgroundColor: AppColors.transparent,
    builder: (context) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacing.bigHeight(),
            if (title != null)
              CustomText(
                text: title,
                style: TextStyle(
                  fontSize: 30,
                  color: AppColors.black,
                ),
              ),
            const Spacing.bigHeight(),
            ...contents,
          ],
        ),
      );
    },
  );
}
