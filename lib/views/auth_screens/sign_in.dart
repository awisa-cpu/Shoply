import 'package:flutter/material.dart';
import 'package:shoply/utilities/widgets/custom_email_field.dart';
import 'package:shoply/utilities/widgets/custom_password_field.dart';

import '../../utilities/widgets/custom_action_button.dart';
import '../../utilities/widgets/custom_password_forget.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  //
  late final TextEditingController _email = TextEditingController();
  late final TextEditingController _password = TextEditingController();
  final bool _showPassword = true;

  @override
  Widget build(BuildContext context) {
    //
    final color = Theme.of(context).primaryColor;

    //
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15.5,
            right: 15.5,
            top: 100.5,
            bottom: 25,
          ),
          child: Column(
            children: [
              //

              const Text(
                'Sign In',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),

              //
              const SizedBox(
                height: 10.5,
              ),

              //
              const Text("Hi!, Welcome back, you've been missed"),
              //

              const SizedBox(
                height: 60.5,
              ),

              //login details
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //
                  const Text('Email'),

                  //
                  const SizedBox(
                    height: 7.5,
                  ),

                  //email field
                  EmailField(emailCon: _email),

                  //
                  const SizedBox(
                    height: 10.5,
                  ),

                  //
                  const Text('Password'),

                  //
                  const SizedBox(
                    height: 7.5,
                  ),

                  //password field
                  PasswordField(
                    passwordCon: _password,
                    showPassword: _showPassword,
                  ),
                ],
              ),

              //
              const SizedBox(
                height: 10.5,
              ),

              //password forgot
              CustomPasswordForget(passwordAction: () {
                //navigate to password forgot page
              },),

              //
              const SizedBox(
                height: 20.5,
              ),

              //sign in button
              CustomActionButton(
                text: 'Sign In',
                perform: () {},
              ),

              //
              const SizedBox(
                height: 20.5,
              ),

              //options
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1,
                    width: 70,
                    color: color,
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  const Text('Or sign in with'),
                  const SizedBox(
                    width: 7,
                  ),
                  Container(
                    height: 1,
                    width: 70,
                    color: color,
                  ),
                ],
              ),

              //
              const SizedBox(
                height: 20.5,
              ),

              //other sign in options
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //apple
                  Container(
                    height: 90,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey)),
                    child: Image.asset('lib/images/apple.png'),
                  ),

                  //google
                  Container(
                    height: 90,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white)),
                    child: Image.asset('lib/images/google.jpg'),
                  ),

                  //facebook
                  Container(
                    height: 90,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        shape: BoxShape.circle),
                    child: Image.asset(
                      'lib/images/facebook.png',
                    ),
                  )
                ],
              ),

              //
              const SizedBox(
                height: 20.5,
              ),

              //footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  InkWell(
                    enableFeedback: false,
                    onTap: () {
                      //navigate to the sign up screen
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Sign up",
                          style: TextStyle(
                            color: color,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 1,
                          width: 50,
                          color: color,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
