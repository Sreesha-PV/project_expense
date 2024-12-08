// import 'package:expense_manager/screens/stats/chart.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';

// class StatScreen extends StatelessWidget {
//   const StatScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Padding(
//         padding:  const EdgeInsets.symmetric(
//           horizontal: 25,vertical:10
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'Transaction',
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold
//               ),
//             ),
//             const SizedBox(height: 20,),
//             Container(
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.width,
//               // color:Colors.red ,
//               child: const MyChart()
             
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:expense_manager/screens/home/stats/chart.dart';
// import 'package:expense_manager/screens/stats/chart.dart';
// import 'package:expense_manager/screens/home/stats/chart.dart';
import 'package:expense_manager/screens/stats/chart.dart';
// import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StatScreen extends StatelessWidget {
  const StatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:  const EdgeInsets.symmetric(
          horizontal: 25,vertical:10
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Transaction',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                // color: Colors.white12,
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: MyChart(),
              )
             
            )
          ],
        ),
      ),
    );
  }
}

