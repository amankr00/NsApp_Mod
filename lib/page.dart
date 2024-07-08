import 'package:flutter/material.dart';

class Lot extends StatelessWidget {
  Lot({super.key});

  final List<Map<String, String>> lay = [
    {
      'text': '1',
      'title': 'Progress',
      'description': 'Revolutionizing travel planning: Our app simplifies booking.'
    },
    {
      'text': '2',
      'title': 'Murder',
      'description': 'Revolutionizing travel planning: Our app simplifies booking.'
    },
    {
      'text': '3',
      'title': 'Kill',
      'description': 'Revolutionizing travel planning: Our app simplifies booking.'
    },
  ];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: lay.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lay[index]['text'] ?? '',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                lay[index]['title'] ?? '',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Text(
                lay[index]['description'] ?? '',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        );
      },
    );
  }
}