import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class InputTextField extends StatelessWidget {
  const InputTextField({
    required this.hint,
    required this.controller,
    this.keybordType = TextInputType.text,
    this.obscureText = false,
    Key? key,
  }) : super(key: key);

  final String hint ;
  final TextInputType keybordType;
  final TextEditingController controller;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      expands: true,
      minLines: null,
      maxLines: null,
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        focusedBorder: border(),
        enabledBorder: border(),
        constraints: BoxConstraints(
          maxHeight: 60,
          maxWidth: double.infinity,
        ),
      ),
    );
  }
  OutlineInputBorder border({Color borderColor = Colors.grey}){
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: borderColor,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(10),
    );
  }
}