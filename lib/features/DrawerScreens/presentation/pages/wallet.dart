import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/widgetFunctions.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

int? singleValue;
int? singleValue1;
int? singleValue2;
int? singleValue3;
int? singleValue4;
int? singleValue5;

class _WalletPageState extends State<WalletPage> {
  final phoneController = TextEditingController();
  final amountController = TextEditingController();

  void _handleRadioValueChange(dynamic value) {
    setState(() {
      singleValue = value;
    });
  }

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
                    'Select Your Network',
                    fontSize: 14,
                  ),
                  addVertical(10),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Radio(
                        value: 0,
                        groupValue: singleValue,
                        onChanged: _handleRadioValueChange,
                        activeColor: Colors.amber,
                      ),
                      mainText16('MTN'),
                    ],
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Radio(
                        value: 1,
                        groupValue: singleValue,
                        onChanged: _handleRadioValueChange,
                        activeColor: Colors.red,
                      ),
                      mainText16('VODAFONE'),
                    ],
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Radio(
                        value: 2,
                        groupValue: singleValue,
                        onChanged: _handleRadioValueChange,
                        activeColor: Color.fromARGB(255, 20, 17, 196),
                      ),
                      mainText16('AirtelTigo'),
                    ],
                  ),
                  // RadioButton(
                  //   description: "MTN",
                  //   value: "mtn",
                  //   groupValue: 'Mobile Money',
                  //   textStyle: GoogleFonts.raleway(
                  //     fontWeight: FontWeight.w500,
                  //     letterSpacing: .75,
                  //     fontSize: 18,
                  //   ),
                  //   onChanged: (value) => setState(
                  //     () {
                  //       singleValue = value;
                  //       print('value: $value');
                  //     },
                  //   ),
                  //   fillColor: secondColor,
                  //   activeColor: primaryColor,
                  // ),
                  // RadioButton(
                  //   description: "Vodafone",
                  //   value: "vodafone",
                  //   groupValue: 'Mobile Money',
                  //   textStyle: GoogleFonts.raleway(
                  //     fontWeight: FontWeight.w500,
                  //     letterSpacing: .75,
                  //     fontSize: 18,
                  //   ),
                  //   onChanged: (value) => setState(
                  //     () {
                  //       singleValue1 = value;
                  //       print('value: $value');
                  //     },
                  //   ),
                  //   fillColor: secondColor,
                  //   activeColor: primaryColor,
                  // ),
                  // RadioButton(
                  //   description: "AirtelTigo",
                  //   value: "airteltigo",
                  //   groupValue: 'Mobile Money',
                  //   textStyle: GoogleFonts.raleway(
                  //     fontWeight: FontWeight.w500,
                  //     letterSpacing: .75,
                  //     fontSize: 18,
                  //   ),
                  //   onChanged: (value) => setState(
                  //     () {
                  //       singleValue2 = value;
                  //       print('value: $value');
                  //     },
                  //   ),
                  //   activeColor: primaryColor,
                  //   fillColor: secondColor,
                  // ),
                  addVertical(20),
                  singleValue == null
                      ? AbsorbPointer(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 20, right: 20),
                            child: buildTextField(
                              'Phone Number',
                              'Eg: 0201234567',
                              false,
                              false,
                              phoneController,
                              isContact: true,
                            ),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 20, right: 20),
                          child: buildTextField(
                            'Phone Number',
                            'Eg: 0201234567',
                            false,
                            false,
                            phoneController,
                            isContact: true,
                          ),
                        ),
                  addVertical(10),
                  // ? Change icon color
                  // ? Add sequencing
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: buildTextField1(
                      'Amount to Withdraw',
                      'Eg: 0201234567',
                      false,
                      false,
                      amountController,
                      isAmount: true,
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
                subText(
                  'Select Your Bank...',
                  fontSize: 14,
                ),
                addVertical(10),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      value: 0,
                      groupValue: singleValue,
                      onChanged: _handleRadioValueChange,
                      activeColor: secondColor,
                    ),
                    mainText16('Access Bank'),
                  ],
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      value: 1,
                      groupValue: singleValue,
                      onChanged: _handleRadioValueChange,
                      activeColor: secondColor,
                    ),
                    mainText16('GT Bank'),
                  ],
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      value: 2,
                      groupValue: singleValue,
                      onChanged: _handleRadioValueChange,
                      activeColor: secondColor,
                    ),
                    mainText16('ADB'),
                  ],
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      value: 3,
                      groupValue: singleValue,
                      onChanged: _handleRadioValueChange,
                      activeColor: secondColor,
                    ),
                    mainText16('Fidelity Bank'),
                  ],
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      value: 4,
                      groupValue: singleValue,
                      onChanged: _handleRadioValueChange,
                      activeColor: secondColor,
                    ),
                    mainText16('Republic Bank'),
                  ],
                ),
                // RadioButton(
                //   description: "Access Bank",
                //   value: "access",
                //   groupValue: 'Mobile Money',
                //   textStyle: GoogleFonts.raleway(
                //     fontWeight: FontWeight.w500,
                //     letterSpacing: .75,
                //     fontSize: 18,
                //   ),
                //   onChanged: (value) => setState(
                //     () {
                //       singleValue3 = value;
                //       print('value: $value');
                //     },
                //   ),
                //   fillColor: secondColor,
                //   activeColor: primaryColor,
                // ),
                // RadioButton(
                //   description: "GCB Bank",
                //   value: "GCB",
                //   groupValue: 'Mobile Money',
                //   textStyle: GoogleFonts.raleway(
                //     fontWeight: FontWeight.w500,
                //     letterSpacing: .75,
                //     fontSize: 18,
                //   ),
                //   onChanged: (value) => setState(
                //     () {
                //       singleValue4 = value;
                //       print('value: $value');
                //     },
                //   ),
                //   fillColor: secondColor,
                //   activeColor: primaryColor,
                // ),
                // RadioButton(
                //   description: "Standard Chartered Bank",
                //   value: "stanchart",
                //   groupValue: 'Mobile Money',
                //   textStyle: GoogleFonts.raleway(
                //     fontWeight: FontWeight.w500,
                //     letterSpacing: .75,
                //     fontSize: 18,
                //   ),
                //   onChanged: (value) => setState(
                //     () {
                //       singleValue5 = value;
                //       print('value: $value');
                //     },
                //   ),
                //   activeColor: primaryColor,
                //   fillColor: secondColor,
                // ),
                addVertical(20),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: buildTextField1(
                    'Account Number',
                    'Eg: 2011xxxxxxxxxxxxxx',
                    false,
                    false,
                    phoneController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: buildTextField1(
                    'Amount to Withdraw',
                    'Eg: 0201234567',
                    false,
                    false,
                    amountController,
                    isAmount: true,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
