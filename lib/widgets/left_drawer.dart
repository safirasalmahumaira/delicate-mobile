import 'package:flutter/material.dart';
import 'package:delicate_mobile/screens/menu.dart';
import 'package:delicate_mobile/screens/itementry_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'delicate',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "Snap, dan dapatkan segalanya!",
                  style: TextStyle(
                    fontSize: 15.0, // Ukuran font 15
                    color: Colors.white, // Warna putih
                    fontWeight: FontWeight.normal, // Weight biasa
                  ),
                  textAlign: TextAlign.center, // Center alignment
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: const Text('Tambah Item'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemEntryFormPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}