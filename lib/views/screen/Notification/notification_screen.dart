import 'package:flutter/material.dart';
import 'package:jobless/views/base/bottom_menu..dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomMenu(1),
     appBar:  AppBar(
        title: Text("Notification"),
      ),
    );
  }
}
