import 'package:flutter/material.dart';

class MeetupList extends StatelessWidget {
  const MeetupList({super.key});

  (IconData, String, bool) getActivityIcon() {
    final List<(IconData, String, bool)> options = [
      (Icons.directions_bike, "Cycling", false),
      (Icons.hiking, "Hiking", true),
      (Icons.directions_run, "Running", false),
      (Icons.directions_walk, "Walking", false),
    ];

    return options[DateTime.now().millisecondsSinceEpoch % options.length];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        var (randomIcon, randomActivity, isJoined) = getActivityIcon();
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(color: const Color.fromARGB(255, 54, 97, 56)),
            color: const Color.fromARGB(255, 13, 58, 37),
          ),
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 44,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset("assets/images/profile.png"),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Sarah Jenkins"),
                          Row(
                            spacing: 8.0,
                            children: [
                              Text(
                                "Morning trail run",
                                style: TextStyle(color: Colors.grey[500]),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromRGBO(26, 119, 68, 1),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            randomIcon,
                            color: const Color.fromRGBO(63, 236, 141, 1),
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            randomActivity,
                            style: TextStyle(
                              color: const Color.fromRGBO(63, 236, 141, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 180,
                    child: Image.asset(
                      "assets/images/mini-map.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 180,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withAlpha(180),
                          Colors.black.withAlpha(50),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: const Color.fromRGBO(63, 236, 141, 1),
                        ),
                        Text(
                          "Vondelpark, Amsterdam",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Start",
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                        Text("20:00"),
                      ],
                    ),
                    Container(width: 0.5, height: 40, color: Colors.grey),
                    Column(
                      children: [
                        Text("End", style: TextStyle(color: Colors.grey[500])),
                        Text("22:00"),
                      ],
                    ),
                    Container(width: 0.5, height: 40, color: Colors.grey),
                    Column(
                      children: [
                        Text(
                          "Distance",
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                        Text("8.3 km"),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  spacing: 8.0,
                  children: [
                    Expanded(
                      child: isJoined
                          ? ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(
                                  Colors.red,
                                ),
                              ),
                              child: Text(
                                "Leave Meetup",
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          : ElevatedButton(
                              onPressed: () {},
                              child: Text("Join Meetup"),
                            ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                            Color.fromARGB(255, 21, 94, 60),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Read more",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
