import 'package:doitright/constants.dart';
import 'package:doitright/models/pattern_model.dart';
import 'package:flutter/material.dart';

import '../helper.dart';
import '../widgets.dart/export.dart';

class PatternsScreen extends StatefulWidget {
  const PatternsScreen({super.key});

  @override
  State<PatternsScreen> createState() => _PatternsScreenState();
}

class _PatternsScreenState extends State<PatternsScreen> {
  bool page1 = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      body: Container(
        height: height * 1.5,
        width: width * 1.5,
        decoration: const BoxDecoration(
          color: Color(0xffCCEFFC),
          // image: DecorationImage(
          //   image: AssetImage(
          //     'assets/images/background.png',
          //   ),
          //   fit: BoxFit.cover,
          // ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32.0,
                  vertical: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        pop(context);
                      },
                      child: Text(
                        'Home'.toUpperCase(),
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: const Color(0xff2491FE),
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ),
                    Text(
                      'Menu'.toUpperCase(),
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: const Color(0xff2491FE),
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 60,
                left: 16,
                right: 16,
                bottom: 16,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: height * .75,
                    child: ListView.separated(
                        padding: const EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                        ),
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: page1 ? 6 : 5,
                        separatorBuilder: (ctx, i) => const SizedBox(
                              height: 16,
                            ),
                        itemBuilder: (ctx, i) {
                          PatternModel pattern =
                              page1 ? PATTERNS[i] : PATTERNS[i + 6];
                          return Center(
                            child: Container(
                              height: pattern.color == Colors.black
                                  ? height * .1
                                  : height * .085,
                              color: pattern.color,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: (width - 64 - 8 - 64) / 3,
                                    padding: const EdgeInsets.all(8.0),
                                    alignment: Alignment.center,
                                    child: Text(
                                      pattern.group,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontSize: 16,
                                            color: pattern.color ==
                                                        Color(0xff18A225) ||
                                                    pattern.color ==
                                                        Color(0xff184FA2) ||
                                                    pattern.color ==
                                                        Colors.red ||
                                                    pattern.color ==
                                                        Colors.black
                                                ? Colors.white
                                                : Colors.grey.shade600,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: VerticalDivider(
                                          color: Colors.black,
                                        ),
                                      ),
                                      Positioned.fill(
                                        child: Center(
                                          child: Container(
                                            width: 20,
                                            color: pattern.stripeColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: (width - 64 - 8) / 3,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ...pattern.patterns.map((p) {
                                          return Text(
                                            p.toUpperCase(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                  fontSize: 12,
                                                  color: pattern.color ==
                                                              Color(
                                                                  0xff18A225) ||
                                                          pattern.color ==
                                                              Color(
                                                                  0xff184FA2) ||
                                                          pattern.color ==
                                                              Colors.red ||
                                                          pattern.color ==
                                                              Colors.black
                                                      ? Colors.white
                                                      : Colors.grey.shade600,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          );
                                        }).toList(),
                                      ],
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: VerticalDivider(
                                      color: Colors.black,
                                    ),
                                  ),
                                  pattern.is1st == true
                                      ? SizedBox(
                                          width: (width - 64 - 8 - 40) / 3,
                                        )
                                      : SizedBox(
                                          width: (width - 64 - 8 - 40) / 3,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                pattern.startingPosition
                                                    .toUpperCase(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall!
                                                    .copyWith(
                                                      color: pattern.color ==
                                                                  Color(
                                                                      0xff18A225) ||
                                                              pattern.color ==
                                                                  Color(
                                                                      0xff184FA2) ||
                                                              pattern.color ==
                                                                  Colors.red ||
                                                              pattern.color ==
                                                                  Colors.black
                                                          ? Colors.white
                                                          : Colors
                                                              .grey.shade600,
                                                    ),
                                              ),
                                              Text(
                                                'to'.toUpperCase(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall!
                                                    .copyWith(
                                                      color: pattern.color ==
                                                                  Color(
                                                                      0xff18A225) ||
                                                              pattern.color ==
                                                                  Color(
                                                                      0xff184FA2) ||
                                                              pattern.color ==
                                                                  Colors.red ||
                                                              pattern.color ==
                                                                  Colors.black
                                                          ? Colors.white
                                                          : Colors
                                                              .grey.shade600,
                                                    ),
                                              ),
                                              Text(
                                                pattern.endPosition
                                                    .toUpperCase(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall!
                                                    .copyWith(
                                                      color: pattern.color ==
                                                                  Color(
                                                                      0xff18A225) ||
                                                              pattern.color ==
                                                                  Color(
                                                                      0xff184FA2) ||
                                                              pattern.color ==
                                                                  Colors.red ||
                                                              pattern.color ==
                                                                  Colors.black
                                                          ? Colors.white
                                                          : Colors
                                                              .grey.shade600,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              ),
              Positioned(
                top: 36,
                left: 0,
                right: 0,
                child: Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: FilledContainerWidget(text: 'patterns'),
                ),
              ),
              Positioned(
                bottom: 26,
                left: 0,
                right: 0,
                child: Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          page1 = !page1;
                          setState(() {});
                        },
                        child: FilledContainerWidget(
                          text: page1 ? 'next page' : 'previous page',
                          fontSize: 14,
                          width: 160,
                        ),
                      ),
                      SizedBox(
                        height: height * .005,
                      ),
                      SizedBox(
                          height: height * .09,
                          child: Image.asset('assets/images/logo.png')),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
