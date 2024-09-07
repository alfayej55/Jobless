import 'package:flutter/material.dart';
import 'package:jobless/views/base/bottom_menu..dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomMenu(2),
      appBar: AppBar(
        title: Text("Message Screen"),
      ),
      body: Scaffold(

      ),
    );
  }
}
