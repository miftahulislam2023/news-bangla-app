import 'package:flutter/material.dart';

class NewspaperTitle extends StatelessWidget {
  final Map<String, dynamic> newspaper;
  const NewspaperTitle({super.key, required this.newspaper,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
              image: NetworkImage(newspaper["logoUrl"])),
        ],
      ),
    );
  }
}
