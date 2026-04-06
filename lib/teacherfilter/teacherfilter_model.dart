import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'teacherfilter_widget.dart' show TeacherfilterWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TeacherfilterModel extends FlutterFlowModel<TeacherfilterWidget> {
  ///  Local state fields for this page.

  int loopCount = 0;

  int teachersCount = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Text widget.
  int? vseteachersnumsbrositmain;
  // State field(s) for Slider widget.
  double? sliderValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Slider widget.
  int? amama;
  // Stores action output result for [Firestore Query - Query a collection] action in Slider widget.
  int? mama;
  // Stores action output result for [Firestore Query - Query a collection] action in Text widget.
  int? numbersubjectatindexsbrosit;
  // Stores action output result for [Firestore Query - Query a collection] action in Text widget.
  int? vseteachersnumsbrosit;
  // State field(s) for Checkboxmath widget.
  bool? checkboxmathValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxmath widget.
  int? numbersubjectatindex8;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxmath widget.
  int? numbersubjectatindex9;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxmath widget.
  int? vseteachersnum4;
  // State field(s) for Checkboxinf widget.
  bool? checkboxinfValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxinf widget.
  int? numbersubjectatindex10;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxinf widget.
  int? numbersubjectatindex11;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxinf widget.
  int? vseteachersnum5;
  // State field(s) for Checkboxprog widget.
  bool? checkboxprogValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxprog widget.
  int? numbersubjectatindex12;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxprog widget.
  int? numbersubjectatindex13;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxprog widget.
  int? vseteachersnum6;
  // State field(s) for Checkboxrobot widget.
  bool? checkboxrobotValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxrobot widget.
  int? numbersubjectatindex14;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxrobot widget.
  int? numbersubjectatindex15;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxrobot widget.
  int? vseteachersnum12;
  // Stores action output result for [Firestore Query - Query a collection] action in Text widget.
  int? numbersubjectatindexsbrosit1;
  // Stores action output result for [Firestore Query - Query a collection] action in Text widget.
  int? vseteachersnumsbrosit1;
  // State field(s) for Checkboxfiz widget.
  bool? checkboxfizValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxfiz widget.
  int? numbersubjectatindex1;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxfiz widget.
  int? vseteachersnum;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxfiz widget.
  int? numbersubjectatindex;
  // State field(s) for Checkboxhim widget.
  bool? checkboxhimValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxhim widget.
  int? numbersubjectatindex2;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxhim widget.
  int? numbersubjectatindex3;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxhim widget.
  int? vseteachersnum1;
  // State field(s) for Checkboxbio widget.
  bool? checkboxbioValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxbio widget.
  int? numbersubjectatindex4;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxbio widget.
  int? numbersubjectatindex5;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxbio widget.
  int? vseteachersnum2;
  // State field(s) for Checkboxgeo widget.
  bool? checkboxgeoValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxgeo widget.
  int? numbersubjectatindex6;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxgeo widget.
  int? numbersubjectatindex7;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxgeo widget.
  int? vseteachersnum3;
  // Stores action output result for [Firestore Query - Query a collection] action in Text widget.
  int? numbersubjectatindexsbrosit2;
  // Stores action output result for [Firestore Query - Query a collection] action in Text widget.
  int? vseteachersnumsbrosit2;
  // State field(s) for Checkboxkazhis widget.
  bool? checkboxkazhisValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxkazhis widget.
  int? numbersubjectatindexsoc5;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxkazhis widget.
  int? vseteachersnum7;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxkazhis widget.
  int? numbersubjectatindexsoc;
  // State field(s) for Checkboxwrldhis widget.
  bool? checkboxwrldhisValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxwrldhis widget.
  int? numbersubjectatindexsoc1;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxwrldhis widget.
  int? numbersubjectatindexsoc6;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxwrldhis widget.
  int? vseteachersnum8;
  // State field(s) for Checkboxeconomic widget.
  bool? checkboxeconomicValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxeconomic widget.
  int? numbersubjectatindexsoc2;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxeconomic widget.
  int? numbersubjectatindexsoc7;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxeconomic widget.
  int? vseteachersnum9;
  // State field(s) for Checkboxpravo widget.
  bool? checkboxpravoValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxpravo widget.
  int? numbersubjectatindexsoc3;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxpravo widget.
  int? numbersubjectatindexsoc8;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxpravo widget.
  int? vseteachersnum10;
  // State field(s) for Checkboxpredpri widget.
  bool? checkboxpredpriValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxpredpri widget.
  int? numbersubjectatindexsoc4;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxpredpri widget.
  int? numbersubjectatindexsoc9;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxpredpri widget.
  int? vseteachersnum11;
  // Stores action output result for [Firestore Query - Query a collection] action in Text widget.
  int? numbersubjectatindexsbrosit3;
  // Stores action output result for [Firestore Query - Query a collection] action in Text widget.
  int? vseteachersnumsbrosit3;
  // State field(s) for Checkboxkaz widget.
  bool? checkboxkazValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxkaz widget.
  int? numbersubjectatindexling6;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxkaz widget.
  int? vseteachersnum13;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxkaz widget.
  int? numbersubjectatindexling;
  // State field(s) for Checkboxrus widget.
  bool? checkboxrusValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxrus widget.
  int? numbersubjectatindexling1;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxrus widget.
  int? numbersubjectatindexling7;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxrus widget.
  int? vseteachersnum14;
  // State field(s) for Checkboxangl widget.
  bool? checkboxanglValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxangl widget.
  int? numbersubjectatindexling2;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxangl widget.
  int? numbersubjectatindexling8;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxangl widget.
  int? vseteachersnum15;
  // State field(s) for Checkboxkitai widget.
  bool? checkboxkitaiValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxkitai widget.
  int? numbersubjectatindexling3;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxkitai widget.
  int? numbersubjectatindexling9;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxkitai widget.
  int? vseteachersnum18;
  // State field(s) for Checkboxkorei widget.
  bool? checkboxkoreiValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxkorei widget.
  int? numbersubjectatindexling4;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxkorei widget.
  int? numbersubjectatindexling10;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxkorei widget.
  int? vseteachersnum16;
  // State field(s) for Checkboxnemec widget.
  bool? checkboxnemecValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxnemec widget.
  int? numbersubjectatindexling5;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxnemec widget.
  int? numbersubjectatindexling11;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxnemec widget.
  int? vseteachersnum17;
  // Stores action output result for [Firestore Query - Query a collection] action in Text widget.
  int? numbersubjectatindexsbrosit4;
  // Stores action output result for [Firestore Query - Query a collection] action in Text widget.
  int? vseteachersnumsbrosit4;
  // State field(s) for Checkboxolymp widget.
  bool? checkboxolympValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxolymp widget.
  int? numbersubjectatindextip1;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxolymp widget.
  int? vseteachersnum19;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxolymp widget.
  int? numbersubjectatindextip6;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxolymp widget.
  int? vseteachersnum21;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxolymp widget.
  int? numbersubjectatindextip;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxolymp widget.
  int? numbersubjectatindextip4;
  // State field(s) for Checkboxproject widget.
  bool? checkboxprojectValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxproject widget.
  int? numbersubjectatindextip3;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxproject widget.
  int? vseteachersnum20;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxproject widget.
  int? numbersubjectatindextip7;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxproject widget.
  int? vseteachersnum22;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxproject widget.
  int? numbersubjectatindextip2;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkboxproject widget.
  int? numbersubjectatindextip5;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
