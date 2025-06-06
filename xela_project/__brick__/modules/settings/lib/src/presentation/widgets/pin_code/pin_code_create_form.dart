import 'package:flutter/material.dart';
import 'package:settings/src/_src.dart';

class PinCodeCreateForm extends StatefulWidget {
  const PinCodeCreateForm({
    required this.isConfirm,
    super.key,
    this.message,
    this.pinCodeLength = 4,
    this.onComplete,
  });

  final bool isConfirm;

  final String? message;

  final int pinCodeLength;

  final void Function(String)? onComplete;

  @override
  State<PinCodeCreateForm> createState() => _PinCodeCreateFormState();
}

class _PinCodeCreateFormState extends State<PinCodeCreateForm> {
  String code = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: PinCodeHeader(
            hasPinCode: false,
            hasTemporaryCode: widget.isConfirm,
            hasError: false,
            pinCodeLength: widget.pinCodeLength,
            pinFilledCodeLength: code.length,
            isLoading: false,
          ),
        ),
        Text(
          widget.message ?? '',
          style: const TextStyle(color: Colors.red),
        ),
        Expanded(
          flex: 2,
          child: PinCodeKeyboard(
            useBiometric: false,
            onPressedNumber: onPressedNumber,
            onReset: onPressedReset,
            onDelete: onPressedDelete,
            reset: 'reset',
            delete: 'delete',
          ),
        ),
      ],
    );
  }

  void onPressedNumber(String text) {
    setState(() {
      code = '$code$text';
    });
    if (code.length == widget.pinCodeLength) {
      widget.onComplete?.call(code);
    }
  }

  void onPressedDelete() {
    setState(() {
      code = code.substring(0, code.length - 1);
    });
  }

  void onPressedReset() {
    setState(() {
      code = '';
    });
  }
}
