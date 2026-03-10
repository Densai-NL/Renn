import 'package:flutter/material.dart';

class RecapTime extends StatelessWidget {
  const RecapTime({super.key});

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
                Text("Time", style: TextStyle(color: Colors.grey[400])),
                Text(
                  "40h 12m",
                  style: TextStyle(
                    color: Colors.green[400],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("active", style: TextStyle(color: Colors.grey[400])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
