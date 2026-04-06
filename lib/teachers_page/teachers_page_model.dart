import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/oneteacher/oneteacher_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'teachers_page_widget.dart' show TeachersPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class TeachersPageModel extends FlutterFlowModel<TeachersPageWidget> {
  ///  Local state fields for this page.

  int tabbar123 = 1;

  bool textfiledactive = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in TeachersPage widget.
  int? querynumofteachers;
  // Stores action output result for [Firestore Query - Query a collection] action in TeachersPage widget.
  int? querrycounteaachers;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<TeachersRecord> simpleSearchResults = [];
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  List<TeachersRecord>? listViewPreviousSnapshot1;
  // Models for oneteacher dynamic component.
  late FlutterFlowDynamicModels<OneteacherModel> oneteacherModels1;
  // Models for oneteacher dynamic component.
  late FlutterFlowDynamicModels<OneteacherModel> oneteacherModels2;
  List<TeachersRecord>? listViewPreviousSnapshot2;
  // Models for oneteacher dynamic component.
  late FlutterFlowDynamicModels<OneteacherModel> oneteacherModels3;
  // Models for oneteacher dynamic component.
  late FlutterFlowDynamicModels<OneteacherModel> oneteacherModels4;
  List<TeachersRecord>? listViewPreviousSnapshot3;
  // Models for oneteacher dynamic component.
  late FlutterFlowDynamicModels<OneteacherModel> oneteacherModels5;
  // Models for oneteacher dynamic component.
  late FlutterFlowDynamicModels<OneteacherModel> oneteacherModels6;

  @override
  void initState(BuildContext context) {
    oneteacherModels1 = FlutterFlowDynamicModels(() => OneteacherModel());
    oneteacherModels2 = FlutterFlowDynamicModels(() => OneteacherModel());
    oneteacherModels3 = FlutterFlowDynamicModels(() => OneteacherModel());
    oneteacherModels4 = FlutterFlowDynamicModels(() => OneteacherModel());
    oneteacherModels5 = FlutterFlowDynamicModels(() => OneteacherModel());
    oneteacherModels6 = FlutterFlowDynamicModels(() => OneteacherModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    tabBarController?.dispose();
    oneteacherModels1.dispose();
    oneteacherModels2.dispose();
    oneteacherModels3.dispose();
    oneteacherModels4.dispose();
    oneteacherModels5.dispose();
    oneteacherModels6.dispose();
  }
}
