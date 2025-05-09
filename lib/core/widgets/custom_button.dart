import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backGroundColor,
      required this.textColor,
      required this.text,
      this.borderRadius,
      this.onPressed});

  final Color backGroundColor;
  final Color textColor;
  final String text;
  final BorderRadius? borderRadius;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: backGroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12),
            )),
        child: Text(
          text,
          style: Styles.textStyle18
              .copyWith(color: textColor, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
