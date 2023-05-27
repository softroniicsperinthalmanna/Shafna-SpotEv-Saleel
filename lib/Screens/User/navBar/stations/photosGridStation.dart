import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PhotosGridView extends StatelessWidget {
  const PhotosGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Column(
        children: [
          // Row(
          //   children: [
          //     Container(
          //       height: 150,
          //       width: 100,
          //       decoration: BoxDecoration(
          //         image: DecorationImage(
          //           image: AssetImage('assets/')
          //         )
          //       ),
          //     )
          //   ],
          // )
        ],
      ),
    );
  }
}
