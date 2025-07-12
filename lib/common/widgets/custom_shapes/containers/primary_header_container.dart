import 'package:flutter/cupertino.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_edges/curved_edges_widgets.dart';
import 'package:t_store/utils/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
    this.showDesignContainer = true,
  });
  final Widget child;
  final bool showDesignContainer;
  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
      child: Container(
        color: TColors.primary,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: showDesignContainer
                  ? TCircularContainer(
                      backgroundColor:
                          TColors.textWhite.withAlpha((255 * 0.1).toInt()),
                    )
                  : const SizedBox(),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: showDesignContainer
                  ? TCircularContainer(
                      backgroundColor:
                          TColors.textWhite.withAlpha((255 * 0.1).toInt()),
                    )
                  : const SizedBox(),
            ),
            child
          ],
        ),
      ),
    );
  }
}
