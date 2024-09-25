import 'package:flutter/material.dart';
import 'package:ecommerce2/image_strings.dart';
import 'package:ecommerce2/vertical_image_text.dart';
class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return VerticalImageText(image:Timages.logo ,title : 'Shoes',onTap: (){});
        },
      ),
    );
  }
}

