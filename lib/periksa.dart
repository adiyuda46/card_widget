import 'package:flutter/material.dart';

class periksa extends StatelessWidget {
  const periksa({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Row(children: [Icon(Icons.account_box), Text("di coba")]),
      ),
    );
  }
}
