import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WishlistScreen extends StatefulWidget {
  @override
  _WishlistScreenState createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  List<String> wishlistItems = [
    'Flutter Course',
    'Python Course',
    'C# Course',
    'JavaScript Course',
    'HTML Course',
  ];

  void removeItem(int index) {
    setState(() {
      wishlistItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
          backgroundColor: const Color(0xFF2B3086),
          centerTitle: true,
          title: Text(
            'Wishlist',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          ),
      body: wishlistItems.isEmpty
          ? const Center(
              child: Text(
                'No items in your wishlist!',
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              itemCount: wishlistItems.length,
              itemBuilder: (context, index) {
                return Card(
                  color: const Color(0xFF2B3086),
                  margin: const EdgeInsets.all(16.0),
                  child: ListTile(
                    title: Text(
                      wishlistItems[index],
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.remove_circle),
                      color: Colors.red,
                      onPressed: () => removeItem(index),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
