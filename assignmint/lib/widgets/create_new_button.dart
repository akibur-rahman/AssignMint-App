import 'package:flutter/material.dart';

class CreateNewButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CreateNewButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(Icons.add, color: Colors.white),
      label: Text(
        'Create New',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF15803d),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      ),
    );
  }
}
