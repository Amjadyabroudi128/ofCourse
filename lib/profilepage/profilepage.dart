import 'package:flutter/material.dart';
import 'package:ofcourse/components/card.dart';
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text("CV"),
                MyCard(
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
                SizedBox(height: 9,),

                Text("Improve my job matches"),
                SizedBox(height: 9,),
                MyCard(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          TextButton(
                            onPressed: (){},
                            child: Text("My Qualifications"),
                          ),
                          Spacer(),
                          MyIcons.forward
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}