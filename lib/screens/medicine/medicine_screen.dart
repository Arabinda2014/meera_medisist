import 'package:flutter/material.dart';
import 'package:meera_medisist/data/dummy_medicines.dart';
import 'package:meera_medisist/widgets/medicine_card.dart';

class MedicineScreen extends StatelessWidget {
  const MedicineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final medicines = DummyMedicine().dummyMedicine;
    return Scaffold(
      appBar: AppBar(title: const Text("Meera MediSist")),
      body: Padding(
        padding: const EdgeInsets.all(16),

        child: ListView.builder(
          itemCount: medicines.length,
          itemBuilder: (context, index) {
            return MedicineCard(medicine: medicines[index]);
          },
        ),
      ),
    );
  }
}
