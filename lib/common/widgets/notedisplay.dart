import 'package:flutter/material.dart';

class NoteDisplay extends StatelessWidget {
  final String note;
  final NetworkImage? networkImage;
  const NoteDisplay({super.key, required this.note, this.networkImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(15),
      ),
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          note,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 18.0, color: Colors.black87),
        ),
      ),
    );
  }
}
