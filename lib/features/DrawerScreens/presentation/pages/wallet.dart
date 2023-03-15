import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:group_radio_button/group_radio_button.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/widgetFunctions.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

String? singleValue;
String? singleValue1;
String? singleValue2;

class _WalletPageState extends State<WalletPage> {
  List<Map> networks = [
    {
      'MTN':
          'https://yt3.ggpht.com/a/AATXAJwVJYu-ZeC_08lpH05PZXWmfnugDP-znS5E7A=s900-c-k-c0xffffffff-no-rj-mo',
      'color': Colors.yellow[700],
    },
    {
      'Vodafone':
          'https://diginomica.com/sites/default/files/images/2016-10/vodafone.jpg',
      'color': Colors.red[700]
    },
    {
      'AirtelTigo':
          'https://pcbossonline.com/wp-content/uploads/2020/04/airteltigo-money-logo.webp',
      'color': Colors.white,
    },
  ];

  final phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Wallet',
            style: GoogleFonts.poppins(),
          ),
          elevation: .75,
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Mobile Money',
                  style: GoogleFonts.raleway(),
                ),
              ),
              Tab(
                child: Text(
                  'Bank Transfer',
                  style: GoogleFonts.raleway(),
                ),
              ),
            ],
          ),
        ),
        persistentFooterButtons: [
          SizedBox(
            width: size.width * 0.75,
            height: 50,
            child: ElevatedButton(
              child: subText('Submit', fontSize: 16),
              onPressed: () {},
            ),
          ),
        ],
        persistentFooterAlignment: AlignmentDirectional.center,
        body: TabBarView(
          children: [
            // ? MoMo Tab
            GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: screenBody(
                size,
                children: [
                  subText(
                    'Please provide the following details to withdraw funds from your account.',
                    fontSize: 14,
                  ),
                  const Divider(thickness: 0.65),
                  subText(
                    'Select Network',
                    fontSize: 14,
                  ),
                  addVertical(10),
                  RadioButton(
                    description: "MTN",
                    value: "mtn",
                    groupValue: 'Mobile Money',
                    textStyle: GoogleFonts.raleway(
                      fontWeight: FontWeight.w500,
                      letterSpacing: .75,
                      fontSize: 18,
                    ),
                    onChanged: (value) => setState(
                      () {
                        singleValue = value;
                        print('value: $value');
                      },
                    ),
                    fillColor: secondColor,
                    activeColor: primaryColor,
                  ),
                  RadioButton(
                    description: "Vodafone",
                    value: "vodafone",
                    groupValue: 'Mobile Money',
                    textStyle: GoogleFonts.raleway(
                      fontWeight: FontWeight.w500,
                      letterSpacing: .75,
                      fontSize: 18,
                    ),
                    onChanged: (value) => setState(
                      () {
                        singleValue1 = value;
                        print('value: $value');
                      },
                    ),
                    fillColor: secondColor,
                    activeColor: primaryColor,
                  ),
                  RadioButton(
                    description: "AirtelTigo",
                    value: "airteltigo",
                    groupValue: 'Mobile Money',
                    textStyle: GoogleFonts.raleway(
                      fontWeight: FontWeight.w500,
                      letterSpacing: .75,
                      fontSize: 18,
                    ),
                    onChanged: (value) => setState(
                      () {
                        singleValue2 = value;
                        print('value: $value');
                      },
                    ),
                    activeColor: primaryColor,
                    fillColor: secondColor,
                  ),
                  addVertical(20),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: buildTextField(
                      'Phone Number',
                      'Eg: 0201234567',
                      false,
                      false,
                      phoneController,
                      isContact: true,
                    ),
                  ),
                ],
              ),
            ),
            // ? Bank Transfer Tab
            screenBody(
              size,
              children: [
                subText(
                  'Please provide the following details to withdraw funds from your account.',
                  fontSize: 14,
                ),
                const Divider(thickness: 0.65),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
