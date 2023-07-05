import 'package:flutter/material.dart';

import '../widgets/text_style.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.redAccent,
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 80.0, horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Welcome',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    welcomeText('Pinoy Food'),
                    welcomeText('To Enjoy'),
                  ],
                ),
              ),
              SizedBox(height: 50.0),
              Center(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 50.0),
                    title: Text(
                      'Get started',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.red,
                      size: 50.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
