import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Colors.white.withOpacity(0.7),
            Colors.white.withOpacity(0.0)
          ],
        ).createShader(bounds);
      },
      child: Icon(
        Icons.cloud_queue,
        color: Colors.white,
        size: 120.0,
      ),
    );
  }
}

class LogoText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: 'MAŁOPOLSKA\n',
            style: TextStyle(
                color: Color(0xff000C40).withOpacity(0.55),
                fontWeight: FontWeight.bold,
                fontFamily: 'Oxygen',
                fontSize: 38),
          ),
          TextSpan(
            text: 'CHMURA EDUKACYJNA',
            style: TextStyle(
                color: Color(0xff000C40).withOpacity(0.55),
                fontWeight: FontWeight.w300,
                fontFamily: 'Oxygen',
                fontSize: 23),
          )
        ],
      ),
    );
  }
}
