import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SkeltonComponent extends StatefulWidget {
  const SkeltonComponent({super.key});

  @override
  State<SkeltonComponent> createState() => _SkeltonComponentState();
}

class _SkeltonComponentState extends State<SkeltonComponent> {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        ));
  }
}
