import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
    required this.hintText,
    required this.textFieldController,
    this.validator,
    this.isSecured = false,
  });

  final String label;
  final String hintText;
  final TextEditingController textFieldController;
  final String? Function(String?)? validator;
  final bool isSecured;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: TextFormField(
        obscureText: isSecured,
        keyboardType: TextInputType.number,
        controller: textFieldController,
        validator: validator,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          focusedErrorBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          disabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          errorBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }
}
