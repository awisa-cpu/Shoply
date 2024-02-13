import 'package:flutter/material.dart';
import 'package:shoply/common/widgets/custom_back_navigator.dart';
import 'package:shoply/common/widgets/custom_action_button.dart';
import 'package:shoply/common/widgets/custom_email_field.dart';

class ProfileCompleteView extends StatefulWidget {
  const ProfileCompleteView({super.key});

  @override
  State<ProfileCompleteView> createState() => _ProfileCompleteViewState();
}

class _ProfileCompleteViewState extends State<ProfileCompleteView> {
  late final TextEditingController _nameCon = TextEditingController();
  late final TextEditingController _phoneCon = TextEditingController();
  String? currentValue;

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
            top: 60.5,
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
                    'Complete Your Profile',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),

                  //
                  const SizedBox(
                    height: 10.5,
                  ),

                  //
                  const Text("Don't worry, only you can see your personal"),
                  const Text('data. No one else will be able to see it.'),

                  //

                  const SizedBox(
                    height: 30.5,
                  ),

                  //profile picture
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    radius: 60,
                    child: const Icon(
                      Icons.person,
                      size: 70,
                      color: Colors.black,
                    ),
                  ),

                  //initials
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //
                      const Text('Name'),

                      //
                      const SizedBox(
                        height: 7.5,
                      ),

                      //name field
                      EmailField(
                        emailCon: _nameCon,
                        hintText: 'John Doe',
                      ),

                      //
                      const SizedBox(
                        height: 10.5,
                      ),

                      //
                      const Text('Phone Number'),

                      //
                      const SizedBox(
                        height: 7.5,
                      ),

                      //phone field
                      EmailField(
                        emailCon: _phoneCon,
                        hintText: 'Enter Phone Number',
                      ),

                      //
                      const Text('Gender'),

                      //
                      const SizedBox(
                        height: 7.5,
                      ),

                      //Gender field
                      Container(
                        height: 57,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: DropdownButton(
                            isExpanded: true,
                            underline: const SizedBox.shrink(),
                            value: currentValue,
                            hint: const Text('Select'),
                            items: [
                              DropdownMenuItem(
                                value: 'Male',
                                child: Text(
                                  'Male',
                                  style: TextStyle(color: color),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 'Female',
                                child: Text(
                                  'Female',
                                  style: TextStyle(color: color),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                currentValue = value ?? '';
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),

                  //
                  const SizedBox(
                    height: 60.5,
                  ),

                  //Verify button
                  CustomActionButton(
                    text: 'Complete Profile',
                    onPressed: () {},
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
