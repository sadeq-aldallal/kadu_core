import 'package:flutter/material.dart';

class GlobalListTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Widget? leading;
  final TextStyle? textStile;

  const GlobalListTile({
    super.key,
    required this.title,
    required this.onTap,
    this.leading,
    this.textStile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 0.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black.withOpacity(0.2),
            width: 1.0,
          ),
        ),
      ),
      child: ListTile(
        leading: leading,
        title: Text(title, style: textStile),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}
