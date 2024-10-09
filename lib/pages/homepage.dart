import 'package:dbflutter/widget/munu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  dynamic fromAbout; //dynamic

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Menu(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Dev'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'from about page is ${fromAbout ?? ''}', // กำหนดหาก fromAbout เป็น null ให้แสดงค่าว่าง
            ),
            ElevatedButton(
              onPressed: () async {
                fromAbout = await Navigator.pushNamed(
                    context, 'homestack/about',
                    arguments: {
                      'email': "porntep@gmail.com",
                      'phone': "1234567890",
                    });
                setState(() {
                  fromAbout = fromAbout;
                });
              },
              child: const Text('เกี่ยวกับเรา'),
            ),
          ],
        ),
      ),
    );
  }
}
