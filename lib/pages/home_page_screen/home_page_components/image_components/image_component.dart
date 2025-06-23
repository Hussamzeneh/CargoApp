import 'package:flutter/cupertino.dart';

class ImageComponent extends StatelessWidget {
  const ImageComponent({super.key,required this.url});

  final String url;
  @override
  Widget build(BuildContext context) {
    return Image.network(url);
  }
}
