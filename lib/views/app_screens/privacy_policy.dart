import 'package:flutter/material.dart';
import 'package:shoply/utilities/widgets/custom_app_bar_title.dart';
import 'package:shoply/utilities/widgets/custom_back_navigator.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackNavigator(
          goBackTo: () {},
        ),
        title: const CustomAppBarTitle(
          title: 'Privacy Policy',
        ),
        centerTitle: true,
      ),

      //
      body: Padding(
        padding: const EdgeInsets.all(15.5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Cancellation Policy',
                style: TextStyle(color: color, fontSize: 20),
              ),
              const SizedBox(
                height: 11.5,
              ),
              const Text(
                  'S.I.W.E.S which stands for Student Industrial Work Experience Scheme was established by the Industrial Training Fund (ITF) in 1973 so as to complement the theoretical knowledge acquired in higher institutions with practical experience. The goal of SIWES is to “promote industrialization in Nigeria, and an avenue between the world of teaching, learning, industry, and work with reference to a field of study”. '),

              //
              const SizedBox(
                height: 11.5,
              ),
              Text(
                'Terms & Conditions',
                style: TextStyle(color: color, fontSize: 20),
              ),
              const Text(
                  'Industrial training is an opportunity through which students can acquire industry-based knowledge about their respective disciplines and so the aims are to expose university students to the country to work so that they can relate theoretical knowledge with application in industry and the world at large and to empower the students of higher learning with practical background experience in preparatory for employment in industries. From the industrial training program, the students will also develop skills in work ethics, communication, practical, and theory. Furthermore, this industrial training program also aims at establishing a close relationship between the industry and the university.'),

              const SizedBox(
                height: 11.5,
              ),
              const Text(
                  'Softkodes Technology ltd is a software development company suited within refinery road in Effurun, Warri Delta State and headquarter in London, United Kingdom. From its inception since 2019, the company has offered seamless software production services to clients of diverse interests and demographics. We provide premium services across User Interface/User Experience design, Mobile application development and Web development. '),
              //
              const SizedBox(width: 11.5),
              const Text(
                  'Softkodes Technology ltd is a software development company suited within refinery road in Effurun, Warri Delta State and headquarter in London, United Kingdom. From its inception since 2019, the company has offered seamless software production services to clients of diverse interests and demographics. We provide premium services across User Interface/User Experience design, Mobile application development and Web development. ')
            ],
          ),
        ),
      ),
    );
  }
}
