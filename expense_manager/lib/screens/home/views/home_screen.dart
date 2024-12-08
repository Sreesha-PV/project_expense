// import 'dart:math';

// import 'package:expense_manager/screens/home/views/main_screen.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(),
//       bottomNavigationBar:ClipRRect(
//         borderRadius: const BorderRadius.vertical(
//           top: Radius.circular(30)
//         ),
     
//       child:BottomNavigationBar(
//         backgroundColor: const Color.fromARGB(255, 190, 186, 186),
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         elevation: 3,
//         items:const[
//           BottomNavigationBarItem(
//             icon: Icon(CupertinoIcons.home),
//             label: 'home'),
//           BottomNavigationBarItem(
//           icon: Icon(CupertinoIcons.graph_square_fill),
//           label: 'Stats')
//         ]
//       ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){},
//         shape: const CircleBorder(),
//         child:Container(
//           width: 60,
//           height: 60,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             gradient: LinearGradient(
//               colors: [
//               Theme.of(context).colorScheme.tertiary,
//               Theme.of(context).colorScheme.secondary,
//               Theme.of(context).colorScheme.primary,
//             ],
//             transform: const GradientRotation(pi /4)
//             )
//           ),
//         child:const Icon(CupertinoIcons.add) ),
//       ),
//       body: const MainScreen(),
//     );
// }
// }



// import 'dart:ffi';
import 'dart:math';
// import 'package:expense_manager/screens/home/views/add_screen.dart';
// import 'package:expense_manager/screens/home/views/add_screen1.dart';
import 'package:expense_manager/screens/add_expense/views/add_expense.dart';
import 'package:expense_manager/screens/home/views/main_screen.dart';
import 'package:expense_manager/screens/stats/statics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

    var widgetList=[
      const MainScreen(),
      const StatScreen(),
    ];

    int index=0;
    late Color selectedItem=Colors.blue;
    Color unselectedItem=Colors.grey;

  @override

  // Void initStaate(){
  //   selectedItem=Theme.of(context).colorScheme.primary;
  //   super.initState();
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomNavigationBar(
           onTap: (value) {
            setState(() {
              index=value;
            });
            //  print('value');
           },
            // backgroundColor: const Color.fromARGB(255, 240, 236, 236),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 3,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home,
                  color: index==0?selectedItem:unselectedItem,
                  ), 
                  label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.graph_square_fill,
                  color: index==1?selectedItem:unselectedItem,
                  
                  ), label: 'Stats')
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.of(context)
          //     .push(MaterialPageRoute(builder: (context) => const AddScreen()));
          Navigator.push(context,
          MaterialPageRoute<void>(
            builder: (BuildContext context)=>const AddExpense(),
            ),
          );
        },
        shape: const CircleBorder(),
        child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Theme.of(context).colorScheme.tertiary,
                  Theme.of(context).colorScheme.secondary,
                  Theme.of(context).colorScheme.primary,
                ], transform: const GradientRotation(pi / 4))),
            child: const Icon(CupertinoIcons.add)),
      ),
      body: index==0
            ?const MainScreen():const StatScreen()
    );
  }
}
