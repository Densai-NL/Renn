import 'package:flutter/material.dart';
import 'package:renn_mobile/features/profile/views/prev_activity_view.dart';
import 'package:renn_mobile/features/profile/views/recap_distance.dart';
import 'package:renn_mobile/features/profile/views/recap_time.dart';

class StatsView extends StatelessWidget {
  const StatsView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [RecapDistance(), RecapTime()],
            ),
          ),

          SizedBox(height: 12.0),
          Center(
            child: Text("Last activities", style: TextStyle(fontSize: 24)),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            // scrollDirection: Axis.vertical,
            itemCount: 20,
            itemBuilder: (context, index) => PrevActivityView(),
            shrinkWrap: true,
          ),
        ],
      ),
    );
  }
}
