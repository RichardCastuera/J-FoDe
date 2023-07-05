import 'package:flutter/material.dart';
import 'package:j_fode/screens/sign_up_screen.dart';
import '../widgets/text_style.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static const String id = 'welcome_screen';

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
              mediumText(label: 'Welcome', color: Colors.white),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    welcomeText(label: 'Pinoy Food', color: Colors.white),
                    welcomeText(label: 'To Enjoy', color: Colors.white),
                  ],
                ),
              ),
              SizedBox(height: 50.0),
              navigationButton(
                buttonColor: Colors.white,
                contentColor: Colors.red,
                onPressed: () => Navigator.pushNamed(context, SignUpScreen.id),
                label: 'Get Started',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
