import 'package:flutter/material.dart';

class GalleryItem extends StatelessWidget {
  const GalleryItem({super.key,
    required this.title,
    required this.builder,
  });

  final String title;
  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shadowColor: Colors.black,
      child: ListTile(
        title: Text(title),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: builder,
            ),
          );
        },
      ),
    );
  }
}