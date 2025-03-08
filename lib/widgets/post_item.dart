import 'package:flutter/material.dart';
import '../models/post_model.dart';

class PostItem extends StatelessWidget {
  final PostModel post;

  const PostItem({required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(post.title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(post.body),
        leading: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Text(
            post.id.toString(),
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
