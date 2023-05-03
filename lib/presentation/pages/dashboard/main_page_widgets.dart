import 'package:flutter/material.dart';

Widget buildMainPages({
  required int index,
}) {
  List<Widget> mainPages = [
    const Center(
      child: Text('Home'),
    ),
    const Center(
      child: Text('Search'),
    ),
    const Center(
      child: Text('Course'),
    ),
    const Center(
      child: Text('Chat'),
    ),
    const Center(
      child: Text('Profile'),
    ),
  ];

  return mainPages[index];
}
