import 'package:flutter/material.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart';

class DemoAppHome extends StatelessWidget {
  const DemoAppHome({super.key, required this.call});
  final Call call;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: StreamCallContainer(
        // Stream's pre-made component
        call: call,
      ),
    ));
  }
}
