import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChoosePlan extends StatefulWidget {
  const ChoosePlan({super.key});

  @override
  State<ChoosePlan> createState() => _ChoosePlanState();
}

class _ChoosePlanState extends State<ChoosePlan> {
  bool premium=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Choose the plan that\'s right for you',textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          premium=false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color:premium?Colors.black12: Colors.orange),
                            borderRadius: BorderRadius.circular(10)),
                        height: 100,
                        width: 100,
                        child: Center(
                          child: Text('Standard'),
                        ),
                      ),
                    ),
                     InkWell(
                      onTap: (){
                        setState(() {
                          premium=true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color:premium? Colors.orange:Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        height: 100,
                        width: 100,
                        child: Center(
                          child: Text('Premium'),
                        ),
                      ),
                    ),
                  ],
                ),
            
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                   decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange),
                            borderRadius: BorderRadius.circular(10)),
                    child:Column(children: [
                     ListTile(title: Text('Monthly Price'),trailing: Text(premium?'₹499':'₹299'),),
                     Divider(),
                      ListTile(title: Text('Workout videos'),trailing:Icon(Icons.check,color: Colors.green,),),
                       ListTile(title: Text('Personal Diet Plans'),trailing:Icon(Icons.check,color: Colors.green,),),
                       ListTile(title: Text('Workout Challenges'),trailing:Icon(Icons.check,color: Colors.green,),),
                       ListTile(title: Text('Chat Support'),trailing:Icon(Icons.check,color: Colors.green,),),
                      premium?  ListTile(title: Text('Physiotherapy'),trailing:Icon(Icons.check,color: Colors.green,),):SizedBox(),
                    ],) ,
                  ),
                ),
                Align(alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20,right: 30),
                    child: ElevatedButton(onPressed: (){}, child: Text('Continue')),
                  )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
