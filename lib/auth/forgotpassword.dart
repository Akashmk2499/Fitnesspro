import 'package:fitnessproadv/customwidgets/textfeild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
   ForgotPassword({super.key});
  TextEditingController forgotpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ 
         SizedBox(
                height: 20,
              ),
              customtextfeild(
                // prefixicon: const Icon(Icons.person),
                labelText: "Email",
                controller: forgotpasswordController,
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return "please enter";
                  }
                  return null;
                },
              ),
 SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: (){
                

              }, child:Text("Submit")),
             
              
      ],) ,
    );
  }
}