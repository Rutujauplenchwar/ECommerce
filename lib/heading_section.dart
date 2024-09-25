import 'package:flutter/material.dart';
class TSectionHeading extends StatelessWidget {
 const TSectionHeading({
    super.key, required this.headingText,  this.buttonTitle = 'View All', this.textColor,  this.showActionButton = true,  this.onPressed,
  });

  final String headingText , buttonTitle;
  final Color? textColor;
  final bool showActionButton ;
  final void Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment : MainAxisAlignment.spaceBetween,
      children: [
        Text(headingText,style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor),maxLines: 1,overflow: TextOverflow.ellipsis,),
        if(showActionButton) TextButton(onPressed: onPressed,child:  Text(buttonTitle)),
      ],
    );
  }
}

