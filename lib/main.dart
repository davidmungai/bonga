import 'package:bongaapp/pages/call_screen.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  // Ensure Flutter is able to communicate with Plugins
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Stream video and set the API key along with the user for our app.
  final client = StreamVideo('mmhfdzb5evj2',
      user: User.regular(userId: 'Darth_Vader', name: 'Test User'),
      userToken:
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL3Byb250by5nZXRzdHJlYW0uaW8iLCJzdWIiOiJ1c2VyL0RhcnRoX1ZhZGVyIiwidXNlcl9pZCI6IkRhcnRoX1ZhZGVyIiwidmFsaWRpdHlfaW5fc2Vjb25kcyI6NjA0ODAwLCJpYXQiOjE3MzcyODQwODMsImV4cCI6MTczNzg4ODg4M30.HxpKdR1NOQhMTbxd5JiFrTS2OENuKdT27pfXXeQZWog");

  // Set up our call object and pass it the call type and ID. The most common call type is `default`, which enables full audio and video transmission
  final call = client.makeCall(
      callType: StreamCallType.defaultType(), id: 'XRjn1pegjmNE');
  // Connect to the call we created
  await call.join();

  runApp(
    DemoAppHome(
      call: call,
    ),
  );
}

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: Scaffold(
  //       body: ListView(
  //         children: [
  //           // Load a Lottie file from your assets
  //           // Lottie.asset('assets/LottieLogo1.json'),

  //           // Load a Lottie file from a remote url
  //           Lottie.network(
  //               'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),

  //           // Load an animation and its images from a zip file
  //           // Lottie.asset('assets/lottiefiles/angel.zip'),
  //         ],
  //       ),
  //     ),
  //   );
  // }
// }

// import 'package:bongaapp/pages/login.dart';
// import 'package:bongaapp/pages/splash_page.dart';
// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';

// Future<void> main() async {
//   await dotenv.load(fileName: "assets/.env", mergeWith: {
//     'TEST_VAR': '5',
//   });
//   final supabaseUrl = dotenv.get('SUPABASE_URL', fallback: 'test');
//   final supabaseAnonKey = dotenv.get('SUPABASE_ANON_KEY', fallback: 'test');

//   await Supabase.initialize(url: supabaseUrl, anonKey: supabaseAnonKey);

//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       routes: {
//         '/': (context) => SplashPage(),
//         '/details': (context) => DetailScreen(),
//       },
//     );
//   }

//   // @override
//   // Widget build(BuildContext context) {
//   //   return MaterialApp(
//   //     home: Scaffold(
//   //       body: ListView(
//   //         children: [
//   //           // Load a Lottie file from your assets
//   //           // Lottie.asset('assets/LottieLogo1.json'),

//   //           // Load a Lottie file from a remote url
//   //           Lottie.network(
//   //               'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),

//   //           // Load an animation and its images from a zip file
//   //           // Lottie.asset('assets/lottiefiles/angel.zip'),
//   //         ],
//   //       ),
//   //     ),
//   //   );
//   // }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: FloatingActionButton(
//           child: Text('View Details'),
//           onPressed: () {
//             Navigator.pushNamed(
//               context,
//               '/details',
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class DetailScreen extends StatelessWidget {
//   const DetailScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: FloatingActionButton(
//           child: Text('Pop!'),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//     );
//   }
// }
