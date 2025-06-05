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
      body: Center(child: Text('Page $_selectedIndex')),

      floatingActionButton: GestureDetector(
        onTap: () {
          // Your FAB logic
        },
        child: Container(
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
              child: const Center(
                child: Icon(Icons.add, size: 20, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        color: Colors.white,
        child: SizedBox(
          height: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _navItem("assets/icons/li_home.png", "Home", 0),
              _navItem("assets/icons/Vector.png", "Recycle", 1),
              const SizedBox(width: 55), // Space for FAB
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
          const SizedBox(height: 8),
          Image.asset(
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
}




// Stack(
//                 children: [
//                   _navItem("assets/icons/vector (Stroke) (1).png", "Inbox", 3),
//                   // 🔔 Notification badge (like '2')
//                   if (_selectedIndex != 3)
//                     Positioned(
//                       right: 8,
//                       top: 4,
//                       child: Container(
//                         padding: const EdgeInsets.all(4),
//                         decoration: const BoxDecoration(
//                           color: Colors.green,
//                           shape: BoxShape.circle,
//                         ),
//                         child: const Text(
//                           '2',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 10,
//                           ),
//                         ),
//                       ),
//                     ),
//                 ],
//               ),