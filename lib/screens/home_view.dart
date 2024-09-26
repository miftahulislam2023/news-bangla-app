import 'package:flutter/material.dart';
import 'package:newsbangla/res/all_json.dart';
import 'package:newsbangla/widgets/newspaper_title.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "NewsBangla - Bangladeshi Newspapers",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white, // AppBar text color
          ),
        ),
        backgroundColor: Color(0xFF43A09D),
        actions: [
          IconButton(
            icon: const Icon(Icons.info, color: Colors.white),
            onPressed: () {
              // Navigate to the About screen when the info icon is pressed
              Navigator.pushNamed(context, "/about");
            },
          ),
        ],
      ),

      body: Container(
        padding: const EdgeInsets.all(15),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1.5,
          ),
          itemCount: banglaNewspapers.length,
          itemBuilder: (context, index) {
            var newspaper = banglaNewspapers[index];
            return GestureDetector(
              child: NewspaperTitle(newspaper: newspaper),
              onTap: () {
                Navigator.pushNamed(context, "/news-view", arguments: {
                  "index": index,
                });
              },
            );
          },
        ),
      ),
    );
  }
}
