import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyFormField extends StatefulWidget {
  MyFormField(
      {Key? key,
      required this.labelText,
      required this.control,
      required this.errorText})
      : super(key: key);

  String labelText;
  TextEditingController control;
  String? errorText;

  @override
  State<MyFormField> createState() => _MyFormFieldState();
}

class _MyFormFieldState extends State<MyFormField> {
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        keyboardType: widget.labelText == 'Banners since last appearance'
            ? TextInputType.number
            : null,
        inputFormatters: widget.labelText == 'Banners since last appearance'
            ? [FilteringTextInputFormatter.digitsOnly]
            : null,
        controller: widget.control,
        decoration: InputDecoration(
          errorText: widget.errorText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          contentPadding: EdgeInsets.all(16),
          labelText: widget.labelText,
          suffixIcon: IconButton(
            onPressed: widget.control.clear,
            icon: const Icon(Icons.cancel_outlined),
          ),
        ),
      ),
    );
  }
}
