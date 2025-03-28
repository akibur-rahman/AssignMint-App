import 'package:assignmint/models/assignment_preview_model.dart';
import 'package:assignmint/utils/theme/theme.dart';
import 'package:assignmint/widgets/assignment_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<AssignmentPreview> assignmentPreviews = [
    AssignmentPreview(
      id: 1,
      title: 'Mathematics Quiz - Calculus',
      date: '2024-02-15',
    ),
    AssignmentPreview(
      id: 2,
      title: 'English Literature Essay',
      date: '2024-02-14',
    ),
    AssignmentPreview(id: 3, title: 'Physics Problem Set', date: '2024-02-13'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffdcfce7),
        title: Text("My Assignments", style: AppTheme.HeadingTextStyle),
      ),
      body:
          assignmentPreviews.isEmpty
              ? Center(
                child: Text(
                  "No Assignments yet!",
                  style: AppTheme.HeadingTextStyle,
                ),
              )
              : Padding(
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                  itemCount: assignmentPreviews.length,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 250,
                    mainAxisExtent: 180,
                    crossAxisSpacing: 6,
                    mainAxisSpacing: 6,
                  ),
                  itemBuilder: (context, index) {
                    return AssignmentCard(
                      assignment: assignmentPreviews[index],
                      onTap: (id) {
                        // Function that receives the id and does something with it
                        print('Assignment tapped with ID: $id');
                        // Add your navigation or other actions here
                      },
                    );
                  },
                ),
              ),
    );
  }
}
