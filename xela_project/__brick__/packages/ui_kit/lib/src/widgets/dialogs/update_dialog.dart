import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class UiUpdateDialog extends StatelessWidget {
  const UiUpdateDialog({super.key, this.canClose = true});

  final bool canClose;

  static Future<T?> showCurrentDialog<T>(BuildContext context, dynamic params) {
    const defaultCanClose = true;

    final canClose = (params is bool) ? params : defaultCanClose;

    return showDialog<T>(
      context: context,
      barrierDismissible: canClose,
      builder: (BuildContext context) {
        return UiUpdateDialog(canClose: canClose);
      },
    );
  }

  void onPressedUpdate() {
    // print('GO UPDATE');
  }

  @override
  Widget build(BuildContext context) {
    return UiCommonDialog(
      title: 'Нужно обновиться',
      body: <Widget>[
        UiCommonDialog.description(
          context,
          canClose ? 'Можно обновиться' : 'Необходимо обновиться',
        ),
      ],
      button: ElevatedButton(
        onPressed: onPressedUpdate,
        child: const Text('Обновиться'),
      ),
    );
  }
}
