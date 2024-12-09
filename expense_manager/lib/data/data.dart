tertainment// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Map<String,dynamic>> transactionData=[
  {
    'icon':const Icon(Icons.food_bank,color:Colors.white),
    'color':Colors.yellow[700],
    'name':'Food',
    'totalAmount':'-\$45.00',
    'date':'Today'
      },
  {
    'icon':const Icon(Icons.shopping_bag,color:Colors.white),
    'name':'Shopping',
    'color':Colors.purple,
    'totalAmount':'-\$230.00',
    'date':'Today'
    },
  
  {
    'icon':const Icon(Icons.movie,color:Colors.white),
    'name':'Entertainment',
    'color':Colors.green,
    'totalAmount':'-\$230.00',
    'date':'Yesterday'
    },
     {
    'icon':const Icon(Icons.flight,color:Colors.white),
    'name':'Travel',
    'color':Colors.green,
    'totalAmount':'-\$230.00',
    'date':'Yesterday'
    },
  {
    'icon':const Icon(Icons.home,color:Colors.white),
    'name':'Home Rent',
    'color':Colors.yellow,
    'totalAmount':'-\$350.00',
    'date':'Yesterday'
    },

  {
    'icon':const Icon(Icons.mobile_friendly,color:Colors.white),
    'name':'Recharge',
    'color':Colors.green,
    'totalAmount':'-\$100.00',
    'date':'Yesterday'
    },
 
];
