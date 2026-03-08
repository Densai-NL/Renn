import 'package:flutter/material.dart';

class LiveActivityView extends StatefulWidget {
  const LiveActivityView({super.key});

  @override
  State<LiveActivityView> createState() => _LiveActivityViewState();
}

class _LiveActivityViewState extends State<LiveActivityView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton.icon(
          onPressed: () {},
          label: Text("Start"),
          icon: Icon(Icons.play_arrow),
        ),
      ],
    );
  }
}
