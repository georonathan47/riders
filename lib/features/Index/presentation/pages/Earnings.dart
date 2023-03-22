// import 'package:flutter/material.dart';

// import '../../../../core/constants/widgetFunctions.dart';
// import '../widgets/EarningsCard.dart';

// class Earnings extends StatefulWidget {
//   const Earnings({Key? key}) : super(key: key);

//   @override
//   State<Earnings> createState() => _EarningsState();
// }

// class _EarningsState extends State<Earnings> {
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: screenBody(
//         size,
//         children: [
//           subText('All your recent deliveries will populate below:'),
//           const Divider(thickness: 0.45),
//           addVertical(10),
//           SizedBox(
//             height: size.height,
//             child: ListView.separated(
//               itemBuilder: (context, index) {
//                 return EarningsCard();
//               },
//               separatorBuilder: (context, index) => addVertical(7),
//               itemCount: 5,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
