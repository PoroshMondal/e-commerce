import 'package:flutter/material.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,required this.child
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
          color: TColors.primary,
          padding: const EdgeInsets.all(0),

        // If [size.isFinite: is not true. in stack] error occurred
        // If stack is empty then the error occurred
        // as here is a child is used and stack is not empty, so the error is not occurred
          child: SizedBox(
            height: 400,
            //height: THelperFunctions.screenHeight() * 0.4,
            child: Container(
              color: TColors.primary,
              child: Stack(
                children: [
                  // Background custom shapes
                  Positioned(top: -250, right: -250, child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1),),),
                  Positioned(top: 100, right: -300,child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1),),),
                  child,
                ],
              ),
            )
          )
      ),
    );
  }
}
