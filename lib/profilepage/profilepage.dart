import 'package:flutter/material.dart';
import 'package:ofcourse/components/SizeBox.dart';
import 'package:ofcourse/components/card.dart';
import 'package:ofcourse/core/appIcons.dart';
import 'package:ofcourse/core/colors.dart';
import 'package:ofcourse/core/textstyles.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: MyColors.appBar,
        centerTitle: true,
        title: Text("Profile"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: MyIcons.myList,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile avatar + name
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 12),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: MyColors.appBar,
                      child: Icon(Icons.person, size: 44, color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Your Name",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Complete your profile to improve matches",
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),

              Text("CV", style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey[600])),
              SizedBox(height: 6),
              MyCard(
                child: Row(
                  children: [
                    MyIcons.file,
                    SizedBox(width: 8),
                    TextButton(
                      onPressed: () {},
                      child: Text("Upload CV"),
                    ),
                    Spacer(),
                    MyIcons.forward,
                  ],
                ),
              ),

              SizedBox(height: 20),

              Text("Improve my job matches", style: MyStyles.matches),
              SizedBox(height: 6),
              MyCard(
                child: Padding(
                  padding: const .symmetric(vertical: 12),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            MyIcons.qualifications,
                            SizedBox(width: 8),
                            Text("My Qualifications", style: TextStyle(fontSize: 15)),
                            Spacer(),
                            MyIcons.forward,
                          ],
                        ),
                      ),
                      Divider(),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            MyIcons.tune,
                            MyBox(width: 8),
                            Text("My Preferences", style: TextStyle(fontSize: 15)),
                            Spacer(),
                            MyIcons.forward,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}