import 'package:flutter/material.dart';

import '../../utilities/widgets/custom_back_navigator.dart';
import '../../utilities/widgets/custom_action_button.dart';
import '../../utilities/widgets/custom_pass_code.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    //
    final color = Theme.of(context).primaryColor;

    //
    return Scaffold(
      body: Padding(
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
                  'Verify Code',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),

                //
                const SizedBox(
                  height: 10.5,
                ),

                //
                const Text('Please enter the code we just sent to email'),
                Text(
                  'example123@gmail.com',
                  style: TextStyle(
                    color: color,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //

                const SizedBox(
                  height: 60.5,
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //
                    PassCode(value: '4'),
                    PassCode(value: '8'),
                    PassCode(value: '9'),
                    PassCode(value: '0'),
                  ],
                ),

                //
                const SizedBox(
                  height: 60.5,
                ),

                //
                const Text("Didn't receive OTP?"),
                GestureDetector(
                  onTap: () {
                    //Code resend
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Resend code',
                        style: TextStyle(
                          color: color,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: 1,
                        width: 85,
                        color: color,
                      )
                    ],
                  ),
                ),

                //
                const SizedBox(
                  height: 60.5,
                ),

                //Verify button
                CustomActionButton(
                  text: 'Verify',
                  perform: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
