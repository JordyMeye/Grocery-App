import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {

  final List _shopitems = [
    ["Orange" , "10.99", "lib.Images/orange.jpg" , Colors.orange],
    ["tomato" , "20.99", "lib.Images/tomato.jpg" , Colors.red],
    ["water" , "5.99", "lib.Images/water.jpg" , Colors.grey],
    ["banana" , "10.99", "lib.Images/banana.jpg" , Colors.yellow]
  ];

  get shopitems => _shopitems;
}