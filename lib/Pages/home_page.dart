import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Components/grocery_item_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

            Expanded(child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
              itemBuilder: (context, index){
              return GroceryItemTile(

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
