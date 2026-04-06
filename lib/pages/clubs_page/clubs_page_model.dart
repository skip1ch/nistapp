import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/oneclub/oneclub_widget.dart';
import '/pages/filter_club/filter_club_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'clubs_page_widget.dart' show ClubsPageWidget;
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

class ClubsPageModel extends FlutterFlowModel<ClubsPageWidget> {
  ///  Local state fields for this page.

  int tabbar123 = 1;

  bool textfiledactive = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in ClubsPage widget.
  int? queryclubsall;
  // Stores action output result for [Firestore Query - Query a collection] action in ClubsPage widget.
  int? queryclubsfav;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<ClubsRecord> simpleSearchResults = [];
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  List<ClubsRecord>? listViewPreviousSnapshot1;
  // Models for oneclub dynamic component.
  late FlutterFlowDynamicModels<OneclubModel> oneclubModels1;
  // Models for oneclub dynamic component.
  late FlutterFlowDynamicModels<OneclubModel> oneclubModels2;
  List<ClubsRecord>? listViewPreviousSnapshot2;
  // Models for oneclub dynamic component.
  late FlutterFlowDynamicModels<OneclubModel> oneclubModels3;
  // Models for oneclub dynamic component.
  late FlutterFlowDynamicModels<OneclubModel> oneclubModels4;
  // Models for oneclub dynamic component.
  late FlutterFlowDynamicModels<OneclubModel> oneclubModels5;
  // Models for oneclub dynamic component.
  late FlutterFlowDynamicModels<OneclubModel> oneclubModels6;

  @override
  void initState(BuildContext context) {
    oneclubModels1 = FlutterFlowDynamicModels(() => OneclubModel());
    oneclubModels2 = FlutterFlowDynamicModels(() => OneclubModel());
    oneclubModels3 = FlutterFlowDynamicModels(() => OneclubModel());
    oneclubModels4 = FlutterFlowDynamicModels(() => OneclubModel());
    oneclubModels5 = FlutterFlowDynamicModels(() => OneclubModel());
    oneclubModels6 = FlutterFlowDynamicModels(() => OneclubModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    tabBarController?.dispose();
    oneclubModels1.dispose();
    oneclubModels2.dispose();
    oneclubModels3.dispose();
    oneclubModels4.dispose();
    oneclubModels5.dispose();
    oneclubModels6.dispose();
  }
}
