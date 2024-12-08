// import 'package:flutter/cupertino.dart';
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
    'icon':const Icon(Icons.shopping_bag,color:Colors.white),
    'name':'Health',
    'color':Colors.green,
    'totalAmount':'-\$230.00',
    'date':'Yesterday'
    },
     {
    'icon':const Icon(Icons.flight,color:Colors.white),
    'name':'Travel',
    'color':Colors.blue,
    'totalAmount':'-\$230.00',
    'date':'Yesterday'
    },
];