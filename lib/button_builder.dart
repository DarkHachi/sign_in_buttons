// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors
import 'package:flutter/material.dart';

class CustomSignInButton extends StatelessWidget {
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
  final double iconLeftPadding;
  final double iconTopPadding;
  final double imageSize;
  final bool mini;
  final Function()? onPressed;
  final AssetImage setAssetImage;
  final Color splashColor;
  final String text;
  final Color textColor;
  final bool useGoogleImage;
  final bool useGradient;
  final Gradient setGradient;
  final double width;

  const CustomSignInButton({
    this.borderRadius = 5,
    this.buttonColor = const Color(0xFFEEEEEE),
    this.customIcon = Icons.new_releases_rounded,
    this.elevation = 0,
    this.height = 40,
    this.iconColor = Colors.grey,
    this.iconSize = 24,
    this.imageBackgroundColor = Colors.transparent,
    this.imageMargin = const EdgeInsets.all(4),
    this.imagePadding = const EdgeInsets.all(4),
    this.iconLeftPadding = 0,
    this.iconTopPadding = 0,
    this.imageSize = 25,
    Key? key,
    this.mini = false,
    this.onPressed,
    this.setAssetImage = const AssetImage(''),
    this.splashColor = Colors.white,
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
      height: mini ? 40 : height,
      width: mini ? 40 : width,
      decoration: !useGradient
          ? BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(borderRadius))
          : BoxDecoration(
              gradient: setGradient,
              borderRadius: BorderRadius.circular(borderRadius)),
      child: MaterialButton(
        padding: EdgeInsets.only(left: iconLeftPadding, top: iconTopPadding),
        splashColor: splashColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                color: imageBackgroundColor,
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                padding: imagePadding,
                margin: imageMargin,
                child: Container(
                  alignment: Alignment.topLeft,
                  child: useGoogleImage
                      ? Image(
                          image: AssetImage('assets/google.png'),
                          height: imageSize,
                        )
                      : setAssetImage.assetName.isNotEmpty
                          ? Image(
                              image: setAssetImage,
                              height: imageSize,
                            )
                          : Icon(
                              customIcon,
                              color: iconColor,
                              size: iconSize,
                            ),
                )),
            mini
                ? SizedBox()
                : 
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
