import 'package:flutter/material.dart';

class DialogClass {
  String dialogTitle;
  List<Widget> dialogContent, dialogActions;
  DialogClass({this.dialogTitle, this.dialogContent, this.dialogActions});

  Future<void> showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(dialogTitle != null ? dialogTitle : ""),
          content: SingleChildScrollView(
            child: ListBody(
              children: dialogContent != null ? dialogContent : [],
            ),
          ),
          actions: [
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void hihdeMyDialog(BuildContext context) {
    Navigator.of(context).pop();
  }
}
