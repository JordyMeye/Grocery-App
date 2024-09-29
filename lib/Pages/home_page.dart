import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../Components/grocery_item_tile.dart';
import '../Model/cart_model.dart';
import 'cart_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CartPage();
          }
          )
          ),
        backgroundColor: Colors.black,
        child: Icon(Icons.shopping_bag),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 48),

            // Good morning
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Good Morning,"),
            ),

            const SizedBox(height: 4),

            // Let's Order fresh items (with GoogleFonts and style fixed)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Let's Order some Fresh Items",
                style: GoogleFonts.merriweather(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 24),

            //divider
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Divider(),

            ),

            const SizedBox(height: 24),

           const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  "Fresh Items",
                  style: TextStyle(fontSize: 16)
                ),

            ),

            Expanded(
              child: Consumer<CartModel> (
                builder: (context, value, child) {
                  return GridView.builder(
                    itemCount: value.shopitems.length,
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                        childAspectRatio: 1/1.3,
                      ),
                    itemBuilder: (context, index) {
                        return GroceryItemTile(
                          itemName: value.shopitems[index][0],
                          itemPrice: value.shopitems[index][1],
                          imagePath: value.shopitems[index][2],
                          color: value.shopitems[index][3],
                          onPressed: () {
                            Provider.of<CartModel>(context , listen: false).addItemCart(index);
                          },
                        );
                    },
                  );
                },
            ),
            ),

          ],
        ),
      ),
    );
  }
}
