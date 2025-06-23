import 'package:bloceproject/pages/home_page_screen/home_page_components/image_components/image_component.dart';
import 'package:flutter/material.dart';

class ListImages extends StatelessWidget {
  const ListImages({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        //physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => ImageComponent(url: images[index]),
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemCount: images.length,
      ),
    );
  }
}
