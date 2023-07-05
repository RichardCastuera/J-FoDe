import 'package:flutter/material.dart';

Text mediumText({required String label, required Color color}) {
  return Text(
    label,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 25.0,
      color: color,
      fontWeight: FontWeight.w700,
    ),
  );
}

Text welcomeText({required String label, required Color color}) {
  return Text(
    label,
    style: TextStyle(
      fontSize: 50.0,
      fontWeight: FontWeight.bold,
      color: color,
    ),
  );
}

ListTile inputField(
    {required IconData icon, required String label, required bool isPassword}) {
  return ListTile(
    leading: Icon(
      icon,
      color: Colors.blueGrey,
      size: 30.0,
    ),
    title: TextField(
      decoration: InputDecoration(
        label: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.blueGrey,
            fontSize: 15.0,
          ),
        ),
      ),
      obscureText: isPassword,
    ),
  );
}

TextButton navigationButton(
    {required Color buttonColor,
    required Color contentColor,
    required void Function() onPressed,
    required String label}) {
  return TextButton(
    style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(buttonColor),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    ),
    onPressed: onPressed,
    child: ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 50.0),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: TextStyle(
              color: contentColor,
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(width: 10.0),
          Icon(
            Icons.keyboard_arrow_right,
            color: contentColor,
            size: 50.0,
          ),
        ],
      ),
    ),
  );
}
