import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class GlobalButton extends StatelessWidget {
  dynamic whenPressed;
  bool outLine;
  bool isLoading;
  double borderRadius;
  Color color;
  Color backgroundColor;
  Text buttonLabel;

  GlobalButton({
    super.key,
    this.isLoading = false,
    this.whenPressed,
    this.outLine = false,
    this.borderRadius = 12,
    required this.color,
    required this.backgroundColor,
    required this.buttonLabel,
  });
  @override
  Widget build(BuildContext context) {
    return outLine
        ? GestureDetector(
            onTap: whenPressed,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  borderRadius,
                ),
                border: Border.all(
                  color: color,
                  width: 3,
                ),
              ),
              child: Center(
                child: buttonLabel,
              ),
            ),
          )
        : ElevatedButton(
            onPressed: whenPressed,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  borderRadius,
                ),
              ),
              child: Center(
                child: buttonLabel,
              ),
            ),
          );
  }
}
