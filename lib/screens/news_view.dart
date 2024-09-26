import 'package:flutter/material.dart';
import 'package:newsbangla/res/all_json.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsView extends StatefulWidget {
  const NewsView({super.key});

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  WebViewController? webViewController;
  late int index;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    index = args["index"];

    String rawUrl = banglaNewspapers[index]["website"];

    // Ensure the URL starts with a valid scheme
    if (!rawUrl.startsWith('http://') && !rawUrl.startsWith('https://')) {
      rawUrl = 'https://$rawUrl'; // Prepend https:// if no scheme is present
    }

    webViewController = WebViewController()
      ..loadRequest(Uri.parse(rawUrl)) // Use Uri.parse instead of Uri.https
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white
        ),
        backgroundColor: const Color(0xFF43A09D),
        title: Text(
          banglaNewspapers[index]["name"],
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white, // AppBar text color
          ),
        ),
      ),
      body: webViewController != null
          ? WebViewWidget(controller: webViewController!)
          : Container(),
    );
  }
}
