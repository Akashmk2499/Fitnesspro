import 'package:fitnessproadv/changePassword.dart';
import 'package:fitnessproadv/main.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile'),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
          CircleAvatar(radius: 30,),
          Text('Name'),
          SizedBox(height: 10,),
          
          
          Card(child: ListTile(leading: Text('Gender: '),title: Text('nameee'),)),
          Card(child: ListTile(leading: Text('DOB: '),title: Text('nameee'),)),
          Card(child: ListTile(leading: Text('Email: '),title: Text('nameee'),)),
          Card(child: ListTile(leading: Text('Phone: '),title: Text('nameee'),)),
          Card(child: ListTile(leading: Text('Height: '),title: Text('nameee'),)),
          Card(child: ListTile(leading: Text('Weight: '),title: Text('nameee'),)),
          Card(child: ListTile(title: Text('Change Password'),trailing: Icon(Icons.arrow_right),onTap: (){
            navigation(context, ChangePassword());
          },)),
              ],),
        ),
      ),);
  }
}