import 'package:ecommerce2/circular_container.dart';
import 'package:ecommerce2/colors.dart';
import 'package:ecommerce2/curved_edge_widget.dart';
import 'package:flutter/material.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,required this.child,
  });

final Widget child;
  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
      child: Container(
        color: TColors.primaryColor,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          
          child: Stack(
            children: [
              Positioned(
                top: -70,
                right: -150,
                child: TCircular_container(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -200,
                child: TCircular_container(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                ),
              ),
               child,
            ],
          ),
        ),
      ),
    );
  }
}
