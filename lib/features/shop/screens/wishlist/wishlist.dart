import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/icons/t_circular_icons.dart';
import 'package:t_store/common/widgets/layout/grid_layout.dart';
import 'package:t_store/common/widgets/products/product_carts/product_cart_vertical.dart';
import 'package:t_store/features/shop/screens/home/home.dart';
import 'package:t_store/utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(const HomeScreen()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsGeometry.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                itemCount: 6,
                itemBuilder: (_, index) => const TProductCartVertical(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
