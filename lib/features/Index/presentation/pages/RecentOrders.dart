import 'package:flutter/material.dart';

import '../../../../core/constants/widgetFunctions.dart';
import '../widgets/r_OrderCard.dart';

class RecentOrders extends StatefulWidget {
  const RecentOrders({Key? key}) : super(key: key);

  @override
  State<RecentOrders> createState() => _RecentOrdersState();
}

class _RecentOrdersState extends State<RecentOrders> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar('Recent Orders'),
      body: screenBody(
        size,
        children: [
          subText('All your recent deliveries will populate below:'),
          const Divider(thickness: 0.45),
          addVertical(10),
          SizedBox(
            height: size.height,
            child: MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return RecentCard();
                },
                separatorBuilder: (context, index) => addVertical(7),
                itemCount: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
