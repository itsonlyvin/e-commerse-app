import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/widgets/layout/grid_layout.dart';
import 'package:t_store/common/widgets/products/product_carts/product_cart_vertical.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:t_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Appbar
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// Searchbar
                  TSearchContainer(
                    text: "Search in Store",
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// Categories
                  Column(
                    children: [
                      /// Heading
                      Padding(
                        padding: EdgeInsets.only(
                            left: TSizes.defaultSpace,
                            right: TSizes.defaultSpace),
                        child: TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      /// Categories
                      THomeCategories()
                    ],
                  ),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsetsGeometry.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// PromoSlider
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 691ceadda5fb589dce69ec0d731e143a1465419a
                  /// Header
                  TSectionHeading(
                    title: 'Popular Categories',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

<<<<<<< HEAD
=======
=======
>>>>>>> 6f7d14eae90a1d0c9dd5991e1892531d2874be6c
>>>>>>> 691ceadda5fb589dce69ec0d731e143a1465419a
                  /// Popular Products
                  TGridLayout(
                    itemCount: 6,
                    itemBuilder: (_, index) => const TProductCartVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
