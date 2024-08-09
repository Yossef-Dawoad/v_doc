import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:v_doc/features/doctors/controllers/doctors/doctor_bloc.dart';
import 'package:v_doc/features/doctors/presentation/widget/welcome_app_bar.dart';

import '../widget/find_doc_banner.dart';
import '../widget/recommended_doctors_list.dart';
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
              SpecializationWithFilterationWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class SpecializationWithFilterationWidget extends StatelessWidget {
  const SpecializationWithFilterationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoctorBloc, DoctorState>(
      buildWhen: (previous, current) =>
          current is SpecializationsSuccess ||
          current is Loading ||
          current is SpecializationsError,
      builder: (context, state) => state.maybeWhen(
        loading: () => const Center(child: CircularProgressIndicator()),
        specializationsSuccess: (doctorsData) => Expanded(
          child: Column(
            children: [
              SpecialltyCategories(
                specializations: doctorsData.specializationDataList ?? [],
              ),
              RecommededDoctorsList(
                doctors: doctorsData.specializationDataList?.first?.doctorsList ?? [],
              ),
            ],
          ),
        ),
        specializationsError: (error) => const SizedBox.shrink(),
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}
