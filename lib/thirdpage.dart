import 'package:flutter/material.dart';
import 'package:lab8_129/secondpage.dart';

class Thirdpage extends StatefulWidget {
  const Thirdpage({super.key, required this.ch, required this.name});
  final String ch;
  final String name;
  @override
  State<Thirdpage> createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ThirdPage 126"),
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("This is Third Page"),
          Text(widget.ch),
          Text(widget.name),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              child: const Text('Go Back.'),
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Seconepage(),
                  ),
                );
              },
            ),
          ),
          ],
      )),
    );
  }
}