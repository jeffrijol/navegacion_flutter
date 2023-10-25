import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         AspectRatio(
           aspectRatio: 4,
           child: SizedBox(
             width: double.infinity,
             child: GridView.builder(
               itemCount: 4,
               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 4),
               itemBuilder: (context, index) {
                 return const Box();
               },
             ),
           ),
         ),

         // list of previous days
         Expanded(
           child: ListView.builder(
             itemCount: 6,
             itemBuilder: (context, index) {
               return const Tile();
             },
           ),
         ),
      ],
    );
  }
}
