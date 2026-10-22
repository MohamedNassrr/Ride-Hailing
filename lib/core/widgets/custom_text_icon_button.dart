import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextIconButton extends StatelessWidget {
  const CustomTextIconButton({
    super.key,
    required this.text,
    this.onPressed,
    this.icon = Icons.arrow_forward,
    this.backgroundColor,
    this.foregroundColor = Colors.white,
    this.textStyle,
    this.padding,
    this.borderRadius,
    this.elevation = 0,
    this.iconSize,
    this.spacing,
    this.isLeadingIcon = false,
  });

  final String text;
  final VoidCallback? onPressed;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  final double? borderRadius;
  final double elevation;
  final double? iconSize;
  final double? spacing;
  final bool isLeadingIcon;

  @override
  Widget build(BuildContext context) {
    final effectiveBackgroundColor =
        backgroundColor ?? Theme.of(context).primaryColor;
    final effectiveForegroundColor = foregroundColor ?? Colors.white;

    final textWidget = Text(
      text,
      style: textStyle ??
          TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: effectiveForegroundColor,
          ),
    );

    final iconWidget = icon != null
        ? Icon(
            icon,
            size: iconSize ?? 16.sp,
            color: effectiveForegroundColor,
          )
        : null;

    final gap = SizedBox(width: spacing ?? 8.w);

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: effectiveBackgroundColor,
        foregroundColor: effectiveForegroundColor,
        padding: padding ??
            EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 24.r),
        ),
        elevation: elevation,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (iconWidget != null && isLeadingIcon) ...[
            iconWidget,
            gap,
          ],
          textWidget,
          if (iconWidget != null && !isLeadingIcon) ...[
            gap,
            iconWidget,
          ],
        ],
      ),
    );
  }
}
