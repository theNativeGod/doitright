import 'package:flutter/material.dart';

class FilledContainerWidget extends StatelessWidget {
  FilledContainerWidget({
    required this.text,
    this.width = 160,
    this.fontSize,
    super.key,
  });
  final String text;
  double width;
  double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: const Color(0xff2491FE),
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: Colors.white),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 12,
      ),
      alignment: Alignment.center,
      child: Text(
        text.toUpperCase(),
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontSize: fontSize ?? 20,
            ),
      ),
    );
  }
}
