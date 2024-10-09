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
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Text(
                'DB',
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
              selected:
                  ModalRoute.of(context)!.settings.name == 'homestack/home'
                      ? true
                      : false,
              onTap: () {
                setState(() {
                  selectedPage = 'หน้าหลัก';
                  Navigator.of(context, rootNavigator: true)
                      .pushNamedAndRemoveUntil(
                          '/', (Route<dynamic> route) => false);
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('สินค้า'),
              trailing: const Icon(Icons.arrow_right),
              selected: ModalRoute.of(context)!.settings.name ==
                      'productstack/product'
                  ? true
                  : false,
              onTap: () {
                setState(() {
                  selectedPage = 'สินค้า';
                  Navigator.of(context, rootNavigator: true)
                      .pushNamedAndRemoveUntil(
                          '/productstack', (Route<dynamic> route) => false);
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
