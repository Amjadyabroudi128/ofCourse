import 'package:flutter/material.dart';
import 'package:ofcourse/core/appIcons.dart';
import 'package:ofcourse/core/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.appBar,
        centerTitle: true,
        title: Text("Profile"),
        actions: [
          Padding(
            padding: const .only(right: 10),
            child: MyIcons.myList
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("CV"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: (){},
                        child: Text("Upload CV"),
                      ),
                      Spacer(),
                      MyIcons.forward
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}