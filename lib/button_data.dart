
import 'package:flutter/material.dart';
import 'package:custom_signin_buttons/custom_signin_buttons.dart';

class SignInButton extends StatelessWidget {
  final Button button;
  final CustomButton customButton;
  final double borderRadius;
  final double height;
  final Function()? onPressed;
  final double width;

  SignInButton({
    this.button = Button.Google,
    this.customButton = const CustomButton(),
    this.borderRadius = 5,
    this.height = 40,
    Key? key,
    this.onPressed,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (button) {
      case Button.Apple:
      case Button.AppleDark:
      return CustomButton(
            key: ValueKey('Apple'),
            text: 'Iniciar sesion con Apple',
            height: height,
            width: width,
            borderRadius: borderRadius,
            imagePadding: EdgeInsets.only(left: 10),
            customIcon: FontAwesomeIcons.apple,
            buttonColor: button == Button.Apple ? Color(0xFFEEEEEE) :Color(0xFF222222),
            iconColor: button == Button.Apple ? Colors.black : Colors.white,
            textColor: button == Button.Apple ?Colors.black : Colors.white,
            onPressed: onPressed);
      case Button.Google:
      case Button.GoogleBlack:
      case Button.GoogleBlue:
        return CustomButton(
            key: ValueKey('Google'),
            text: 'Iniciar sesion con Google',
            height: height,
            width: width,
            borderRadius: borderRadius,
            buttonColor: button == Button.GoogleBlue
                ? Color(0xFF397AF3)
                : button == Button.GoogleBlack
                    ? Color(0xFF222222)
                    : Color(0xFFEEEEEE),
            textColor:
                (button == Button.GoogleBlue || button == Button.GoogleBlack)
                    ? Colors.white
                    : Colors.black87,
            imageBackgroundColor:
                (button == Button.GoogleBlue || button == Button.GoogleBlack)
                    ? Colors.white
                    : Colors.transparent,
            useGoogleImage: true,
            onPressed: onPressed);
      case Button.Facebook:
      case Button.FacebookNew:
        return CustomButton(
            key: ValueKey('Facebook'),
            text: 'Iniciar sesion con Facebook',
            height: height,
            width: width,
            borderRadius: borderRadius,
            buttonColor: button == Button.FacebookNew
                ? Color(0xFF1877f2)
                : Color(0xFF3B5998),
            textColor: Colors.white,
            customIcon: button == Button.FacebookNew
                ? FontAwesomeIcons.facebook
                : FontAwesomeIcons.facebookF,
            iconSize: button == Button.FacebookNew ? 28 : 25,
            iconColor: Colors.white,
            onPressed: onPressed);
      case Button.Instagram:
      case Button.InstagramGradient:
        return CustomButton(
            key: ValueKey('Instagram'),
            text: 'Iniciar sesion con Instagram',
            height: height,
            width: width,
            borderRadius: borderRadius,
            buttonColor: Color(0xFFDD2A7B),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.instagram,
            useGradient: button == Button.InstagramGradient ? true : false,
            setGradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: const [
                  Color(0xFFF58529),
                  Color(0xFFDD2A7B),
                  Color(0xFF8134AF),
                  Color(0xFF515BD4)
                ],
                stops: const [
                  0,
                  0.25,
                  0.95,
                  1
                ]),
            iconColor: Colors.white,
            onPressed: onPressed);
      case Button.Spotify:
      case Button.SpotifyLigth:
        return CustomButton(
            key: ValueKey('Spotify'),
            text: 'Iniciar sesion con Spotify',
            height: height,
            width: width,
            borderRadius: borderRadius,
            buttonColor: button == Button.SpotifyLigth
                ? Color(0xFF1DB954)
                : Color(0xFF222222),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.spotify,
            iconSize: 28,
            iconColor: button == Button.SpotifyLigth
                ? Colors.white
                : Color(0xFF1DB954),
            onPressed: onPressed);
      case Button.Twitch:
        return CustomButton(
            key: ValueKey('Spotify'),
            text: 'Iniciar sesion con Twitch',
            height: height,
            width: width,
            borderRadius: borderRadius,
            buttonColor: Color(0xFF8D1DB9),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.twitch,
            iconColor: Colors.white,
            onPressed: onPressed);
      case Button.Twitter:
        return CustomButton(
            key: ValueKey('Spotify'),
            text: 'Iniciar sesion con Twitter',
            height: height,
            width: width,
            borderRadius: borderRadius,
            buttonColor: Color(0xFF1DA0F2),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.twitter,
            iconColor: Colors.white,
            onPressed: onPressed);
      case Button.Custom:
        return customButton;
    }
  }
}
