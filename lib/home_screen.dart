import 'dart:async';
import 'dart:io';

import 'package:desi_foods/drawer.dart';
import 'package:desi_foods/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  WebViewController control;

  double _progresss = 0.0;
  bool _finished = false;
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (await control.canGoBack()) {
          control.goBack();
          return Future.value(false);
        } else {
          return Future.value(true);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Home Of Desi Foodz",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.orange,
        ),
        body: Container(
          child: Stack(
            children: [
              WebView(
                initialUrl: 'https://homeofdesifoodz.com/',
                javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: (WebViewController webViewController) {
                  _controller.future.then((value) => control = value);
                  _controller.complete(webViewController);
                },
                onPageStarted: (url) {},
                onPageFinished: (url) {
                  setState(() {
                    _finished = true;
                  });
                },
                onProgress: (progress) {
                  setState(() {
                    _progresss = _progresss;
                  });
                },
                onWebResourceError: (error) {
                  Utils.showToast(
                      title:
                          "Some error occured. Please check your connection and try again.");
                },
              ),
              !_finished
                  ? Center(
                      child: _progresss == 0
                          ? CircularProgressIndicator(
                              color: Colors.deepOrange,
                            )
                          : SizedBox(),
                    )
                  : SizedBox(),
            ],
          ),
        ),
        drawer: NavDrawer(),
      ),
    );
  }
}
