library test_create_package;

import 'package:flutter/material.dart';

class CustomAlertBox {
  static Future showCustomAlertBox({
    @required BuildContext context,
    @required Widget willDisplayWidget,
    @required Widget buttonCloseWidget
  }) {
    assert(context != null, "context is null!!");
    assert(willDisplayWidget != null, "willDisplayWidget is null!!");
    assert(buttonCloseWidget != null, "buttonCloseWidget is null!!");
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                willDisplayWidget,
                buttonCloseWidget
              ],
            ),
            elevation: 10,
          );
        });
  }
}
