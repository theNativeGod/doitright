import 'package:doitright/models/pattern_model.dart';
import 'package:doitright/view_models/profile_provider.dart';
import 'package:doitright/views/fighter_profile_screen.dart/fighter_profile_screen.dart';
import 'package:doitright/views/helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

List<PatternModel> PATTERNS = [
  PatternModel(
    group: '10th GUP',
    patterns: ['saju ju rugi', 'saju ju maki'],
    startingPosition: 'white belt',
    endPosition: 'amber stripe',
    color: Colors.white,
    stripeColor: Colors.transparent,
  ),
  PatternModel(
    group: '9th GUP',
    patterns: ['chon ji'],
    startingPosition: 'amber stripe',
    endPosition: 'amber belt',
    color: Colors.white,
    stripeColor: Color(0xffFFCC2F),
  ),
  PatternModel(
    group: '8th GUP',
    patterns: ['dan - gun'],
    startingPosition: 'amber belt',
    endPosition: 'green stripe',
    color: Color(0xffFFCC2F),
    stripeColor: Colors.transparent,
  ),
  PatternModel(
    group: '7th GUP',
    patterns: ['dos - san'],
    startingPosition: 'green stripe',
    endPosition: 'green belt',
    color: Color(0xffFFCC2F),
    stripeColor: Color(0xff18A225),
  ),
  PatternModel(
    group: '6th GUP',
    patterns: ['who - you'],
    startingPosition: 'green belt',
    endPosition: 'blue stripe',
    color: Color(0xff18A225),
    stripeColor: Colors.transparent,
  ),
  PatternModel(
    group: '5th GUP',
    patterns: ['yul - gok'],
    startingPosition: 'blue stripe',
    endPosition: 'blue belt',
    color: Color(0xff18A225),
    stripeColor: Color(0xff184FA2),
  ),
  PatternModel(
    group: '4th GUP',
    patterns: ['joong - gun'],
    startingPosition: 'blue belt',
    endPosition: 'red stripe',
    color: Color(0xff184FA2),
    stripeColor: Colors.transparent,
  ),
  PatternModel(
    group: '3rd GUP',
    patterns: ['toi - gye'],
    startingPosition: 'red stripe',
    endPosition: 'red belt',
    color: Color(0xff184FA2),
    stripeColor: Colors.red,
  ),
  PatternModel(
    group: '2nd GUP',
    patterns: ['hwa - rang'],
    startingPosition: 'red belt',
    endPosition: 'black stripe',
    color: Colors.red,
    stripeColor: Colors.transparent,
  ),
  PatternModel(
    group: '1st GUP',
    patterns: ['choong - moo'],
    startingPosition: 'black stripe',
    endPosition: '1st Degree',
    color: Colors.red,
    stripeColor: Colors.black,
  ),
  PatternModel(
    group: '1st Degree',
    patterns: ['kwang - gae', 'po - eun', 'ge - baek'],
    startingPosition: '',
    endPosition: '',
    color: Colors.black,
    stripeColor: Colors.transparent,
    is1st: true,
  ),
];

List<String> MAINMENU = [
  'profile',
  'country',
  'self defence',
  'kick techniques',
  'tournaments',
  'hand techniques',
  'rankings',
  'news',
];

List<Function> MAINMENUONTAP = [
  (context) {
    next(context, FighterProfileScreen());
  },
  () {},
  () {},
  () {},
  () {},
  () {},
  () {},
  () {},
];

List<String> FIGHTERPROFILEMENU = [
  'Tournaments',
  'Sparring',
  'Grading',
  'Patterns',
  'Social',
  'Seminars',
];
