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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover),
        ),
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'homestack/company');
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.white70,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.business, size: 80, color: Colors.purple),
                    Text('บริษัท', style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.white70,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.map, size: 80, color: Colors.purple),
                  Text('แผนที่', style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.white70,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.camera, size: 80, color: Colors.purple),
                  Text('กล้อง', style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
            GestureDetector(
              onTap: () async {
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
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.white70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.person, size: 80, color: Colors.purple),
                    Text('เกี่ยวกับ ${fromAbout ?? ''}',
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 20)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
