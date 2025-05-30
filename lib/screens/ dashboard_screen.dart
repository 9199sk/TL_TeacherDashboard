import 'package:flutter/material.dart';
import '../widgets/stats_card.dart';
import '../widgets/upcoming_test_tile.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ✅ FOOTER FIXED (FULL WIDTH, SAME COLOR AS HEADER)
      bottomNavigationBar: Container(
        height: 70,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFF4E33A3),

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(Icons.home, color: Colors.white),
            Icon(Icons.list_alt, color: Colors.white),
            Icon(Icons.bar_chart, color: Colors.white),
            Icon(Icons.wallet, color: Colors.white),
            Icon(Icons.person, color: Colors.white),
          ],
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              // ✅ HEADER (FULL WIDTH PURPLE COLOR)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                decoration: const BoxDecoration(
                  color: Color(0xFF4E33A3),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Home",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.notifications_none, color: Colors.white),
                        SizedBox(width: 16),
                        Icon(Icons.help_outline, color: Colors.white),
                      ],
                    )
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // ✅ WELCOME BOX
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome back, Affan", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    Text("Coaching Name: Sufiyan coaching center", style: TextStyle(color: Color(0xFF4E33A3))),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // ✅ STATS CARDS
              // Inside DashboardScreen build() method
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    StatsCard(
                      title: "Tests Taken",
                      value: "12",
                      color: Color(0xFFCDE9E5),
                      iconPath: "assets/icons/test_taken.png",
                    ),
                    StatsCard(
                      title: "Tests Won",
                      value: "4",
                      color: Color(0xFFE5DEFA),
                      iconPath: "assets/icons/test_won.png",
                    ),
                    StatsCard(
                      title: "Rank",
                      value: "2",
                      color: Color(0xFFFDE5E5),
                      iconPath: "assets/icons/rank.png",
                    ),
                  ],
                ),
              ),


              const SizedBox(height: 12),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: List.generate(4, (index) {
                    return const Padding(
                      padding: EdgeInsets.only(bottom: 12),
                      child: UpcomingTestTile(),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
