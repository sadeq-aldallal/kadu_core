import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GlobalButton extends StatelessWidget {
  dynamic whenPressed;
  String label;
  bool outLine;
  bool isLoading;
  double borderRadius;
  Color color;
  Color backgroundColor;

  GlobalButton({
    super.key,
    required this.label,
    this.isLoading = false,
    this.whenPressed,
    this.outLine = false,
    this.borderRadius = 12,
    required this.color,
    required this.backgroundColor,
  });
  @override
  Widget build(BuildContext context) {
    return outLine
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: GestureDetector(
              onTap: whenPressed,
              child: Container(
                height: 55,
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
                  child: Text(
                    label,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: color,
                    ),
                  ),
                ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: ElevatedButton(
              onPressed: whenPressed,
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    borderRadius,
                  ),
                ),
                child: Center(
                  child: Text(
                    label,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: color,
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
