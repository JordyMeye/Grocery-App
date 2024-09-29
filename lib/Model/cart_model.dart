import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {

  final List _shopitems = [
    ["Orange" , "10.99", "lib/Images/orange.jpg" , Colors.orange],
    ["tomato" , "20.99", "lib/Images/tomato.jpg" , Colors.red],
    ["water" , "5.99"  , "lib/Images/water.jpg" , Colors.blue],
    ["banana" , "10.99", "lib/Images/banana.jpg" , Colors.yellow]
  ];

  List _cartItems = [];

  get shopitems => _shopitems;

  get cartItems => _cartItems ;

  //Adding
void addItemCart(int index ){
  _cartItems.add(_shopitems[index]);
  notifyListeners();
}
//removing
void removeItemCart( int index){
  _cartItems.remove(index);
  notifyListeners();
}


//Calculate

String calculateTotal() {
  double totalPrice =0 ;
  for ( int i = 0 ; i<_cartItems.length ; i++) {
    totalPrice += double.parse(_cartItems[i][1]);
  }
  return totalPrice.toStringAsFixed(2);
  }
}


