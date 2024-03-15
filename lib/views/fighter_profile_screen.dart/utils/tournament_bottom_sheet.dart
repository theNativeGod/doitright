import 'package:flutter/material.dart';

import 'export.dart';

class TournamentBottomSheet extends StatelessWidget {
  const TournamentBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 16),
        Text(
          'tournament'.toUpperCase(),
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: const Color(0xff87be31),
              fontWeight: FontWeight.bold,
              shadows: [
                const BoxShadow(
                  color: Colors.white,
                  blurRadius: 4,
                  spreadRadius: 5,
                )
              ]),
        ),
        const SizedBox(
          height: 8,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TournamentCard(),
            TournamentCard(),
            TournamentCard(),
          ],
        ),
      ],
    );
  }
}
