import 'package:flutter/material.dart';
import 'package:v_doc/core/widgets/headline_title_row.dart';
import 'package:v_doc/features/doctors/domain/models/specializations_response.dart';

class RecommededDoctorsList extends StatelessWidget {
  const RecommededDoctorsList({super.key, required this.doctors});
  final List<Doctor?> doctors;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          HeadlineTitleRow(
            title: 'Recommnedation Doctors',
            onSeeAllPressed: () {},
          ),
          Expanded(
            child: ListView.builder(
              itemCount: doctors.length,
              itemBuilder: (context, index) => DoctorCard(doctor: doctors[index]),
            ),
          ),
        ],
      ),
    );
  }
}

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key, required this.doctor});
  final Doctor? doctor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        // color: Colors.red,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 130,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: const Image(
                  image: AssetImage('assets/images/female_doc.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctor?.name ?? 'Name',
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${doctor?.degree} | ${doctor?.phone}',
                    style: const TextStyle(fontSize: 14, color: Colors.blueGrey),
                  ),
                  const Text('Rating'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
