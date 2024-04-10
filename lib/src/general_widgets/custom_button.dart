import 'package:cubex/src/core/utils/app_colors.dart';
import 'package:cubex/src/general_widgets/index.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    super.key,
    this.onTap,
    this.isborderButton = false,
    required this.title,
  });
  final Function()? onTap;
  final String title;
  final bool isborderButton;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  Animation<Color?>? _colorAnim;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    )
      ..forward()
      ..repeat();
    _colorAnim = TweenSequence([
      TweenSequenceItem(
        weight: 1.0,
        tween: ColorTween(begin: AppColors.yellow, end: AppColors.pink),
      ),
      TweenSequenceItem(
        weight: 1.0,
        tween: ColorTween(begin: AppColors.blue, end: AppColors.pink),
      ),
      // TweenSequenceItem(
      //   weight: 1.0,
      //   tween: ColorTween(begin: Colors.green, end: Colors.yellow),
      // ),
      // TweenSequenceItem(
      //   weight: 1.0,
      //   tween: ColorTween(begin: Colors.yellow, end: Colors.red),
      // ),
    ]).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Container(
              width: size.width * 0.8,
              height: size.height * .08,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: !widget.isborderButton ? Colors.blue : null,
                border: Border.all(
                  color: widget.isborderButton
                      ? _colorAnim!.value!
                      : AppColors.transparent,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: CustomText(
                text: widget.title,
                style: TextStyle(
                  color:
                      widget.isborderButton ? AppColors.blue : AppColors.white,
                ),
              ),
            );
          }),
    );
  }
}
