import 'package:flutter/material.dart';

final otpdecration = InputDecoration(
  filled: true,
  fillColor: Colors.blueGrey.withOpacity(0.1),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      color: Colors.blueGrey.withOpacity(0.1),
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      color: Colors.blueGrey.withOpacity(0.1),
    ),
  ),
  hintText: '*',
  hintStyle: TextStyle(
    color: Colors.grey,
    fontSize: 20,
  ),
);
