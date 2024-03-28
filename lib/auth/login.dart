import 'package:fitnessproadv/customwidgets/textfeild.dart';
import 'package:fitnessproadv/auth/forgotpassword.dart';
import 'package:fitnessproadv/auth/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final ValueNotifier<bool> obsecure = ValueNotifier(true);
  final ValueNotifier<bool> Check=ValueNotifier(true);
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          key: formkey,
          child: Container(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('asets/images/loginbg.jpg'),fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Welcome',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
                  const SizedBox(
                    height: 20,
                  ),
                  customtextfeild(
                    prefixicon: const Icon(Icons.person,color: Colors.white,),
                    labelText:Text( "Username",style: TextStyle(color: Colors.white)),
                    labelstyle:  TextStyle(color: Colors.white),
                    controller: usernameController,
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return "please enter";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ValueListenableBuilder(
                    valueListenable: obsecure,
                    builder: (context, value, child) {
                      return customtextfeild(
                        prefixicon: const Icon(Icons.key_outlined,color: Colors.white,),
                        labelText: Text("Password",style: TextStyle(color: Colors.white),),
                        labelstyle:  TextStyle(color: Colors.white),
                        controller: passwordController,
                        obscuretext: obsecure.value,
                        suffixicon: IconButton(
                          icon: obsecure.value
                              ? const Icon(Icons.visibility_off,color: Colors.white)
                              : const Icon(Icons.visibility,color: Colors.white),
                          onPressed: () {
                            obsecure.value = !obsecure.value;
                            print(obsecure.value);
                          },
                        ),
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return "invalid";
                          } else if (value.toString().length < 8) {
                            return "password must be 8 digit";
                          }
                          return null;
                        },
                      );
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Row(children: [
                      ValueListenableBuilder(valueListenable: Check, builder: (context,value,child){
                        return 
                        Checkbox(value:Check.value , onChanged: (value){
                      Check.value = !Check.value;
                            print(Check.value);
                     },);
                      }),
                       
                      Text("Remember me?",style: TextStyle(color: Color.fromARGB(255, 253, 198, 0))),],),
                     
                      TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) =>ForgotPassword()));
                      }, child: Text("Forgot Password?",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))))
                    ],
                  ),
                  Container(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () {
                            if (formkey.currentState!.validate()) {
                              print(usernameController.text);
                              print(passwordController.text);
                            }
                          },
                          child: const Text("Login"))),
                          SizedBox(
                    height: 20,),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              Row(children:[
                                Text("Dont have an account?",style: TextStyle(color: Color(0xFFDADAD8))),],),
                              TextButton(onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder:(context) => signup()));
                              }, child: Text("Signup",style: TextStyle(color: Color.fromARGB(248, 251, 226, 1)))) 
                              ],)
                ],
              ),
            ),
          ),
          
        ));
  }
}
