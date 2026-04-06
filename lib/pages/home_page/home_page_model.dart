import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/clubs_horizontal/clubs_horizontal_widget.dart';
import '/pages/components/oneevent/oneevent_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in HomePage widget.
  int? querryeventsfav;
  // Stores action output result for [Firestore Query - Query a collection] action in HomePage widget.
  int? queryallevents;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  List<EventsRecord>? listViewallPreviousSnapshot;
  // Models for oneevent dynamic component.
  late FlutterFlowDynamicModels<OneeventModel> oneeventModels1;
  List<EventsRecord>? listViewfavPreviousSnapshot;
  // Models for oneevent dynamic component.
  late FlutterFlowDynamicModels<OneeventModel> oneeventModels2;
  // Models for oneevent dynamic component.
  late FlutterFlowDynamicModels<OneeventModel> oneeventModels3;

  @override
  void initState(BuildContext context) {
    oneeventModels1 = FlutterFlowDynamicModels(() => OneeventModel());
    oneeventModels2 = FlutterFlowDynamicModels(() => OneeventModel());
    oneeventModels3 = FlutterFlowDynamicModels(() => OneeventModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    oneeventModels1.dispose();
    oneeventModels2.dispose();
    oneeventModels3.dispose();
  }
}
