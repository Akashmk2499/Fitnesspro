import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorkoutChallenges extends StatelessWidget {
   WorkoutChallenges({Key? key});
  final ValueNotifier<bool> read=ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Challenges'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Text('10'), // Icon for Challenges tab
                text: 'Challenges',
              ),
              Tab(
                icon: Text('10'), // Icon for Tasks tab
                text: 'Tasks',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Widget for Challenges tab
            buildChallenges(context, read),
            // Widget for Tasks tab
            buildTasks(context),
          ],
        ),
      ),
    );
  }
}

Widget buildChallenges(BuildContext context, ValueNotifier<bool> read) {
  return Expanded(
    child: ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                
                children: [
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.black12,
                    child: Container(
                      
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.play_circle_outline_outlined),
                    ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('title'),
                  ValueListenableBuilder<bool>(
                    valueListenable: read,
                    builder: (context, value, child) {
                      return Checkbox(
                        value: value,
                        onChanged: (val) {
                          read.value = val!;
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      },
    ),
  );
}

Widget buildTasks(BuildContext context) {
  return Expanded(
    child: ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              title: Text('title'),
              subtitle: Text('Description'),
            ),
          ],
        );
      },
    ),
  );
}
