import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:t_store/utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: SizedBox(
        height: 80,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return TVerticalImageText(
              image: TImages.shoeIcon,
              title: 'Shoes',
              onTap: () {},
            );
          },
        ),
      ),
    );
  }
}
