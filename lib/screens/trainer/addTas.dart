import 'package:fitnessproadv/customwidgets/textfeild.dart';
import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
   AddTask({super.key});
  TextEditingController tasController=TextEditingController();
  TextEditingController description=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Add Task'),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
           customtextfeild(labelText: Text('Title'),controller:tasController ,),
           SizedBox(height: 5,),
           customtextfeild(labelText: Text('Description'),controller:description ,),
           SizedBox(height: 20,),
           ElevatedButton(onPressed: (){}, child: Text('Submit'))
        
            ],),
      ),);
  }
}