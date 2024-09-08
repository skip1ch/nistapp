import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/oneteacher_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/add_teacher/add_teacher_widget.dart';
import '/pages/create_event/create_event_widget.dart';
import 'olympiad_project_page_widget.dart' show OlympiadProjectPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OlympiadProjectPageModel
    extends FlutterFlowModel<OlympiadProjectPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
