import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomeContainer extends StatelessWidget {
  const CustomeContainer({super.key, this.icon, this.text, this.ontap, this.image});
  final icon;
  final text;
  final ontap;
  final image;
  @override
  Widget build(BuildContext context) {
    var medisqry = MediaQuery.of(context).size;
    return InkWell(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image:image,fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(79, 255, 255, 255)),
        height: medisqry.height / 7,
        width: medisqry.width / 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(icon,color: Colors.white,), Text(text,style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)],
        ),
        
      ),
    );
  }
}
