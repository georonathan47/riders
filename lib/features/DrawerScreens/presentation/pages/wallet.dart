import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import '../../../../core/constants/widgetFunctions.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

int? singleValue;

class _WalletPageState extends State<WalletPage> {
  final phoneController = TextEditingController();
  final amountController = TextEditingController();

  void _handleRadioValueChange(dynamic value) {
    setState(() {
      singleValue = value;
    });
  }

  List bankList = ["Access Bank", "UMB", "GT Bank", "ADB", "Fidelity Bank", "Republic Bank"];

  @override
  Widget build(BuildContext context) {
    dynamic selectedBank;
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
                            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
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
                          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
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
                Container(
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  height: size.height * 0.0675,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButtonFormField2(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: const EdgeInsets.all(12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 1),
                        ),
                      ),
                      hint: subText('--- Choose Bank ---'),
                      value: selectedBank,
                      onChanged: (value) {
                        setState(() {
                          selectedBank = value;
                        });
                        print('selectedBank: $selectedBank');
                      },
                      items: bankList.map<DropdownMenuItem<String>>((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: subText(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
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
