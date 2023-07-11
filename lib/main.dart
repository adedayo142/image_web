import 'package:flutter/material.dart';
import 'package:image_web/cached_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CachedImage(),
    );
  }
}

class ImageFromWeb extends StatelessWidget {
  const ImageFromWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var url = 'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg';
    return Scaffold(
        body: Center(
            child:

            Image.network(
      url,
      // frameBuilder: (context, child, _, wasSynchronouslyLoaded) {
      //   if (wasSynchronouslyLoaded) return child;

      //   return const Text("Loading....");
      // },

      loadingBuilder: (context, child, loadingProgress) {
        var percentage = 0.0;
        final total = loadingProgress!.expectedTotalBytes;
        // if (total != null) {
        //   final current = loadingProgress.cumulativeBytesLoaded;
        //   percentage = current / total;
        // }
        if (loadingProgress == null) {
          return child;
        }
        return  Center(
          child: CircularProgressIndicator(value: percentage,),
        );
      },
    ),
    ));
  }
}
