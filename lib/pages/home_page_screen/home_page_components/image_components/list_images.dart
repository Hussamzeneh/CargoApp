import 'package:bloceproject/pages/home_page_screen/home_page_components/image_components/image_component.dart';
import 'package:flutter/material.dart';

class ListImages extends StatelessWidget {
  const ListImages({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50 ,
      child: ListView.separated(scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) => ImageComponent(url: "https://cdn.prod.website-files.com/654366841809b5be271c8358/659efd7c0732620f1ac6a1d6_why_flutter_is_the_future_of_app_development%20(1).webp"),
          separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
          itemCount: 20),
    );
  }
}
