import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double borderRadius;
  final Color buttonColor;
  final IconData customIcon;
  final double elevation;
  final double height;
  final Color iconColor;
  final double iconSize;
  final Color imageBackgroundColor;
  final EdgeInsetsGeometry imageMargin;
  final EdgeInsetsGeometry imagePadding;
  final double imageSize;
  final Function()? onPressed;
  final String setAssetImage;
  final Color splashColor;
  final String text;
  final Color textColor;
  final bool useGoogleImage;
  final bool useGradient;
  final Gradient setGradient;
  final double width;

  const CustomButton({
    this.borderRadius = 5,
    this.buttonColor = const Color(0xFFEEEEEE),
    this.customIcon = Icons.new_releases_rounded,
    this.elevation = 0,
    this.height = 40,
    this.iconColor = Colors.grey,
    this.iconSize = 25,
    this.imageBackgroundColor = Colors.transparent,
    this.imageMargin = const EdgeInsets.all(4),
    this.imagePadding = const EdgeInsets.all(4),
    this.imageSize = 25,
    Key? key,
    this.onPressed,
    this.setAssetImage = '',
    this.splashColor = Colors.transparent,
    this.text = 'New Button',
    this.textColor = Colors.black87,
    this.useGoogleImage = false,
    this.useGradient = false,
    this.setGradient = const LinearGradient(colors: [Colors.grey, Colors.grey]),
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: !useGradient
          ? BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(borderRadius))
          : BoxDecoration(
              gradient: setGradient,
              borderRadius: BorderRadius.circular(borderRadius)),
      child: MaterialButton(
        padding: EdgeInsets.only(left: 0),
        splashColor: splashColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Row(
          children: [
            Container(
                color: imageBackgroundColor,
                padding: imagePadding,
                margin: imageMargin,
                child: Container(
                  alignment: Alignment.topLeft,
                  child: useGoogleImage
                      ? Image(
                          image: AssetImage('assets/google.png'),
                          height: imageSize,
                        )
                      : setAssetImage.isNotEmpty
                          ? Image(
                              image: AssetImage(setAssetImage),
                              height: imageSize,
                            )
                          : Icon(
                              customIcon,
                              color: iconColor,
                              size: iconSize,
                            ),
                )),
            Expanded(
              child: Center(
                child: Text(text,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: textColor,
                    )),
              ),
            ),
          ],
        ),
        onPressed: onPressed ?? () {},
      ),
    );
  }
}
