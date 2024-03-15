import 'package:flutter/material.dart';

next(BuildContext context, Widget Screen) {
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => Screen));
}

replace(BuildContext context, Widget Screen) {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (ctx) => Screen));
}

pop(BuildContext context) {
  Navigator.of(context).pop();
}
