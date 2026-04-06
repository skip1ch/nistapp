import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'filter_club_widget.dart' show FilterClubWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FilterClubModel extends FlutterFlowModel<FilterClubWidget> {
  ///  Local state fields for this component.

  bool obrazovisset = true;

  bool volontisset = true;

  bool sportisset = true;

  bool tvorchisset = true;

  bool vsetematikiisset = true;

  bool sevennineisset = true;

  bool tentwelveisset = true;

  bool vsegradesisset = true;

  bool offlineisset = true;

  bool onlineisset = true;

  bool vseformatiisset = true;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  int? querynumclubs;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
