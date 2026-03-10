import 'package:flutter/material.dart';

class PrevActivityView extends StatelessWidget {
  const PrevActivityView({super.key});

  IconData getRandomIcon() {
    final icons = [
      Icons.directions_run,
      Icons.directions_bike,
      Icons.directions_walk,
    ];
    return icons[DateTime.now().millisecondsSinceEpoch % icons.length];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: const Color.fromARGB(255, 54, 97, 56)),
        color: const Color.fromARGB(255, 13, 58, 37),
      ),
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Icon(getRandomIcon(), color: Colors.white, size: 24),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 8.0,
                children: [
                  Text("Yesterday", style: TextStyle(color: Colors.grey[500])),
                  Row(spacing: 8.0, children: [Text("10 km"), Text("1:30:00")]),
                ],
              ),
            ),
            SizedBox(
              // height: 80,
              width: 80,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset("assets/images/mini-map.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
