import 'package:flutter/material.dart';

class HomePageButton extends StatelessWidget {
  const HomePageButton({
    super.key,
    required this.color,
    required this.icon,
    required this.title,
  });

  final Color color;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    final MaterialColor materialColor = color as MaterialColor;
    return InkWell(
      onTap: (){},
      child: Container(
        width: 230,
        height: 100,
        padding:EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: materialColor[50],
          border: Border.all(color: materialColor[200]!),
            borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Icon(icon,),
            Text(title),

          ],
        ),
      ),
    );
  }
}
