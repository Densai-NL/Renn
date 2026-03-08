import 'package:flutter/material.dart';

class PrevActivityView extends StatelessWidget {
  const PrevActivityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Image.asset(
            "assets/images/running.png",
            errorBuilder: (context, error, stackTrace) =>
                Icon(Icons.run_circle),
            width: 50,
            height: 50,
          ),
          Column(children: [Text("10 km"), Text("1:30:00")]),
        ],
      ),
    );
  }
}
