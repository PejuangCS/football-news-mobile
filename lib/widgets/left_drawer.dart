import 'package:flutter/material.dart';
import 'package:football_news/screens/menu.dart';
import 'package:football_news/screens/newslist_form.dart';

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
                  'Football News',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30  ,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Seluruh berita sepak bola terkini di sini!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                  // TODO: Tambahkan gaya teks dengan center alignment, font ukuran 15, warna putih, dan weight biasa
                ),
              ],
            ),
            // TODO: Bagian drawer header
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.post_add),
            title: const Text('Add News'),
            // Bagian redirection ke MoodEntryFormPage
            onTap: () {
              /*
              TODO: Buatlah routing ke NewsFormPage di sini,
              setelah halaman MoodEntryFormPage sudah dibuat.
              */
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NewsFormPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.newspaper),
            title: const Text('See Football News'),
            // Bagian redirection ke MoodEntryFormPage
            onTap: () {
              /*
              TODO: Buatlah routing ke NewsFormPage di sini,
              setelah halaman MoodEntryFormPage sudah dibuat.
              */
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NewsFormPage(),
                ),
              );
            },
          ),  // TODO: Bagian routing
        ],
      ),
    );
  }
}