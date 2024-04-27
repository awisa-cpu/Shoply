import 'package:flutter/material.dart';
import 'package:shoply/common/widgets/custom_action_button.dart';
import 'package:shoply/common/widgets/custom_back_navigator.dart';
import 'package:shoply/common/widgets/custom_password_forget.dart';
import 'package:shoply/common/widgets/custom_password_field.dart';

class PasswordManagerPage extends StatefulWidget {
  const PasswordManagerPage({super.key});

  @override
  State<PasswordManagerPage> createState() => _PasswordManagerPageState();
}

class _PasswordManagerPageState extends State<PasswordManagerPage> {
  //
  late final TextEditingController _currentPassword = TextEditingController();
  late final TextEditingController _newPassword = TextEditingController();
  late final TextEditingController _confirmNewPassword =
      TextEditingController();
  final bool _showCurrentPassword = true;
  final bool _showNewPassword = true;
  final bool _showConNewPassword = true;

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackNavigator(
          goBackTo: () {},
        ),
        title: Text('Password Manager',
            style: Theme.of(context).textTheme.titleLarge),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15.5,
          right: 15.5,
          top: 3.5,
          bottom: 25,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              const SizedBox(
                height: 28.5,
              ),

              //
              const Text('Current Password'),
              const SizedBox(
                height: 8.5,
              ),
              PasswordField(
                passwordCon: _currentPassword,
                showPassword: _showCurrentPassword,
              ),

              const SizedBox(
                height: 15.5,
              ),

              //forgot password
              CustomPasswordForget(
                passwordAction: () {},
              ),
              //

              const SizedBox(
                height: 15.5,
              ),

              //
              const Text('New Password'),
              const SizedBox(
                height: 8.5,
              ),
              PasswordField(
                passwordCon: _newPassword,
                showPassword: _showNewPassword,
              ),
              const SizedBox(
                height: 18.5,
              ),

              //
              const Text('Confirm New Password'),
              const SizedBox(
                height: 8.5,
              ),
              PasswordField(
                passwordCon: _confirmNewPassword,
                showPassword: _showConNewPassword,
              ),

              const SizedBox(
                height: 40,
              ),

              //action button
              CustomActionButton(
                text: 'Change Password',
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
