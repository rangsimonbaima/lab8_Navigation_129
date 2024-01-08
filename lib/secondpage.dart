import 'package:flutter/material.dart';
import 'package:lab8_129/thirdpage.dart';


class Seconepage extends StatefulWidget {
  const Seconepage({super.key});

  @override
  State<Seconepage> createState() => _MySeconepageState();
}

class _MySeconepageState extends State<Seconepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      appBar: AppBar(
        title: const Text("Secone page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("this is SECONE PAGE"),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("GO Back"),
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Thirdpage(
                  ch: "สวัสดีตอนเช้า",
                  name: "Rangsimon Baima 642021129",
                  )));
              },
              child: const Text("Go to Third Page"),
            ),]
        ),
      ),
      );
  }
}