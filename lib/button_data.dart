// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:custom_signin_buttons_dev/custom_signin_buttons.dart';

class SignInButton extends StatelessWidget {
  final Button button;
  final double borderRadius;
  final Color buttonColor;
  final double height;
  final Color iconColor;
  final bool mini;
  final Function()? onPressed;
  final Color splashColor;
  final Color textColor;
  final double width;

  SignInButton({
    this.button = Button.Xbox,
    this.borderRadius = 5,
    this.buttonColor = Colors.black12,
    this.height = 40,
    this.iconColor = Colors.black87,
    Key? key,
    this.mini = false,
    this.onPressed,
    this.splashColor = Colors.transparent,
    this.textColor = Colors.black,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (button) {
      case Button.Apple:
      case Button.AppleDark:
        return CustomSignInButton(
            key: ValueKey('Apple'),
            mini: mini,
            text: 'Iniciar sesion con Apple',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor:
                button == Button.Apple ? Color(0xFFE9E9E9) : Color(0xFF222222),
            textColor:
                button == Button.Apple ? Colors.black87 : Color(0xFFF3F2F1),
            customIcon: FontAwesomeIcons.apple,
            iconColor:
                button == Button.Apple ? Color(0xFF050505) : Color(0xFFF3F2F1),
            iconLeftPadding: 12,
            imagePadding: EdgeInsets.symmetric(vertical: 3),
            onPressed: onPressed);
      case Button.Discord:
        return CustomSignInButton(
            key: ValueKey('Discord'),
            mini: mini,
            text: 'Iniciar sesion con Discord',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: Color(0xFF7289da),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.discord,
            iconLeftPadding: 9,
            imagePadding: EdgeInsets.symmetric(vertical: 3),
            iconColor: Colors.white,
            iconSize: 24,
            onPressed: onPressed);
      case Button.Email:
        return CustomSignInButton(
            key: ValueKey('Email'),
            mini: mini,
            text: 'Iniciar sesion con tu Correo',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: buttonColor,
            textColor: textColor,
            customIcon: FontAwesomeIcons.envelope,
            iconColor: iconColor,
            onPressed: onPressed);
      case Button.Facebook:
      case Button.FacebookNew:
        return CustomSignInButton(
            key: ValueKey('Facebook'),
            mini: mini,
            text: 'Iniciar sesion con Facebook',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: button == Button.FacebookNew
                ? Color(0xFF1877f2)
                : Color(0xFF3B5998),
            textColor: Colors.white,
            customIcon: button == Button.FacebookNew
                ? FontAwesomeIcons.facebook
                : FontAwesomeIcons.facebookF,
            // iconSize: button == Button.FacebookNew ? 28 : 25,
            iconColor: Colors.white,
            onPressed: onPressed);
      case Button.GitHub:
        return CustomSignInButton(
            key: ValueKey('GitHub'),
            mini: mini,
            text: 'Iniciar sesion con GitHub',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: Color(0xFF444444),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.github,
            iconColor: Colors.white,
            onPressed: onPressed);
      case Button.Google:
      case Button.GoogleBlack:
      case Button.GoogleBlue:
        return CustomSignInButton(
            key: ValueKey('Google'),
            mini: mini,
            text: 'Iniciar sesion con Google',
            height: height,
            width: width,
            splashColor: splashColor,
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
      case Button.Instagram:
      case Button.InstagramGradient:
        return CustomSignInButton(
            key: ValueKey('Instagram'),
            mini: mini,
            text: 'Iniciar sesion con Instagram',
            height: height,
            width: width,
            splashColor: splashColor,
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
                  0.45,
                  0.95,
                  1
                ]),
            iconColor: Colors.white,
            onPressed: onPressed);
      case Button.LinkedIn:
        return CustomSignInButton(
            key: ValueKey('LinkedIn'),
            mini: mini,
            text: 'Iniciar sesion con LinkedIn',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: Color(0xFF007BB5),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.linkedinIn,
            iconColor: Colors.white,
            onPressed: onPressed);
      case Button.Pinterest:
        return CustomSignInButton(
            key: ValueKey('Pinterest'),
            mini: mini,
            text: 'Iniciar sesion con Pinterest',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: Color(0xFFCB1F27),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.pinterest,
            iconColor: Colors.white,
            onPressed: onPressed);
      case Button.PlayStation:
        return CustomSignInButton(
            key: ValueKey('PlayStation'),
            mini: mini,
            text: 'Iniciar sesion con PSN',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: Color(0xFF013888),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.playstation,
            imagePadding: EdgeInsets.symmetric(vertical: 3),
            iconColor: Colors.white,
            onPressed: onPressed);
      case Button.Spotify:
      case Button.SpotifyLigth:
        return CustomSignInButton(
            key: ValueKey('Spotify'),
            mini: mini,
            text: 'Iniciar sesion con Spotify',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: button == Button.SpotifyLigth
                ? Color(0xFF1DB954)
                : Color(0xFF222222),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.spotify,
            iconSize: 24,
            iconColor: button == Button.SpotifyLigth
                ? Colors.white
                : Color(0xFF1DB954),
            onPressed: onPressed);
      case Button.Steam:
      case Button.SteamGradient:
        return CustomSignInButton(
            key: ValueKey('Steam'),
            mini: mini,
            text: 'Iniciar sesion con Steam',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            useGradient: button == Button.SteamGradient ? true : false,
            setGradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: const [
                Color(0xFF0a1a35),
                Color(0xFF133669),
                Color(0xFF1384b5)
              ],
              stops: const [0, 0.65, 1],
            ),
            buttonColor: Color(0xFF133669),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.steamSymbol,
            iconColor: Colors.white,
            onPressed: onPressed);
      case Button.Twitch:
        return CustomSignInButton(
            key: ValueKey('Twitch'),
            mini: mini,
            text: 'Iniciar sesion con Twitch',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: Color(0xFF8D1DB9),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.twitch,
            iconColor: Colors.white,
            onPressed: onPressed);
      case Button.Twitter:
        return CustomSignInButton(
            key: ValueKey('Twitter'),
            mini: mini,
            text: 'Iniciar sesion con Twitter',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: Color(0xFF1DA0F2),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.twitter,
            iconColor: Colors.white,
            onPressed: onPressed);
      case Button.Xbox:
      case Button.XboxDark:
        return CustomSignInButton(
            key: ValueKey('Xbox'),
            mini: mini,
            text: 'Iniciar sesion con Xbox',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor:
                button == Button.Xbox ? Color(0xFFEBEBEB) : Color(0xFF2CA243),
            textColor:
                button == Button.Xbox ? Colors.black87 : Color(0xFFF3F2F1),
            customIcon: FontAwesomeIcons.xbox,
            iconColor:
                button == Button.Xbox ? Color(0xFF2CA243) : Color(0xFFF3F2F1),
            onPressed: onPressed);
    }
  }
}
