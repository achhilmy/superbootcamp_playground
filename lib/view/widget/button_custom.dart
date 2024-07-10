import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  const ButtonCustom({super.key, this.titleValue});

  final String? titleValue;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 45,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        child: Text(titleValue.toString()),
      ),
    );
  }
}
