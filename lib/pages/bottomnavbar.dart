import 'package:bloceproject/pages/settings_screen/settings_screen.dart';
import 'package:bloceproject/pages/shipments_screen/shipmint_screen.dart';
import 'package:flutter/material.dart';

import 'home_page_screen/home_page.dart';
class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Bottomnavbar> {
  int _selectedIndex = 3;


  final List<Widget> _pages = [
    ShipmintPageScreen(),
    HomePage(),
    SettingsScreen(),
    SettingsScreen(),
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final Color selectedColor = const Color(0xFF8B0000);
    final Color unselectedColor = Colors.grey.shade600;

    return Scaffold(
      body: _pages[_selectedIndex],

      // Bottom Navigation Bar
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 10,
              offset: const Offset(0, -4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            items: _navBarItems, // عناصر شريط التنقل
            currentIndex: _selectedIndex, // العنصر المحدد حالياً
            selectedItemColor: selectedColor, // لون العنصر المحدد
            unselectedItemColor: unselectedColor, // لون العناصر غير المحددة
            onTap: _onItemTapped, // الدالة التي يتم استدعاؤها عند النقر
            type: BottomNavigationBarType.fixed, // هام لضمان ظهور جميع العناصر بالتساوي
            backgroundColor: Colors.transparent, // لجعل خلفية الـ Container مرئية
            selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 12,
            ),
            iconSize: 26, // حجم الأيقونات
            elevation: 0, // إزالة الظل من الـ BottomNavigationBar نفسه (الظل يأتي من الـ Container)
          ),
        ),
      ),
    );
  }


  final List<BottomNavigationBarItem> _navBarItems = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.person_outline),
      activeIcon: Icon(Icons.person),
      label: 'الحساب',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.assignment_outlined),
      activeIcon: Icon(Icons.assignment),
      label: 'الاشعارات',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.local_shipping_outlined),
      activeIcon: Icon(Icons.local_shipping),
      label: 'الشحنات',
    ),
    BottomNavigationBarItem(

      icon: Icon(Icons.sync_alt),
      activeIcon: Icon(Icons.sync_alt),
      label: 'الرئيسية',
    ),
  ];
}