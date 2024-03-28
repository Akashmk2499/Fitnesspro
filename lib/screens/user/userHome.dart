import 'package:fitnessproadv/customwidgets/customeContainer.dart';
import 'package:fitnessproadv/main.dart';
import 'package:fitnessproadv/profile.dart';
import 'package:fitnessproadv/screens/user/ViewTrainer.dart';
import 'package:fitnessproadv/screens/user/choosePlan.dart';
import 'package:fitnessproadv/screens/user/complaintReply.dart';
import 'package:fitnessproadv/screens/user/feedbac.dart';
import 'package:fitnessproadv/screens/user/viewVideos.dart';
import 'package:fitnessproadv/screens/user/worcoutChallenges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserHome extends StatelessWidget {
  const UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: ListTile(
                  title: Text('Profile'),
                  leading: CircleAvatar(),
                  subtitle: Text('trainer'),
                  trailing: IconButton(
                    onPressed: () {
                      // profile
                      navigation(context, ProfileScreen());
                    },
                    icon: Icon(Icons.arrow_forward_ios_sharp),
                  )),
            ),
              ListTile(
                title: Text('Subscription Plans'),
               leading: Image.asset('asets/icon/crown.png',height: 20,width: 20,),
                onTap: () {
                   navigation(context, ChoosePlan());
                }),
            ListTile(
                title: Text('Feedback'),
                leading: Icon(Icons.feedback),
                onTap: () {
                   navigation(context, FeedbacScreen());
                }),
            ListTile(
                title: Text('Complaints'),
                leading: Image.asset('asets/icon/complain.png',height: 20,width: 20,),
                onTap: () {
                   navigation(context, ComplaintReplayScreen());
                }),
                ListTile(
                title: Text('Logout'),
                leading: Icon(Icons.logout_rounded),
                onTap: () {
                  //  navigation(context, ComplaintReplayScreen());
                }),
          
          
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Fitness Pro',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        
      ),
      body: Container(
         decoration: BoxDecoration(image: DecorationImage(image: AssetImage('asets/images/ieyrh.jpg'),fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  children: [
                    CustomeContainer(
                      image: AssetImage('asets/images/ieyrh.jpg'),
                      text: 'Trainer',
                      icon: Icons.home,
                      ontap: () {
                        navigation(context, ViewTrainers());
                      },
                    ),
                    CustomeContainer(
                      image: AssetImage('asets/images/ieyrh.jpg'),
                      text: 'Videos',
                      icon: Icons.video_collection_sharp,
                      ontap: () {
                        navigation(context, ViewVideos());
                      },
                    ),
                    CustomeContainer(
                      image: AssetImage('asets/images/ieyrh.jpg'),
                      text: 'Challenges',
                      icon: Icons.home,
                      ontap: () {
                        navigation(context, WorkoutChallenges());
                      },
                    ),
                    CustomeContainer(
                      image: AssetImage('asets/images/ieyrh.jpg'),
                      text: 'Physiotherapy',
                      icon: Icons.home,
                      ontap: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
