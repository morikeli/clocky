import 'package:flutter/material.dart';


Widget timeFlipCard(context, String timeStamp) {
  return Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(20.0)),
      color: Theme.of(context).colorScheme.surface,
    ),
    padding: const EdgeInsets.symmetric(horizontal: 12.0),
    child: Text(
      timeStamp.padLeft(2, '0'),
      style: Theme.of(context).textTheme.titleLarge,
    ),
  );
}