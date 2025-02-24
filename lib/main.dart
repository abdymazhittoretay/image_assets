import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        surfaceTintColor: Colors.white,
        title: Text("Images"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Image.network(
              "https://images.unsplash.com/photo-1727467082310-095b43d11449?q=80&w=2574&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            ),
            Image.asset("images/image-1.jpg"),
            Image.asset("images/image-2.jpg"),
            Image.asset("images/image-3.jpg"),
          ],
        ),
      ),
    );
  }
}
