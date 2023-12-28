// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:shoply/utilities/widgets/custom_back_navigator.dart';

import '../../utilities/widgets/custom_action_button.dart';
import '../../utilities/widgets/custom_password_field.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  late final TextEditingController _password = TextEditingController();
  late final TextEditingController _confirmPassword = TextEditingController();
  final bool _showPassword = true;
  final bool _showPasswordConfirm = true;

  @override
  Widget build(BuildContext context) {
    //

    //
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15.5,
            right: 15.5,
            top: 75.5,
            bottom: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              BackNavigator(
                goBackTo: () {
                  //navigate back
                },
              ),

              //
              const SizedBox(
                height: 16.5,
              ),
              //

              Column(
                children: [
                  const Text(
                    'New Password',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),

                  //
                  const SizedBox(
                    height: 10.5,
                  ),

                  //
                  const Text('Your new password must be different'),
                  const Text('from previously used passwords.'),

                  //

                  const SizedBox(
                    height: 60.5,
                  ),

                  //password details
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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

                      //
                      const SizedBox(
                        height: 10.5,
                      ),

                      //
                      const Text('Confirm Password'),

                      //
                      const SizedBox(
                        height: 7.5,
                      ),

                      //Confirm password field
                      PasswordField(
                        passwordCon: _confirmPassword,
                        showPassword: _showPasswordConfirm,
                      ),
                    ],
                  ),

                  //
                  const SizedBox(
                    height: 60.5,
                  ),

                  //Verify button
                  CustomActionButton(
                    text: 'Confirm Password',
                    perform: () {},
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
