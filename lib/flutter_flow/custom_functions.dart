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
  return phone.length == 12;
}

bool checkIfClubValid(
  String name,
  String info,
  int positions,
  String photo,
) {
  return !name.isEmpty && !info.isEmpty && !photo.isEmpty && positions > 0;
}

bool ifMainButtonIsActive(
  bool isOlympiad,
  bool isProject,
) {
  return isOlympiad || isProject;
}

bool dropdownIsEmpty(String subject) {
  return subject.isEmpty;
}

bool dateIsEmpty(DateTime date) {
  return date == null;
}
