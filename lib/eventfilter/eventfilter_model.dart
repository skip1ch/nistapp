import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'eventfilter_widget.dart' show EventfilterWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EventfilterModel extends FlutterFlowModel<EventfilterWidget> {
  ///  Local state fields for this page.

  int loopCount = 0;

  int eventsCount = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Text widget.
  int? numbertypesatindexsbrositxx;
  // Stores action output result for [Firestore Query - Query a collection] action in Text widget.
  int? vseeventsnumsbrositxx;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Stores action output result for [Firestore Query - Query a collection] action in Text widget.
  int? numbertypesatindexsbrosit;
  // Stores action output result for [Firestore Query - Query a collection] action in Text widget.
  int? vseeventsnumsbrosit;
  // State field(s) for Checkboxobraz widget.
  bool? checkboxobrazValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxobraz widget.
  int? numbersubjectatindex8;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxobraz widget.
  int? numbersubjectatindex9;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxobraz widget.
  int? vseteachersnum4;
  // State field(s) for Checkboxtvorch widget.
  bool? checkboxtvorchValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxtvorch widget.
  int? numbersubjectatindex10;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxtvorch widget.
  int? numbersubjectatindex11;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxtvorch widget.
  int? vseteachersnum5;
  // State field(s) for Checkboxsport widget.
  bool? checkboxsportValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxsport widget.
  int? numbersubjectatindex12;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxsport widget.
  int? numbersubjectatindex13;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxsport widget.
  int? vseteachersnum6;
  // State field(s) for Checkboxsoc widget.
  bool? checkboxsocValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxsoc widget.
  int? numbersubjectatindex14;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxsoc widget.
  int? numbersubjectatindex15;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxsoc widget.
  int? vseteachersnum12;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {}
}
