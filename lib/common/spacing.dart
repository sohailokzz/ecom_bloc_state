import 'package:flutter/material.dart';

extension Spacing on num {
  SizedBox get myPh => SizedBox(height: toDouble());
  SizedBox get myPw => SizedBox(width: toDouble());
}
