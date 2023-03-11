import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/widgetFunctions.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

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
              child: subText('Proceed', fontSize: 16),
              onPressed: () {},
            ),
          ),
        ],
        persistentFooterAlignment: AlignmentDirectional.center,
        body: TabBarView(
          children: [
            // ? MoMo Tab
            screenBody(
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
                
              ],
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
