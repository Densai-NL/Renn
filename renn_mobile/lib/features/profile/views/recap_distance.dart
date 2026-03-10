import 'package:flutter/material.dart';

class RecapDistance extends StatelessWidget {
  const RecapDistance({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(color: const Color.fromARGB(255, 54, 97, 56)),
            color: const Color.fromARGB(255, 13, 58, 37),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text("Distance", style: TextStyle(color: Colors.grey[400])),
                Text("1,240.7", style: TextStyle(color: Colors.green[400])),
                Text("km", style: TextStyle(color: Colors.grey[400])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
