import 'package:flutter/material.dart';
 class Homepage extends StatefulWidget {
   const Homepage({super.key});

   @override
   State<Homepage> createState() => _HomepageState();
 }

 class _HomepageState extends State<Homepage> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         leading: IconButton(
           icon: Icon(Icons.add_circle_outline), // Leading icon
           onPressed: () {
             // Handle menu icon tap
           },
         ),

         title: Row(
           children: [
             Padding(
               padding: const EdgeInsets.all(80.0),
               child: Image.asset(
                 'assets/images/skenu-app 1 (1).png', // Image asset
                 height: 30,
               ),
             ),
             // Title text
           ],
         ),
         actions: [
           IconButton(
             icon: Icon(Icons.send), // Action icon
             onPressed: () {
               // Handle search icon tap
             },
           ),
         ],
       ),
       body:Container(
          child: SingleChildScrollView(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(

                   children: [
                     CircleAvatar(
                       radius: 35, // Radius of the circle
                       backgroundImage: AssetImage('assets/images/girl5 1.png'), // Image asset
                     ),
                     SizedBox(width: 5),
                     CircleAvatar(
                       radius: 35, // Radius of the circle
                       backgroundImage: AssetImage('assets/images/girl5 1 (1).png'), // Image asset
                     ),
                     SizedBox(width: 5),
                     CircleAvatar(
                       radius: 35, // Radius of the circle
                       backgroundImage: AssetImage('assets/images/girl5 1 (2).png'), // Image asset
                     ),
                     SizedBox(width: 5),
                     CircleAvatar(
                       radius: 35, // Radius of the circle
                       backgroundImage: AssetImage('assets/images/girl5 1 (3).png'), // Image asset
                     ),
                    // assets/images/girl5 1 (3).png
                   ],
               ),
                 ),
         Container(
           height: 350.0,
           width: 350.0,
           decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage(
                   'assets/images/girl5 1 (5).png'),
               fit: BoxFit.fill,
             ),)),
             ],
           ),
         ),
       ),
     );
   }
 }
