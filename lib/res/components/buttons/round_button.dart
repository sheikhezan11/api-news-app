import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../colors/colors.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    super.key,
    this.textColor = AppColor.primaryWhiteColor,
    this.buttonColor = AppColor.mainBlueColor,
    required this.title,
    required this.onPressed,
    this.width = double.infinity,
    this.height = 50,
    this.loading = false,

});

  final bool loading;
  final String title;
  final double height, width;
  final VoidCallback onPressed;
  final Color textColor, buttonColor;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child:  Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: AppColor.mainBlueColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: loading ? Center(child: CircularProgressIndicator()
            ) : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text(title, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white, fontSize: 20)),),
            ),
          )
      ),
    );
  }
}
