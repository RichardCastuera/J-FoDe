import 'package:flutter/material.dart';

Text welcomeText(String label) {
  return Text(
    label,
    style: TextStyle(
      fontSize: 50.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );
}
