import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  String selectedPage = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('หน้าหลัก'),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                setState(() {
                  selectedPage = 'หน้าหลัก';
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('สินค้า'),
              onTap: () {
                setState(() {
                  selectedPage = 'สินค้า';
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                setState(() {
                  selectedPage = 'Settings';
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
