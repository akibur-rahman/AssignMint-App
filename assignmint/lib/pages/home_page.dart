import 'package:assignmint/models/assignment_preview_model.dart';
import 'package:assignmint/widgets/assignment_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<AssignmentPreview> AssignmentPreviews = [
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
        title: Text(
          "My Assignments",
          style: TextStyle(
            color: Color(0xff15803d),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body:
          AssignmentPreviews.isEmpty
              ? Center(
                child: Text(
                  "No Assignments yet!",
                  style: TextStyle(
                    color: Color(0xff15803d),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
              : ListView.builder(
                padding: EdgeInsets.all(16),
                itemCount: AssignmentPreviews.length,
                itemBuilder: (context, index) {
                  return AssignmentCard(assignment: AssignmentPreviews[index]);
                },
              ),
    );
  }
}
