import 'package:flutter/material.dart';
import 'package:cubex/src/core/utils/index.dart';
import 'package:cubex/src/general_widgets/index.dart';

showCustomAlertDialogue({
  required BuildContext context,
  required String title,
  required String subtitle,
  bool? dismissible,
  Function()? onTapYes,
  Function()? onTapNo,
}) {
  showDialog(
    barrierDismissible: dismissible ?? false,
    context: context,
    builder: (context) {
      return Dialog(
        backgroundColor: AppColors.transparent,
        child: Container(
          height: 200,
          padding: const EdgeInsets.all(16),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: AppColors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Spacing.largeHeight(),
              CustomText(
                text: title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const Spacing.bigHeight(),
              CustomText(
                text: subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.black),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: onTapNo ??
                          () {
                            Navigator.pop(context);
                          },
                      child: const Text('No')),
                  TextButton(onPressed: onTapYes, child: const Text('Yes')),
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}

showCustomDialogue({
  required BuildContext context,
  required String title,
  required String subtitle,
  IconData? iconName,
  Function()? onTap,
  bool? dismissible,
}) {
  showDialog(
    barrierDismissible: dismissible ?? false,
    context: context,
    builder: (context) {
      return Dialog(
        backgroundColor: AppColors.transparent,
        child: Container(
          height: 200,
          // width: 100,
          padding: const EdgeInsets.all(16),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: AppColors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacing.largeHeight(),
              CustomText(
                text: title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const Spacing.bigHeight(),
              CustomText(
                text: subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.black),
              ),
              const Spacer(),
              CustomIcon(
                iconName: iconName!,
                onTap: onTap,
                color: AppColors.black,
              ),
            ],
          ),
        ),
      );
    },
  );
}
