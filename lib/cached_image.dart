import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      
      imageUrl: 'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
      placeholder: (context, url) => CircularProgressIndicator(),
      errorWidget: (context, url, error) => Icon(Icons.error),
    );
  }
}