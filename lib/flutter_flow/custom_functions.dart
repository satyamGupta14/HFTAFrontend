import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String? days() {
  // write a code where check the date and give day
  // Get the current date
  DateTime now = DateTime.now();

  // Get the day of the week
  String day = DateFormat('EEEE').format(now);

  // Return the day
  return day;
}
