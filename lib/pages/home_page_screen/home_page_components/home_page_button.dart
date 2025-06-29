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
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: (){},
      child: Container(
        width: screenWidth * 0.40,
        height: screenHeight * 0.14,
        padding:EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: materialColor[50],
          border: Border.all(color: materialColor[200]!),
            borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Icon(icon, size: 40, color: materialColor[400],),
            Text(title,style: TextStyle(fontSize: 16,color: materialColor[400]),),

          ],
        ),
      ),
    );
  }
}
