import 'package:assignmint/models/assignment_preview_model.dart';
import 'package:flutter/material.dart';

class AssignmentCard extends StatelessWidget {
  final AssignmentPreview assignment;

  const AssignmentCard({required this.assignment, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.network(
              assignment.imageUrl,
              height: 160,
              fit: BoxFit.cover,
            ),
          ),

          // Content
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  assignment.title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF166534),
                  ),
                ),
                SizedBox(height: 8),

                // Details Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildDetailItem(Icons.assignment, assignment.subject),
                    _buildDetailItem(Icons.calendar_month, assignment.date),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailItem(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 16, color: Color(0xFF16A34A)),
        SizedBox(width: 6),
        Text(text, style: TextStyle(color: Color(0xFF4ADE80), fontSize: 14)),
      ],
    );
  }
}
