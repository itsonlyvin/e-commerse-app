import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/brands/brand_show_case.dart';
import 'package:t_store/common/widgets/layout/grid_layout.dart';
import 'package:t_store/common/widgets/products/product_carts/product_cart_vertical.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TCatogoryTab extends StatelessWidget {
  const TCatogoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                /// Brands
                TBrandShowCase(
                  images: [
                    TImages.productImage3,
                    TImages.productImage2,
                    TImages.productImage1
                  ],
                ),
                TBrandShowCase(
                  images: [
                    TImages.productImage3,
                    TImages.productImage2,
                    TImages.productImage1
                  ],
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),

                /// Products
                TSectionHeading(
                  title: "You might like",
                  onPressed: () {},
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                TGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => TProductCartVertical(),
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
              ],
            ),
          ),
        ]);
  }
}
