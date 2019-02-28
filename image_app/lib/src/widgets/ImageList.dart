import 'package:flutter/material.dart';

import '../models/ImageModel.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);
  @override
  Widget build(BuildContext context) {
    return Container(
      // child: Image.network(),
    );
  }
}