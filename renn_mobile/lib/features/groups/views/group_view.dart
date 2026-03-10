import 'package:flutter/material.dart';
import 'package:renn_mobile/features/groups/views/activity_dropdown.dart';
import 'package:renn_mobile/features/groups/views/meetup_list.dart';

class GroupView extends StatefulWidget {
  const GroupView({super.key});

  @override
  State<GroupView> createState() => _GroupViewState();
}

class _GroupViewState extends State<GroupView> {
  final activityTypes = [
    ("Running", Icons.directions_run),
    ("Walking", Icons.directions_walk),
    ("Cycling", Icons.directions_bike),
    ("Hiking", Icons.hiking),
  ];

  final durationOptions = [
    ("15 min", null),
    ("30 min", null),
    ("45 min", null),
    ("1 hour", null),
    ("1.5 hours", null),
    ("2 hours", null),
    ("2 hours+", null),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            spacing: 8.0,
            children: [
              ActivityDropdown(options: activityTypes, hint: "Activity"),
              ActivityDropdown(options: durationOptions, hint: "Duration"),
            ],
          ),
        ),
        Divider(thickness: 0.1),
        Expanded(child: MeetupList()),
      ],
    );
  }
}
