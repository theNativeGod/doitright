import 'package:doitright/constants.dart';
import 'package:doitright/view_models/profile_provider.dart';
import 'package:doitright/views/fighter_profile_screen.dart/utils/gradings_bottom_sheet.dart';
import 'package:doitright/views/fighter_profile_screen.dart/utils/social_bottomsheet.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../helper.dart';
import 'utils/export.dart';

class FighterProfileScreen extends StatelessWidget {
  const FighterProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    final safePadding = WidgetsBinding.instance.window.padding.bottom;
    final appBarHeight = AppBar().preferredSize.height;
    final profileProvider = Provider.of<ProfileProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: InkWell(
          onTap: () {
            pop(context);
          },
          child: const Icon(
            Icons.home,
            size: 30,
            color: Color(0xff55B0FC),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.menu,
              size: 30,
              color: Color(0xff55B0FC),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: height - safePadding - appBarHeight,
              width: width - 32,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(.3),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
                bottom: 0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        height: width * .3,
                        width: width * .3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: const LinearGradient(
                            colors: [
                              Colors.white,
                              Color(0xff55B0FC),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Image.asset(
                              'assets/images/avatar.png',
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              top: -10,
                              right: -10,
                              child: Container(
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    gradient: const LinearGradient(colors: [
                                      Color(0xffF2AB27),
                                      Color(0xffFD5607),
                                    ])),
                              ),
                            ),
                            Positioned(
                              top: 5,
                              left: -10,
                              child: Container(
                                height: 20,
                                width: 40,
                                child: Image.asset(
                                  'assets/images/flag.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              left: -width,
                              right: -width,
                              bottom: -32,
                              child: Container(
                                width: width,
                                height: 28,
                                color: Colors.yellow,
                                alignment: Alignment.centerRight,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 32,
                                ),
                              ),
                            ),
                            Positioned(
                              top: width * .3 - 10,
                              child: Container(
                                width: width * .3 - 10,
                                child: Image.asset('assets/images/ribbon.png'),
                              ),
                            ),
                            Positioned(
                              bottom: -26,
                              left: width * .65,
                              child: Container(
                                child: Text(
                                  'Black Belt'.toUpperCase(),
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        width: width * .6 - 16,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name Surname'.toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text.rich(
                              TextSpan(
                                  text: 'Bio: '.toUpperCase(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        fontWeight: FontWeight.w500,
                                      ),
                                  children: [
                                    TextSpan(
                                      text:
                                          'Earum nihil sunt enim adipisci nesciunt. Similique repellat voluptas officiis vitae. Sit aliquam  quibusdam possimus et',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontWeight: FontWeight.w400,
                                          ),
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // Bottom Sheet
                  Container(
                    // height: height - appBarHeight - (width * .4) - 51,
                    constraints: BoxConstraints(
                        maxHeight: height - appBarHeight - (width * .4) - 45,
                        minHeight: height - appBarHeight - (width * .4) - 60),
                    child: getBottomSheet(profileProvider.bottomSheetIndex),
                    //   child: Column(children: [
                    //     SizedBox(
                    //       height: 60,
                    //     ),
                    //     Text(
                    //       'tournament'.toUpperCase(),
                    //       style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    //           color: const Color(0xff87be31),
                    //           fontWeight: FontWeight.bold,
                    //           shadows: [
                    //             const BoxShadow(
                    //               color: Colors.white,
                    //               blurRadius: 4,
                    //               spreadRadius: 5,
                    //             )
                    //           ]),
                    //     ),
                    //     const SizedBox(
                    //       height: 8,
                    //     ),
                    //   ]),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                const SizedBox(height: 60),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: Colors.white,
                    width: double.infinity,
                    height: 40,
                    // child: Image.asset(
                    //   'assets/images/bottom_wave.png',
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                ),
                Positioned(
                  top: -10,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset('assets/images/logo_circle.png',
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                profileProvider.bottomSheetIndex == 0
                    ? const SizedBox(
                        height: 0,
                        width: 0,
                      )
                    : Positioned(
                        bottom: 20,
                        left: width / 2 - width * .3,
                        child: InkWell(
                          onTap: () {
                            profileProvider.bottomSheetIndex = 0;
                          },
                          child: const CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 20,
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  getBottomSheet(index) {
    switch (index) {
      case 0:
        return BottomSheetMenu();
      case 1:
        return TournamentBottomSheet();
      case 2:
        return SparringBottomSheet();
      case 3:
        return GradingsBottomSheet();
      case 5:
        return SocialBottomSheet();
      case 6:
        return SeminarsBottomSheet();
      default:
        BottomSheetMenu();
    }
  }
}

class SparringBottomSheet extends StatelessWidget {
  const SparringBottomSheet({
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
          'sparring'.toUpperCase(),
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Colors.red,
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
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(40),
            ),
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 32),
            alignment: Alignment.center,
            child: ListView.separated(
              padding: EdgeInsets.only(bottom: 60),
              separatorBuilder: (ctx, i) => Container(
                height: 60,
                color: Colors.grey,
              ),
              itemCount: PATTERNS.length,
              itemBuilder: (ctx, i) =>
                  Container(height: 60, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}

class BottomSheetMenu extends StatelessWidget {
  const BottomSheetMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          children: [
            SizedBox(height: 16),
            ProfileDetailsTile(
              leftText: 'martial arts',
              rightText: 'taekwon do',
              color: Color(0xff55B0FC),
            ),
            ProfileDetailsTile(
              leftText: 'organiation',
              rightText: 'sata',
              color: Color(0xff94A9BE),
            ),
            ProfileDetailsTile(
              leftText: 'affiliation',
              rightText: 'martial arts south africa',
              color: Color(0xff55B0FC),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        // const Spacer(),
        Expanded(
          child: Container(
            // height: height * .45,
            // constraints:
            //     BoxConstraints(maxHeight: height * .5, minHeight: height * .4),
            decoration: const BoxDecoration(
              color: Color(0xffEAF4FE),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            padding: const EdgeInsets.only(top: 8),
            child: ListView.separated(
              padding: const EdgeInsets.only(top: 8, bottom: 120),
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (ctx, i) => InkWell(
                onTap: () {
                  Provider.of<ProfileProvider>(context, listen: false)
                      .bottomSheetIndex = i + 1;
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 64,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 24,
                      ),
                      Text(
                        FIGHTERPROFILEMENU[i].toUpperCase(),
                        textAlign: TextAlign.center,
                      ),
                      const CircleAvatar(
                        radius: 12,
                        backgroundColor: Color(0xff2491FE),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 16,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              separatorBuilder: (ctx, i) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Divider(
                  thickness: 2,
                ),
              ),
              itemCount: FIGHTERPROFILEMENU.length,
            ),
          ),
        ),
      ],
    );
  }
}
