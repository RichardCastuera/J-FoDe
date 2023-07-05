import 'package:flutter/material.dart';

import '../widgets/text_style.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static const String id = 'signup_screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.redAccent,
        body: Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: CircleAvatar(
                  radius: 70.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 70.0,
                    color: Colors.redAccent,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.only(
                      topEnd: Radius.circular(150.0),
                      topStart: Radius.circular(150.0),
                    ),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(20.0),
                  child: Expanded(
                    child: Column(
                      children: [
                        mediumText(label: 'Welcome!', color: Colors.black),
                        SizedBox(height: 20.0),
                        inputField(
                            icon: Icons.person,
                            label: 'Full Name',
                            isPassword: false),
                        inputField(
                            icon: Icons.email,
                            label: 'Email Address',
                            isPassword: false),
                        inputField(
                            icon: Icons.lock,
                            label: 'Password',
                            isPassword: true),
                        inputField(
                            icon: Icons.lock,
                            label: 'Confirm Password',
                            isPassword: true),
                        SizedBox(height: 20.0),
                        navigationButton(
                          buttonColor: Colors.redAccent,
                          contentColor: Colors.white,
                          onPressed: () {},
                          label: 'Next',
                        ),
                        SizedBox(height: 35.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an Account?',
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.blueGrey,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Sign-In',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
