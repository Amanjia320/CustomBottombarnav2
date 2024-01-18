import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  Items({super.key});

  final List<String> names = [
    'Wasil Khan',
    'Aman Khan',
    'Wahid Khan',
    'Ali',
    'Kamran',
    'Imran Khan',
    'Arshad Ali',
    'Noman',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return Text(names[index]);
        });
  }
}
