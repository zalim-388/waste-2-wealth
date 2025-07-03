import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:waste_management/UI/Recycle_Page.dart';
import 'package:waste_management/UI/home_page.dart';
import 'package:waste_management/UI/inbox.dart';
import 'package:waste_management/UI/post.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    RecyclePage(),
    SizedBox.shrink(),
    Post(),
    Inbox(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: _pages[_selectedIndex == 2 ? 0 : _selectedIndex],

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        color: Colors.white,
        child: SizedBox(
          height: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _navItem("assets/icons/li_home.svg", "Home", 0),
              _navItem("assets/icons/Vector (1).svg", "Recycle", 1),
              _AddButton(Icons.add),
              _navItem("assets/icons/Vector.svg", "Posts", 3),
              _navItem("assets/icons/vector (Stroke).svg", "Inbox", 4),
            ],
          ),
        ),
      ),
    );
  }

  Widget _navItem(String image, String label, int index) {
    bool isSelected = _selectedIndex == index;
    return InkWell(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 8),
          SvgPicture.asset(
            image,
            height: 24,
            color: isSelected ? const Color(0xFF2DAF2F) : Colors.grey,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? const Color(0xFF2DAF2F) : Colors.grey,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _AddButton(IconData? icon) {
    return Container(
      width: 55,
      height: 55,
      decoration: const BoxDecoration(
        color: Color(0xFF2DAF2F),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 3),
          ),
          child: Center(child: Icon(icon, size: 20, color: Colors.white)),
        ),
      ),
    );
  }
}
