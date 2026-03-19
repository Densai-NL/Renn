import 'package:flutter/material.dart';
import 'package:here_sdk/core.dart';
import 'package:here_sdk/mapview.dart';

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
        // SizedBox(
        //   width: size.width,
        //   height: size.height,
        //   child: Image.asset("assets/images/map.png", fit: BoxFit.cover),
        // ),
        HereMap(onMapCreated: _onMapCreated),
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

  void _onMapCreated(HereMapController hereMapController) {
    // The camera can be configured before or after a scene is loaded.
    const double distanceToEarthInMeters = 8000;
    MapMeasure mapMeasureZoom = MapMeasure(
      MapMeasureKind.distanceInMeters,
      distanceToEarthInMeters,
    );
    hereMapController.camera.lookAtPointWithMeasure(
      GeoCoordinates(52.530932, 13.384915),
      mapMeasureZoom,
    );

    // Load the map scene using a map scheme to render the map with.
    hereMapController.mapScene.loadSceneForMapScheme(MapScheme.normalDay, (
      MapError? error,
    ) {
      if (error != null) {
        print('Map scene not loaded. MapError: ${error.toString()}');
      }
    });
  }
}
