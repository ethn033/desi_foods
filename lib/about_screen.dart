import 'dart:async';
import 'dart:io';

import 'package:desi_foods/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AbourScreen extends StatefulWidget {
  const AbourScreen({Key key}) : super(key: key);

  @override
  _AbourScreenState createState() => _AbourScreenState();
}

class _AbourScreenState extends State<AbourScreen> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "About Us",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: WebView(
          initialUrl: 'https://homeofdesifoodz.com/about/',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
          onPageStarted: (url) {},
          onPageFinished: (url) {},
          onProgress: (progress) {
            setState(() {});
          },
          onWebResourceError: (error) {
            Utils.showToast(
                title:
                    "Some error occured. Please check your connection and try again.");
          },
        ),
      ),
    );
  }
}
