import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
            // first 4 boxes in grid
            AspectRatio(
              aspectRatio: 1,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return const Box(url: 'https://dhb3yazwboecu.cloudfront.net/429//PRODUCTO/10014_L.jpg');
                  },
                ),
              ),
            ),

            // list of previous days
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const Tile();
                },
              ),
            ),
      ],
    );
  }
}
