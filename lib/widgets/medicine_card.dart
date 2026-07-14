import 'package:flutter/material.dart';
import 'package:meera_medisist/models/medicine.dart';

class MedicineCard extends StatelessWidget {
  final MedicineModel medicine;

  const MedicineCard({super.key, required this.medicine});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(medicine.name),
        subtitle: Text(medicine.type),
        trailing: Text("₹${medicine.price}"),
      ),
    );
  }
}
