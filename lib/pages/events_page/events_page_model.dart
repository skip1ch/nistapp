import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/oneevent/oneevent_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'events_page_widget.dart' show EventsPageWidget;
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

class EventsPageModel extends FlutterFlowModel<EventsPageWidget> {
  ///  Local state fields for this page.

  int tabbar123 = 1;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in EventsPage widget.
  int? queryeventsall;
  // Stores action output result for [Firestore Query - Query a collection] action in EventsPage widget.
  int? queryeventsfav;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<EventsRecord> simpleSearchResults = [];
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  List<EventsRecord>? listViewallPreviousSnapshot;
  // Models for oneevent dynamic component.
  late FlutterFlowDynamicModels<OneeventModel> oneeventModels1;
  // Models for oneevent dynamic component.
  late FlutterFlowDynamicModels<OneeventModel> oneeventModels2;
  List<EventsRecord>? listViewfavPreviousSnapshot;
  // Models for oneevent dynamic component.
  late FlutterFlowDynamicModels<OneeventModel> oneeventModels3;
  // Models for oneevent dynamic component.
  late FlutterFlowDynamicModels<OneeventModel> oneeventModels4;
  // Models for oneevent dynamic component.
  late FlutterFlowDynamicModels<OneeventModel> oneeventModels5;
  // Models for oneevent dynamic component.
  late FlutterFlowDynamicModels<OneeventModel> oneeventModels6;

  @override
  void initState(BuildContext context) {
    oneeventModels1 = FlutterFlowDynamicModels(() => OneeventModel());
    oneeventModels2 = FlutterFlowDynamicModels(() => OneeventModel());
    oneeventModels3 = FlutterFlowDynamicModels(() => OneeventModel());
    oneeventModels4 = FlutterFlowDynamicModels(() => OneeventModel());
    oneeventModels5 = FlutterFlowDynamicModels(() => OneeventModel());
    oneeventModels6 = FlutterFlowDynamicModels(() => OneeventModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    tabBarController?.dispose();
    oneeventModels1.dispose();
    oneeventModels2.dispose();
    oneeventModels3.dispose();
    oneeventModels4.dispose();
    oneeventModels5.dispose();
    oneeventModels6.dispose();
  }
}
