import 'package:flutter/material.dart';
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
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.list, size: 30,),
          ),
        ],
      ),
    );
  }
}