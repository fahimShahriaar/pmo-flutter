import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Agile Crafts PMO'),
          // backgroundColor: Colors.green[400],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  // begin: Alignment.topLeft,
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  // end: Alignment.bottomCenter,
                  colors: <Color>[
                    // Color(0xFF2d6a4f),
                    Color(0xFF40916c),
                    Color(0xFF52b788),
                    Color(0xFF74c69d),
                    // Color(0xFF95d5b2),
                  ]),
            ),
          ),
        ),
        body: const WebView(
          initialUrl: "https://pmo.agilecrafts.com/admin/",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
