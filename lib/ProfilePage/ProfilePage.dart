import 'package:flutter/material.dart';
import 'package:ofcourse/core/appIcons.dart';
import 'package:ofcourse/core/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myColors.appBar,
        centerTitle: true,
        title: Text("Profile"),
        actions: [
          Padding(
            padding: const .only(right: 10),
            child: myIcons.myList
          ),
        ],
      ),
    );
  }
}