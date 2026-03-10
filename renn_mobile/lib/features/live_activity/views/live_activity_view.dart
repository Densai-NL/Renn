import 'package:flutter/material.dart';

class LiveActivityView extends StatefulWidget {
  const LiveActivityView({super.key});

  @override
  State<LiveActivityView> createState() => _LiveActivityViewState();
}

class _LiveActivityViewState extends State<LiveActivityView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          width: size.width,
          height: size.height,
          child: Image.asset("assets/images/map.png", fit: BoxFit.cover),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                spacing: 8.0,
                children: [
                  SizedBox(
                    height: 50.0,
                    width: size.width,
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          const Color.fromARGB(255, 54, 97, 56),
                        ),
                      ),
                      onPressed: () {},
                      label: Text(
                        "Start recording",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      icon: Icon(
                        Icons.play_arrow,
                        size: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 50.0,
                    width: size.width,
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          const Color.fromARGB(255, 77, 134, 80),
                        ),
                      ),
                      onPressed: () {},
                      label: Text(
                        "Suggest route",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      icon: Icon(
                        Icons.lightbulb,
                        size: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
