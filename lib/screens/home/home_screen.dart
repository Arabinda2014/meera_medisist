import 'package:flutter/material.dart';
import 'package:meera_medisist/widgets/catagory_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Meera MediSist")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hello,",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 8),

            const Text(
              "Find your medicines easily",
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: "Search medicines...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),

            const Text(
              "Categories",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            Row(
              children: [
                Expanded(
                  child: CategoryCard(
                    icon: Icons.medication,
                    title: "Tablets",
                    onTap: () {
                      debugPrint("Tablets selected");
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CategoryCard(
                    icon: Icons.healing,
                    title: "First Aid",
                    onTap: () {
                      debugPrint("First Aid Selected");
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CategoryCard(
                    icon: Icons.personal_injury,
                    title: "Injury",
                    onTap: () {
                      debugPrint("Injury selected");
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
