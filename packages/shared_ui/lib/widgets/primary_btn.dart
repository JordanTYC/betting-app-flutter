import 'package:flutter/material.dart';

class PrimaryBtn extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final double? elevation;
  final double? fontSize;

  const PrimaryBtn({
    super.key,
    required this.title,
    required this.onTap,
    this.elevation,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        minimumSize: const Size(0, 30),
        elevation: elevation,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      ),
      onPressed: onTap,
      child: Text(title, style: TextStyle(fontSize: fontSize ?? 14)),
    );
  }
}
