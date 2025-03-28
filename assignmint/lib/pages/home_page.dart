import 'package:assignmint/models/assignment_preview_model.dart';
import 'package:assignmint/widgets/assignment_card.dart';
import 'package:assignmint/widgets/create_new_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<AssignmentPreview> sampleAssignmentPreviews = [
    AssignmentPreview(
      id: 1,
      title: 'Mathematics Quiz - Calculus',
      subject: 'Mathematics',
      date: '2024-02-15',
      imageUrl:
          'https://images.unsplash.com/photo-1635070041078-e363dbe005cb?w=800&auto=format&fit=crop&q=60',
    ),
    AssignmentPreview(
      id: 2,
      title: 'English Literature Essay',
      subject: 'English',
      date: '2024-02-14',
      imageUrl:
          'https://images.unsplash.com/photo-1457369804613-52c61a468e7d?w=800&auto=format&fit=crop&q=60',
    ),
    AssignmentPreview(
      id: 3,
      title: 'Physics Problem Set',
      subject: 'Physics',
      date: '2024-02-13',
      imageUrl:
          'https://images.unsplash.com/photo-1636466497217-26a8cbeaf0aa?w=800&auto=format&fit=crop&q=60',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0fdf4),
      appBar: AppBar(
        backgroundColor: Color(0xffdcfce7),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My AssignmentPreviews",
              style: TextStyle(
                color: Color(0xff15803d),
                fontWeight: FontWeight.bold,
              ),
            ),
            CreateNewButton(onPressed: () {}),
          ],
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: sampleAssignmentPreviews.length,
        itemBuilder: (context, index) {
          final AssignmentPreview = sampleAssignmentPreviews[index];
          return AssignmentCard(assignment: AssignmentPreview);
        },
      ),
    );
  }
}
