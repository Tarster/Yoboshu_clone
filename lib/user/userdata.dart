import 'package:flutter/material.dart';

class UserData {
  final String name;
  final String aboutMe;
  final String qualification;
  final String location;
  final int sessionRate;
  final int experience;
  final Map<String, IconData> modeOfTraining;
  final List<String> languages;
  final List<String> peopleILoveTraining;
  final List<String> availability;
  final List<String> myExpertise;

  UserData({
    @required this.name,
    @required this.aboutMe,
    @required this.qualification,
    @required this.location,
    @required this.sessionRate,
    @required this.experience,
    @required this.modeOfTraining,
    @required this.languages,
    @required this.peopleILoveTraining,
    @required this.availability,
    @required this.myExpertise,
  });

}

