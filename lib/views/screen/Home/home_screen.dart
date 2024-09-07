import 'package:flutter/material.dart';
import 'package:jobless/views/base/bottom_menu..dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomMenu(0),
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Scaffold(
       
      ),
    );
  }
}
