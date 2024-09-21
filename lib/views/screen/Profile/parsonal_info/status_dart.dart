import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/style.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  var status = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            title: Text('job status category show',
                style: AppStyles.customSize(
                  size: 16,
                  fontWeight: FontWeight.w500,
                  family: "Schuyler",
                )),
            trailing: Transform.scale(
              scale: 0.8, // Reduce the size of the Switch
              child: Switch(
                value: status,
                onChanged: (bool value) {
                  status = value;
                  setState(() {

                  });
                },
              ),
            ))
      ],
    );
  }
}
