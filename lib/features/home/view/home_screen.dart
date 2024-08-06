import 'package:flutter/material.dart';
import 'package:v_doc/core/widgets/headline_title_row.dart';
import 'package:v_doc/features/home/widget/welcome_app_bar.dart';

import '../widget/find_doc_banner.dart';
import '../widget/specialty_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WelcomeHomeAppBar(),
              FindDoctorPrimaryBanner(),
              SizedBox(height: 20),
              SpecialltyCategories(),
              RecommededDoctorsList(),
            ],
          ),
        ),
      ),
    );
  }
}

class RecommededDoctorsList extends StatelessWidget {
  const RecommededDoctorsList({super.key});

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
              itemCount: 5,
              itemBuilder: (context, index) => DoctorCard(),
            ),
          ),
        ],
      ),
    );
  }
}

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key});

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
          const Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Doctor Name',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Specialty | Hospital',
                    style: TextStyle(fontSize: 14, color: Colors.blueGrey),
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
