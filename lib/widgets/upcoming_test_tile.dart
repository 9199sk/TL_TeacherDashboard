import 'package:flutter/material.dart';

class UpcomingTestTile extends StatelessWidget {
  const UpcomingTestTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFE6D6FA),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color(0xFF6A0DAD),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.assignment, color: Colors.white, size: 24),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Mathematics Test (X)", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("Date: 12-06-2025"),
                Text("Time: 4:30 PM"),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF6A0DAD),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
            onPressed: () {},

            child: const Text("view", style: TextStyle(color: Colors.white)
            ),

          ),
        ],
      ),
    );
  }
}
