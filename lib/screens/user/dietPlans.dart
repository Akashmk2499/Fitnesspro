import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DietPlans extends StatefulWidget {
  const DietPlans({super.key});

  @override
  State<DietPlans> createState() => _DietPlansState();
}

class _DietPlansState extends State<DietPlans> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diet Plans'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Action on search button pressed
                    },
                    icon: Icon(Icons.search),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 3, // Change this according to your data
                itemBuilder: (context, index) {
                  return ExpansionTile(
                    title: Text('Item $index'),
                    children: [
                      // Add your content here
                      ListTile(
                        title: Text('Subitem 1'),
                      ),
                     ElevatedButton(onPressed: (){}, child: Text('Download')),
                     SizedBox(height: 5,)
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
