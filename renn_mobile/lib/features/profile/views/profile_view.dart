import 'package:flutter/material.dart';
import 'package:renn_mobile/features/profile/views/stats_view.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/images/profile.png", width: 200, height: 200),
          Text(
            "Derk Blom",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.4,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on, color: Colors.green[600]),
              Text(
                "Amsterdam, Netherlands",
                style: TextStyle(color: Colors.green[600]),
              ),
            ],
          ),
          StatsView(),
        ],
      ),
    );
  }
}
