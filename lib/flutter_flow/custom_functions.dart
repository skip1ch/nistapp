import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

bool photoIsEmpty(String image) {
  return image.isEmpty;
}

bool stringIsEmpty(String str) {
  return str.isEmpty;
}

bool checkPhoneNumber(String phone) {
  return phone.length == 18;
}

bool checkIfClubValid(
  String name,
  String info,
  int positions,
  String photo,
) {
  return !name.isEmpty && !info.isEmpty && !photo.isEmpty && positions > 0;
}

bool ifMainButtonIsActive(bool isOlympiadxProject) {
  return isOlympiadxProject;
}

bool dropdownIsEmpty(String subject) {
  return subject.isEmpty;
}

bool dateIsEmpty(DateTime date) {
  return date == null;
}

bool checkEmailNis(String email) {
  if (email.endsWith("nis.edu.kz")) {
    return true;
  } else {
    return false;
  }
}

bool checkSMS(String sms) {
  return sms.length == 6;
}

bool checkToggleisOn(bool toggleicon) {
  // if toggleicon is true return true, if not return false
  return toggleicon ? true : false;
}

List<String>? chosenClubSpheres(
  bool obrazovset,
  bool volonterstvoset,
  bool sportset,
  bool tvorchestvoset,
) {
  // I have 4 variables and those that are true, i need to add them to list
  List<String> chosenSpheres = [];

  if (obrazovset == true) {
    chosenSpheres.add('Образовательный');
  }
  if (volonterstvoset == true) {
    chosenSpheres.add('Волонтерство');
  }
  if (sportset == true) {
    chosenSpheres.add('Спорт');
  }
  if (tvorchestvoset == true) {
    chosenSpheres.add('Творчество');
  }

  return chosenSpheres.isNotEmpty ? chosenSpheres : null;
}

List<String>? chosenClubGrades(
  bool sevennine,
  bool tentwelve,
) {
  // I have 2 variables and those that are true, i need to add them to list
  List<String> chosenGrades = [];

  if (sevennine == true) {
    chosenGrades.add('7-9');
  }
  if (tentwelve == true) {
    chosenGrades.add('10-12');
  }

  return chosenGrades.isNotEmpty ? chosenGrades : null;
}

List<String>? chosenClubFormats(
  bool offline,
  bool online,
) {
  // I have 2 variables and those that are true, i need to add them to list
  List<String> chosenClubFormats = [];

  if (offline == true) {
    chosenClubFormats.add('Офлайн');
  }
  if (online == true) {
    chosenClubFormats.add('Онлайн');
  }

  return chosenClubFormats.isNotEmpty ? chosenClubFormats : null;
}

int doubleToInt(double slider) {
  return slider.toInt();
}

bool isPositiveInteger(String value) {
  final parsed = int.tryParse(value);
  return parsed != null && parsed > 0;
}
