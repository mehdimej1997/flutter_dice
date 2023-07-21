import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String data;
  final Color? textColor;
  const StyledText(this.data, {super.key, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        color: textColor ?? Colors.white,
        fontSize: 28,
      ),
    );
  }
}
