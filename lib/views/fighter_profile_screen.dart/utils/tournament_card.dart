import 'package:flutter/material.dart';

class TournamentCard extends StatelessWidget {
  const TournamentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    return Container(
      height: 170,
      width: (width - 32 - 16 - 16 - 8) / 3,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xff87be31),
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          color: Colors.red,
          // height: 80,
          width: double.infinity,
          child: Image.asset(
            'assets/images/tournament.png',
            fit: BoxFit.cover,
          ),
        ),
        Text(
          textAlign: TextAlign.center,
          '20th June, 2024',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ]),
    );
  }
}
