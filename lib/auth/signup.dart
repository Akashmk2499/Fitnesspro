import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:fitnessproadv/customwidgets/textfeild.dart';
import 'package:fitnessproadv/auth/login.dart';
import 'package:fitnessproadv/auth/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';

class signup extends StatefulWidget {
  signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
File file=File(' No file choosen');

  final ValueNotifier<bool> obsecure = ValueNotifier(true);
   final ValueNotifier<bool> conformobsecure = ValueNotifier(true);

  final ValueNotifier<bool> Check = ValueNotifier(true);

  TextEditingController usernameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController genderController = TextEditingController();

  TextEditingController dobController = TextEditingController();

  TextEditingController placeController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController heightController = TextEditingController();

  TextEditingController weightController = TextEditingController();

  int? _radioVal;

  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Container(
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('asets/images/loginbg.jpg'),fit: BoxFit.cover)),
        
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // const Text('Welcome'),
                    const SizedBox(
                      height: 20,
                    ),
                    customtextfeild(
                      prefixicon: const Icon(Icons.person,color: Colors.white),
                      labelText: Text("Full Name",style: TextStyle(color: Colors.white),),
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
                    // customtextfeild(
                    // //   // prefixicon: const Icon(Icons.person),
                    //   labelText: "Gender",
                    //   controller: genderController,
                    //   // validator: (value) {
                    //     if (value.toString().isEmpty) {
                    //       return "please enter";
                    //     }
                    //     return null;
                    //   },
                      
                    // ),
                    const SizedBox(
                      height: 5,
                    ),
                   
                    Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Color.fromARGB(255, 41, 39, 39)),borderRadius: BorderRadius.circular(5)),
                
                      child: Column(
                        children: [
                           Align(
                      alignment: Alignment.topLeft,
                      child: Text('   Gender',style: TextStyle(color: Colors.white),)),
                          Row(
                          children: [
                          
                            Radio(
                              value: 0,
                              groupValue: _radioVal,
                              onChanged: ( value) {
                                if (value != null) {
                                  setState(() {
                                    _radioVal = value;
                                    print(_radioVal);
                                   
                                  });
                                }
                              },
                            ),
                            const Text('Male ',style: TextStyle(color: Colors.white),),
                            Radio(
                              value: 1,
                              groupValue: _radioVal,
                              onChanged: ( value) {
                                if (value != null) {
                                  setState(() {
                                    _radioVal = value;
                                    print(_radioVal);
                                  });
                                }
                              },
                            ),
                            const Text('Female ',style: TextStyle(color: Colors.white),),
                            Radio(
                              value: 2,
                              groupValue: _radioVal,
                              onChanged: ( value) {
                                if (value != null) {
                                  setState(() {
                                    _radioVal = value;
                                    print(_radioVal);
                                  });
                                }
                              },
                            ),
                            const Text('Others ',style: TextStyle(color: Colors.white),),
                            
                          ],
                               ),
                               
                        ],
                      ),
                    ),
                     SizedBox(
                      height: 15,),
                    customtextfeild(
                      prefixicon: IconButton(onPressed: ()async{
                        DateTime? newDateTime = await showRoundedDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(DateTime.now().year - 1),
                  lastDate: DateTime(DateTime.now().year + 1),
                  borderRadius: 16,
                );
                
                dobController.text=newDateTime.toString().substring(0,10);
                      }, icon: Icon(Icons.calendar_month_sharp,color: Colors.white,)),
                      labelText:  Text("DOB",style: TextStyle(color: Colors.white),),
                      controller: dobController,
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
                    customtextfeild(
                      // prefixicon: const Icon(Icons.person),
                      labelText:  Text("Place",style: TextStyle(color: Colors.white),),
                      controller: placeController,
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return "please enter";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    customtextfeild(
                      // prefixicon: const Icon(Icons.person),
                      labelText:  Text("Phone Number",style: TextStyle(color: Colors.white),),
                      controller: phoneController,
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return "please enter";
                        }
                        return null;
                      },
                    ),
                
                    const SizedBox(
                      height: 20,
                    ),
                    customtextfeild(
                      // prefixicon: const Icon(Icons.person),
                      labelText:  Text("Email",style: TextStyle(color: Colors.white),),
                      controller: emailController,
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return "please enter";
                        }
                        return null;
                      },
                    ),
                
                    const SizedBox(
                      height: 20,
                    ),
                    customtextfeild(
                      // prefixicon: const Icon(Icons.person),
                      labelText: Text("Height",style: TextStyle(color: Colors.white),),
                      controller: heightController,
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return "please enter";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    customtextfeild(
                      // prefixicon: const Icon(Icons.person),
                      labelText:  Text("Weight",style: TextStyle(color: Colors.white),),
                      controller: weightController,
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return "please enter";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // customtextfeild(
                    //   // prefixicon: const Icon(Icons.person),
                    //   labelText: "Choose file",
                    //   controller: usernameController,
                    //   validator: (value) {
                    //     if (value.toString().isEmpty) {
                    //       return "please enter";
                    //     }
                    //     return null;
                    //   },
                    // ),
                
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration:
                          BoxDecoration(border: Border.all(color: Color.fromARGB(255, 116, 113, 113)),borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            ElevatedButton(
                                onPressed: () async {
                                  FilePickerResult? result =
                                      await FilePicker.platform.pickFiles();
                
                                  if (result != null) {
                                     file = File(result.files.single.path!);
                                    print(file.path);
                                  } else {
                                    // User canceled the picker
                                  }
                                },
                                child: Text('choose')),
                            Text(file.path,style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      ),
                    ),
                
                    const SizedBox(
                      height: 15,
                    ),
                    ValueListenableBuilder(
                      valueListenable: obsecure,
                      builder: (context, value, child) {
                        return customtextfeild(
                          prefixicon: const Icon(Icons.key_outlined,color: Colors.white),
                          labelText: Text("Password",style: TextStyle(color: Colors.white),),
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
                        );
                      },
                    ),
                     const SizedBox(
                      height: 15,
                    ),
                    ValueListenableBuilder(
                      valueListenable: conformobsecure,
                      builder: (context, value, child) {
                        return customtextfeild(
                          prefixicon: const Icon(Icons.key_outlined,color: Colors.white),
                          labelText:Text("Confirm Password",style: TextStyle(color: Colors.white),),
                          controller: confirmpasswordController,
                          obscuretext: conformobsecure.value,
                          suffixicon: IconButton(
                            icon: conformobsecure.value
                                ? const Icon(Icons.visibility_off,color: Colors.white)
                                : const Icon(Icons.visibility,color: Colors.white),
                            onPressed: () {
                              conformobsecure.value = !conformobsecure.value;
                              print(conformobsecure.value);
                            },
                          ),
                        );
                      },
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Row(
                    //       children: [
                    //         ValueListenableBuilder(
                    //             valueListenable: Check,
                    //             builder: (context, value, child) {
                    //               return Checkbox(
                    //                 value: Check.value,
                    //                 onChanged: (value) {
                    //                   Check.value = !Check.value;
                    //                   print(Check.value);
                    //                 },
                    //               );
                    //             }),
                    //         // Text("Remember me?"),
                    //       ],
                    //     ),
                    //     // TextButton(onPressed: () {}, child: Text("Forgot password?"))
                    //   ],
                    // ),
                    SizedBox(
                      height: 10,
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
                            child: const Text("Signup"))),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text("Already have an account?",style: TextStyle(color: Colors.white),),
                          ],
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Login()));
                            },
                            child: Text("Login",style: TextStyle(color: Color.fromARGB(255, 254, 246, 2))))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
