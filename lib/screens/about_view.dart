import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  // Function to launch LinkedIn profile URL using the updated API
  Future<void> _launchLinkedIn() async {
    final Uri url = Uri.parse('https://www.linkedin.com/in/miftahulislambd');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  // Function to launch Facebook profile URL
  Future<void> _launchFacebook() async {
    final Uri url = Uri.parse('https://www.facebook.com/MiftahulIslam22');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: const Text(
          'About NewsBangla',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white
          ),
        ),
        backgroundColor: Color(0xFF43A09D),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title Section
            const Text(
              'Welcome to NewsBangla',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16),
            // Description Section
            const Text(
              'NewsBangla is your one-stop app for accessing all major Bangladeshi newspapers. '
                  'Stay updated with the latest news from a variety of sources, all in one place.',
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 30),
            // Connect with us
            const Text(
              'Connect with us:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16),
            // LinkedIn Button
            ElevatedButton.icon(
              onPressed: _launchLinkedIn,
              icon: const Icon(Icons.link, color: Colors.white),
              label: const Text(
                'Visit our LinkedIn Profile',
                style: TextStyle(fontSize: 18,
                color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Facebook Button
            ElevatedButton.icon(
              onPressed: _launchFacebook,
              icon: const Icon(Icons.facebook, color: Colors.white),
              label: const Text(
                'Visit our Facebook Profile',
                style: TextStyle(fontSize: 18,
                color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                backgroundColor: Colors.blue[800],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Footer Section (optional)
            const Text(
              'Thank you for using NewsBangla!',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
