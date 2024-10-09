import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    // Map company = ModalRoute.of(context).settings.arguments;
    final Map<String, dynamic>? company =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    return Scaffold(
      appBar: AppBar(
        title: const Text('เกี่ยวกับเรา'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Durbell"),
            //  Text(company['email']),
            //  Text(company['phone']),
            const Divider(
              height: 20,
            ),
            if (company != null) ...[
              Text('Email: ${company['email']}'),
              Text('Tel: ${company['phone']}'),
            ] else ...[
              const Text('ไม่มีข้อมูลบริษัท'),
            ],

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'About Page...');
              },
              child: const Text('กลับหน้าหลัก'),
            ),
            const SizedBox(
              width: 5,
              height: 5,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'homestack/contact');
              },
              child: const Text('ติดค่อเรา'),
            ),
            const SizedBox(
              width: 5,
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
