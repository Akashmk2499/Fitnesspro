import 'package:flutter/material.dart';

class customtextfeild extends StatelessWidget {
  const customtextfeild({super.key, this.prefixicon,required this.labelText, this.controller, this.validator, this.suffixicon, this.obscuretext, this.labelstyle});
  final prefixicon;
  final labelText;
  final controller;
  final validator;
  final suffixicon;
  final obscuretext;
  final labelstyle;

  @override
  Widget build(BuildContext context) {
    return TextFormField(controller: controller,validator:validator ,obscureText:obscuretext??false ,
    
      decoration: InputDecoration(
        labelStyle: labelstyle,
      label: labelText,
      prefixIcon: prefixicon,
      suffixIcon: suffixicon,
      
      
      border: OutlineInputBorder(
        

    )),);
  }
}