import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cubex/src/core/utils/index.dart';

class CustomTexrField extends StatefulWidget {
  final double? width;
  final double? labelSize;
  final String? hintText;
  final TextEditingController? controller;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final bool? obscureText;
  final bool? enabled;
  final FormFieldValidator<String>? validateFunction;
  final void Function(String)? onSaved, onChange;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode, nextFocusNode;
  final VoidCallback? submitAction;
  final bool? enableErrorMessage;
  final void Function(String)? onFieldSubmitted;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? bordercolor, backgroundColor, labelColor;
  final bool? autofocus;
  final String? label;
  final String? firstLabel;
  final String? lastLabel;
  final List<TextInputFormatter>? inputFormatters;
  final bool isLoading;
  final double borderRadius;

  final String? initialValue;

  const CustomTexrField({
    Key? key,
    this.width,
    this.backgroundColor,
    this.isLoading = false,
    this.hintText,
    this.controller,
    this.minLines = 1,
    this.obscureText = false,
    this.enabled = true,
    this.validateFunction,
    this.onSaved,
    this.onChange,
    this.keyboardType,
    this.textInputAction,
    this.focusNode,
    this.nextFocusNode,
    this.submitAction,
    this.enableErrorMessage = true,
    this.maxLines = 1,
    this.maxLength,
    this.onFieldSubmitted,
    this.suffixIcon,
    this.prefixIcon,
    this.bordercolor,
    this.autofocus,
    this.label,
    this.firstLabel,
    this.lastLabel,
    this.inputFormatters,
    this.borderRadius = 8,
    this.initialValue,
    this.labelSize,
    this.labelColor,
    this.onTap,
  }) : super(key: key);

  @override
  State<CustomTexrField> createState() => _CustomTexrFieldState();
}

class _CustomTexrFieldState extends State<CustomTexrField> {
  String? error;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Text(
            widget.label!,
            style: textTheme.headlineMedium?.copyWith(
              color: widget.labelColor ?? colorScheme.onBackground,
            ),
          ),
        TextFormField(
          maxLength: widget.maxLength,
          initialValue: widget.initialValue,
          textAlign: TextAlign.left,
          autofocus: widget.autofocus ?? false,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          enabled: widget.enabled,
          validator: widget.validateFunction != null
              ? widget.validateFunction!
              : (value) {
                  return null;
                },
          onSaved: (val) {
            error = widget.validateFunction!(val);
            setState(() {});
            widget.onSaved!(val!);
          },
          onChanged: (val) {
            widget.validateFunction != null
                ? error = widget.validateFunction!(val)
                : error = null;
            setState(() {});
            if (widget.onChange != null) widget.onChange!(val);
          },
          onTap: widget.onTap,
          style: const TextStyle(
            fontSize: 15.0,
          ),
          cursorColor: AppColors.gray900,
          key: widget.key,
          maxLines: widget.maxLines,
          controller: widget.controller,
          obscureText: widget.obscureText!,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          focusNode: widget.focusNode,
          onFieldSubmitted: widget.onFieldSubmitted,
          decoration: InputDecoration(
            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.suffixIcon,
            filled: true,
            enabled: false,
            fillColor: widget.backgroundColor ?? AppColors.gray100,
            hintText: widget.hintText,
            // hintStyle: AppTextStyle.bodySmall.copyWith(
            //     fontWeight: FontWeight.w400,
            //     fontSize: 14,
            //     color: AppColors.gray400),
            errorStyle: TextStyle(color: AppColors.red800),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius),
              borderSide: BorderSide(
                color: AppColors.red800,
                width: 1,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius),
              borderSide: BorderSide(
                color: AppColors.red800,
                width: 1,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius),
              borderSide: BorderSide(
                color: AppColors.gray100,
                width: 0.5,
              ),
            ),
            labelStyle: TextStyle(
              color: AppColors.black,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius),
              borderSide: BorderSide(
                color: AppColors.gray100,
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius),
              borderSide: BorderSide(
                color: AppColors.gray100,
                width: 0.5,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius),
              borderSide: BorderSide(
                color: AppColors.gray100,
                width: 1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
