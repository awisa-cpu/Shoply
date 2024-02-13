// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:shoply/common/widgets/custom_app_bar_title.dart';
import 'package:shoply/common/widgets/custom_back_navigator.dart';
import 'package:shoply/common/widgets/custom_toggle_button.dart';

import '../../../../../common/widgets/custom_chip.dart';

class HelpCenterPage extends StatefulWidget {
  const HelpCenterPage({super.key});

  @override
  State<HelpCenterPage> createState() => _HelpCenterPageState();
}

class _HelpCenterPageState extends State<HelpCenterPage> {
  late final TextEditingController _search;
  bool isFaq = true;
  bool isContactUs = false;
  final faqs = <String>[
    'All',
    'Services',
    'General',
    'Account',
    'All',
    'Services',
    'General',
    'Account'
  ];

  final allFaqs = [
    Faqs(
      title: "Can I track my order's status?",
      body:
          'Install Flutter development tools according to the official documentation.',
    ),
    Faqs(
      title: 'Is there a return policy?',
      body:
          'Open your terminal, run `flutter create <project_name>` to create a new project.',
    ),
    Faqs(
      title: "Can I save my favourite items for later?",
      body:
          'Change your terminal directory to the project directory, enter `flutter run`.',
    ),
    Faqs(
      title: "Can I share products with my friends?",
      body:
          'Change your terminal directory to the project directory, enter `flutter run`.',
    ),
    Faqs(
      title: "How do I contact customer support?",
      body:
          'Change your terminal directory to the project directory, enter `flutter run`.',
    ),
    Faqs(
      title: "What payment methods are accepted?",
      body:
          'Change your terminal directory to the project directory, enter `flutter run`.',
    ),
    Faqs(
      title: "How to add review?",
      body:
          'Change your terminal directory to the project directory, enter `flutter run`.',
    ),
  ];

  final allContactUs = [
    ContactUsItem(
        title: 'Customer Service',
        body: '',
        icon: Icons.supervised_user_circle),
    ContactUsItem(title: 'Whatsapp', body: '', icon: Icons.whatshot_sharp),
    ContactUsItem(title: 'Website', body: '', icon: Icons.web_outlined),
    ContactUsItem(title: 'Facebook', body: '', icon: Icons.face),
    ContactUsItem(title: 'Twitter', body: '', icon: Icons.twelve_mp),
    ContactUsItem(title: 'Instagram', body: '', icon: Icons.inbox),
  ];
  @override
  void initState() {
    super.initState();
    _search = TextEditingController();
  }

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  //
  @override
  Widget build(BuildContext context) {
    //
    final color = Theme.of(context).primaryColor;

    //
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackNavigator(
          goBackTo: () {},
        ),
        title: const CustomAppBarTitle(title: 'Help Center'),
        centerTitle: true,
      ),

      //
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //search bar
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.grey.shade400,
                  ),
                ),
                child: TextField(
                  controller: _search,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search_outlined,
                      color: color,
                      size: 25,
                    ),
                    hintText: 'Search',
                    border: InputBorder.none,
                  ),
                ),
              ),

              //
              const SizedBox(
                height: 10,
              ),

              //options
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //faq
                  CustomToggleButton(
                    action: () {
                      setState(() {
                        isFaq = true;
                        if (isFaq) {
                          isContactUs = false;
                        }
                      });
                    },
                    text: 'FAQ',
                    isOption: isFaq,
                  ),
                  //contact us
                  CustomToggleButton(
                    action: () {
                      setState(() {
                        isContactUs = true;
                        if (isContactUs) {
                          isFaq = false;
                        }
                      });
                    },
                    text: 'Contact Us',
                    isOption: isContactUs,
                  ),
                ],
              ),

              isFaq
                  ? Column(
                      children: [
                        //chips
                        SizedBox(
                          height: 60,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: faqs.length,
                            itemBuilder: (context, index) {
                              final item = faqs.elementAt(index);
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: CustomChip(text: item),
                              );
                            },
                          ),
                        ),

                        //
                        ExpansionPanelList(
                            expandedHeaderPadding: const EdgeInsets.all(0),
                            expansionCallback: (panelIndex, isExpanded) {
                              setState(() {
                                allFaqs[panelIndex].expand = isExpanded;
                              });
                            },
                            children: allFaqs.map((e) {
                              return ExpansionPanel(
                                headerBuilder: (context, isExpanded) {
                                  return ListTile(
                                    title: Text(
                                      e.title,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  );
                                },
                                body: ListTile(
                                  title: Text(e.body),
                                ),
                                isExpanded: e.expand,
                              );
                            }).toList())
                      ],
                    )
                  : isContactUs
                      ? ExpansionPanelList(
                          expansionCallback: (panelIndex, isExpanded) {
                            setState(() {
                              allContactUs[panelIndex].expand = isExpanded;
                            });
                          },
                          children: allContactUs.map((c) {
                            return ExpansionPanel(
                                headerBuilder: (context, isExpanded) {
                                  return ListTile(
                                    leading: Icon(
                                      c.icon,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    title: Text(
                                      c.title,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  );
                                },
                                body: ListTile(
                                  title: Text(c.body),
                                ),
                                isExpanded: c.expand);
                          }).toList(),
                        )
                      : const SizedBox.shrink()
            ],
          ),
        ),
      ),
    );
  }
}

class Faqs {
  String title;
  String body;
  bool expand;
  Faqs({
    required this.title,
    required this.body,
    this.expand = false,
  });
}

class ContactUsItem {
  String title;
  String body;
  bool expand;
  final IconData icon;
  ContactUsItem({
    required this.title,
    required this.body,
    required this.icon,
    this.expand = false,
  });
}
