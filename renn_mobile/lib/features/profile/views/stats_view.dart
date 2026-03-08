import 'package:flutter/material.dart';
import 'package:renn_mobile/features/profile/views/prev_activity_view.dart';

class StatsView extends StatelessWidget {
  const StatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2,
                child: Column(children: [Text("Distance")]),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                child: Column(children: [Text("Time")]),
              ),
            ],
          ),
          Text("Last activities"),
          Expanded(
            child: ListView.builder(
              // physics: ScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 20,
              itemBuilder: (context, index) => PrevActivityView(),
              shrinkWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
