import 'package:assignmint/utils/theme/theme.dart';
import 'package:assignmint/widgets/green_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
              child: CachedNetworkImage(
                imageUrl:
                    'https://marketplace.canva.com/EAFHfL_zPBk/1/0/1600w/canva-yellow-inspiration-modern-instagram-profile-picture-kpZhUIzCx_w.jpg',
                height: 180,
                width: 180,
                fit: BoxFit.cover,
                placeholder:
                    (context, url) => CircularProgressIndicator(
                      color: Color.fromARGB(255, 97, 228, 143),
                    ),
                errorWidget: (context, url, error) => Icon(Icons.error),
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
          SizedBox(height: 15),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.white,
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            '23',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Assignments',
                            style: TextStyle(
                              color: Color.fromARGB(255, 43, 211, 105),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '156',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Questions',
                            style: TextStyle(
                              color: Color.fromARGB(255, 43, 211, 105),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '89%',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Accuracy',
                            style: TextStyle(
                              color: Color.fromARGB(255, 43, 211, 105),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
