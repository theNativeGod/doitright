import 'package:flutter/material.dart';

class ProfileDetailsTile extends StatelessWidget {
  const ProfileDetailsTile({
    required this.leftText,
    required this.rightText,
    required this.color,
    super.key,
  });

  final String leftText;
  final String rightText;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 8,
            ),
            color: color,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  leftText.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  width: 1,
                  height: 24,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  rightText.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )),
        const SizedBox(height: 8)
      ],
    );
  }
}
