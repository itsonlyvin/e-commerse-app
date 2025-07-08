import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            TPrimaryHeaderContainer(
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
                    TSectionHeading(
                      title: 'Popular Categories',
                      showActionButton: false,
                      textColor: TColors.white,
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    /// Categories
                    THomeCategories()
                  ],
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
