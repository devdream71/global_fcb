import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Function(String?)? onSaved;
  final String? labelText;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget? label;
  final double radius;
  final double? height;
  const CustomTextField({
    Key? key,
    this.controller,
    this.keyboardType,
    this.validator,
    this.obscureText = false,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.label,
    this.onSaved,
    this.radius = 5,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          validator: validator,
          obscureText: obscureText,
          onSaved: onSaved,
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: labelText,
            hintText: hintText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            label: label,
            labelStyle: TextStyle(color: Colors.black),
            hintStyle: TextStyle(color: Color(0xFF9A9A9A)),
          ),
        ),
      ),
    );
  }
}



 