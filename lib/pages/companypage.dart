import 'package:flutter/material.dart';

class CompanyPage extends StatefulWidget {
  const CompanyPage({super.key});

  @override
  State<CompanyPage> createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ข้อมูลบริษัท'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildHeader(),
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'บริษัท',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  const Divider(),
                  const Text(
                    '“ถ้าคุณเป็นคนยังไงก็ได้-อะไรก็ยอม คุณก็ต้องยอมไปเรื่อยๆ จนกลายเป็นคนที่มีชีวิตเพื่อคนอื่น จนลืมการมีชีวิตเพื่อตนเองในที่สุด”“กล้าที่จะพูดคำว่า ‘ไม่’ กับคนอื่นและยอมพูดคำว่า ‘ได้’ กับตัวเอง แน่นอนว่าการปฏิเสธจะทำให้คนอื่นไม่พอใจ แต่ไม่เป็นไรหรอก คนอื่นๆ จะค่อยๆ เรียนรู้ว่าเราไม่ใช่คนที่เขาจะใช้ทำอะไรก็ได้” เรียนรู้ที่จะใช้ชีวิตให้มีความสุขมากขึ้น ด้วยการเลิกเป็น People-please เลิกตามใจคนอื่นและหันมาฟังความรู้สึกตัวเองกันเถอะ! ให้ปีนี้และปีต่อๆ ไปเป็นปีของเรา ใช้ชีวิตเพื่อตัวเราเองอย่างแท้จริง',
                    textAlign: TextAlign.left,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.phone_android,
                            color: Colors.purple,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [Text('porntep jitraraksakul')],
                          ),
                          Row(
                            children: [Text('999999999')],
                          ),
                          Divider(),
                        ],
                      )
                    ],
                  ),
                  const Divider(),
                  buildwrap(),
                  const Divider(),
                  buildFooter()
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  Wrap buildwrap() {
    return Wrap(
      spacing: 8,
      children: List.generate(
        7,
        (index) => Chip(
          label: Text('text ${index + 1}'),
          avatar: const Icon(Icons.star),
          backgroundColor: Colors.purpleAccent,
        ),
      ),
    );
  }

  Image buildHeader() {
    return const Image(
      image: AssetImage('assets/images/building.png'),
      fit: BoxFit.cover,
    );
  }

  Row buildFooter() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(
            'assets/images/me.png',
          ),
          radius: 40,
        ),
        CircleAvatar(
          backgroundImage: AssetImage(
            'assets/images/me.png',
          ),
          radius: 40,
        ),
        CircleAvatar(
          backgroundImage: AssetImage(
            'assets/images/me.png',
          ),
          radius: 40,
        ),
        SizedBox(
          width: 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.account_balance),
              Icon(Icons.not_started),
              Icon(Icons.add_alarm_sharp),
            ],
          ),
        )
      ],
    );
  }
}
