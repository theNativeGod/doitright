import 'package:flutter/material.dart';

class PatternModel {
  final String group;
  final List<String> patterns;
  final String startingPosition;
  final String endPosition;
  final Color color;
  final Color stripeColor;
  bool is1st;

  PatternModel({
    required this.group,
    required this.patterns,
    required this.startingPosition,
    required this.endPosition,
    required this.color,
    required this.stripeColor,
    this.is1st = false,
  });
}
