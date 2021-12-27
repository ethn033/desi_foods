import 'dart:async';
import 'dart:io';

import 'package:desi_foods/drawer.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  double _progresss = 0.0;
  bool _finished = false;
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home of Desi Foodz",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            !_finished
                ? LinearProgressIndicator(
                    value: _progresss,
                  )
                : SizedBox(),
            Expanded(
              child: WebView(
                initialUrl: 'https://homeofdesifoodz.com/',
                javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: (WebViewController webViewController) {
                  _controller.complete(webViewController);
                },
                onPageStarted: (url) {
                  print('started loading $url');
                },
                onPageFinished: (url) {
                  print('finished loading $url');
                  setState(() {
                    _finished = true;
                  });
                },
                onProgress: (progress) {
                  setState(() {
                    _progresss = _progresss;
                  });
                  print('progress $progress');
                },
                onWebResourceError: (error) {
                  print(error.toString());
                },
              ),
            ),
          ],
        ),
      ),
      drawer: NavDrawer(),
    );
  }
}
