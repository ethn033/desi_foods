import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:package_info/package_info.dart';
import 'package:share/share.dart';

class Utils {
  static Future<PackageInfo> getPackageName() async {
    PackageInfo pck = await PackageInfo.fromPlatform();
    return pck;
  }

  static shareText(String text) {
    Share.share(text);
  }

  static Widget getTitileTextForDialogue(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 3.0, bottom: 8.0),
      child: Text(
        title,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }

  static Widget getSubTitileTextForDialogue(String title) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5.0,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  static Widget getParaTextForDialogue(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 8.0),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 11,
        ),
      ),
    );
  }

  static showToast(
      {@required String title,
      ToastGravity gravity,
      Color color,
      Toast length}) {
    Fluttertoast.showToast(
        msg: title,
        toastLength: length,
        gravity: gravity,
        timeInSecForIosWeb: 1,
        backgroundColor: color,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  //confirm dialogue
  static Future<bool> showConfirmationDialog(
      BuildContext context, String action) {
    return showDialog<bool>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Do you want to $action?'),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'Yes',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              onPressed: () {
                Navigator.pop(context, true); // showDialog() returns true
              },
            ),
            TextButton(
              child: const Text('No'),
              onPressed: () {
                Navigator.pop(context, false); // showDialog() returns false
              },
            ),
          ],
        );
      },
    );
  }
}
