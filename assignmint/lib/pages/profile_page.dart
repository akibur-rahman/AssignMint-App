import 'package:assignmint/utils/theme/theme.dart';
import 'package:assignmint/widgets/green_elevated_button.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: AppTheme.HeadingTextStyle),
        backgroundColor: Color(0xffdcfce7),
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(90),
              child: Image.network(
                height: 180,
                width: 180,
                'https://ntrepidcorp.com/wp-content/uploads/2016/06/team-1.jpg',
              ),
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: Text(
              "Akibur Rahman",
              style: TextStyle(
                color: Color(0xff15803d),
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
          Center(
            child: Text(
              "me.akiburrahman@gmail.com",
              style: TextStyle(
                color: Color.fromARGB(255, 43, 211, 105),
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 15),
          Center(
            child: GreenElevatedButton(
              buttontext: 'Edit Profile',
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
