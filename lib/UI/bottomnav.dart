import 'package:flutter/material.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(child: Text('Page $_selectedIndex')),

          // Custom Center FAB
          Positioned(
            bottom: 10,
            left: MediaQuery.of(context).size.width / 2 - 27.5,
            child: GestureDetector(
              onTap: () {
                // Your FAB tap logic
              },
              child: Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
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
                    child: Center(
                      child: Icon(Icons.add, size: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: SizedBox(
          height: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _navItem("assets/icons/li_home.png", "Home", 0),
              _navItem("assets/icons/Vector.png", "Recycle", 1),
              SizedBox(width: 55),
              _navItem("assets/icons/Vector (1).png", "Posts", 2),
              _navItem("assets/icons/vector (Stroke) (1).png", "inbox", 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _navItem(String image, String label, int index) {
    bool isSelected = _selectedIndex == index;
    return InkWell(
      onTap: () => setState(() => _selectedIndex = index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 24,
            color: isSelected ? Color(0xFF2DAF2F) : Colors.grey,
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Color(0xFF2DAF2F) : Colors.grey,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
