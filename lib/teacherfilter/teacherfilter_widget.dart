import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'teacherfilter_model.dart';
export 'teacherfilter_model.dart';

class TeacherfilterWidget extends StatefulWidget {
  const TeacherfilterWidget({
    super.key,
    this.teachers,
  });

  final TeachersRecord? teachers;

  static String routeName = 'teacherfilter';
  static String routePath = '/teacherfilter';

  @override
  State<TeacherfilterWidget> createState() => _TeacherfilterWidgetState();
}

class _TeacherfilterWidgetState extends State<TeacherfilterWidget> {
  late TeacherfilterModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TeacherfilterModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFFEFEFE),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.safePop();
                            },
                            child: Icon(
                              Icons.close,
                              color: FlutterFlowTheme.of(context).black,
                              size: 28.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Фильтр',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).black,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(1.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              safeSetState(() {
                                _model.sliderValue = 0.0;
                              });
                              FFAppState().TeacherListOfSubjects = [];
                              FFAppState().mathisset = false;
                              FFAppState().informatikaisset = false;
                              FFAppState().programmingisset = false;
                              FFAppState().fizikaisset = false;
                              FFAppState().himiaisset = false;
                              FFAppState().biologia = false;
                              FFAppState().geografiaisset = false;
                              FFAppState().kazhistoryisset = false;
                              FFAppState().worldhistoryisset = false;
                              FFAppState().economikaisset = false;
                              FFAppState().pravoisset = false;
                              FFAppState().predprenimatelstvoisset = false;
                              FFAppState().kazahskiisset = false;
                              FFAppState().russkiisset = false;
                              FFAppState().anglisset = false;
                              FFAppState().kitaiskiisset = false;
                              FFAppState().koreiskiisset = false;
                              FFAppState().nemeckiisset = false;
                              FFAppState().olympisset = false;
                              FFAppState().projectisset = false;
                              FFAppState().TeacherListTipDeyatelnosti = [];
                              FFAppState().SliderValueTeacher = 0;
                              FFAppState().update(() {});
                              _model.loopCount = 0;
                              _model.teachersCount = 0;
                              safeSetState(() {});
                              safeSetState(() {
                                _model.checkboxmathValue =
                                    FFAppState().mathisset;
                                _model.checkboxinfValue =
                                    FFAppState().informatikaisset;
                                _model.checkboxprogValue =
                                    FFAppState().programmingisset;
                                _model.checkboxrobotValue =
                                    FFAppState().robototehnikaisset;
                                _model.checkboxfizValue =
                                    FFAppState().fizikaisset;
                                _model.checkboxhimValue =
                                    FFAppState().himiaisset;
                                _model.checkboxbioValue = FFAppState().biologia;
                                _model.checkboxgeoValue =
                                    FFAppState().geografiaisset;
                                _model.checkboxwrldhisValue =
                                    FFAppState().worldhistoryisset;
                                _model.checkboxkazhisValue =
                                    FFAppState().kazhistoryisset;
                                _model.checkboxeconomicValue =
                                    FFAppState().economikaisset;
                                _model.checkboxpravoValue =
                                    FFAppState().pravoisset;
                                _model.checkboxpredpriValue =
                                    FFAppState().predprenimatelstvoisset;
                                _model.checkboxkazValue =
                                    FFAppState().kazahskiisset;
                                _model.checkboxrusValue =
                                    FFAppState().russkiisset;
                                _model.checkboxanglValue =
                                    FFAppState().anglisset;
                                _model.checkboxkitaiValue =
                                    FFAppState().kitaiskiisset;
                                _model.checkboxkoreiValue =
                                    FFAppState().koreiskiisset;
                                _model.checkboxnemecValue =
                                    FFAppState().nemeckiisset;
                                _model.checkboxolympValue =
                                    FFAppState().olympisset;
                                _model.checkboxprojectValue =
                                    FFAppState().projectisset;
                              });
                              _model.vseteachersnumsbrositmain =
                                  await queryTeachersRecordCount();
                              FFAppState().numberofteachersall =
                                  _model.vseteachersnumsbrositmain!;
                              FFAppState().update(() {});

                              safeSetState(() {});
                            },
                            child: Text(
                              'Сбросить',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF485156),
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              14.0, 10.0, 14.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Общее',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context).black,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              14.0, 24.0, 14.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Опыт преподования:  ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .black,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                    TextSpan(
                                      text: FFAppState().SliderValueTeacher == 0
                                          ? ''
                                          : 'от ',
                                      style: TextStyle(),
                                    ),
                                    TextSpan(
                                      text: FFAppState()
                                          .SliderValueTeacher
                                          .toString(),
                                      style: TextStyle(),
                                    ),
                                    TextSpan(
                                      text: FFAppState().SliderValueTeacher == 1
                                          ? ' года'
                                          : ' лет',
                                      style: TextStyle(),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color:
                                            FlutterFlowTheme.of(context).black,
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: Slider.adaptive(
                                  activeColor:
                                      FlutterFlowTheme.of(context).mainColor,
                                  inactiveColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  min: 0.0,
                                  max: 6.0,
                                  value: _model.sliderValue ??= FFAppState()
                                      .SliderValueTeacher
                                      .toDouble(),
                                  divisions: 6,
                                  onChanged: (newValue) {
                                    safeSetState(
                                        () => _model.sliderValue = newValue);
                                    EasyDebounce.debounce(
                                      '_model.sliderValue',
                                      Duration(milliseconds: 150),
                                      () async {
                                        FFAppState().SliderValueTeacher =
                                            functions.doubleToInt(
                                                _model.sliderValue!);
                                        FFAppState().update(() {});
                                        if (FFAppState()
                                            .TeacherListOfSubjects
                                            .isNotEmpty) {
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          while (_model.loopCount <
                                              FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length) {
                                            _model.amama =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                                  .TeacherListTipDeyatelnosti
                                                                  .isNotEmpty
                                                              ? FFAppState()
                                                                  .TeacherListTipDeyatelnosti
                                                              : FFAppState()
                                                                  .faketeacherlist)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState()
                                                                .SliderValueTeacher,
                                                      )
                                                      .where(
                                                        'subject',
                                                        isEqualTo: FFAppState()
                                                            .TeacherListOfSubjects
                                                            .elementAtOrNull(
                                                                _model
                                                                    .loopCount),
                                                      ),
                                            );
                                            _model.loopCount =
                                                _model.loopCount + 1;
                                            _model.teachersCount =
                                                _model.teachersCount +
                                                    _model.amama!;
                                            safeSetState(() {});
                                          }
                                          FFAppState().numberofteachersall =
                                              _model.teachersCount;
                                          FFAppState().update(() {});
                                        } else {
                                          _model.mama =
                                              await queryTeachersRecordCount(
                                            queryBuilder: (teachersRecord) =>
                                                teachersRecord
                                                    .whereIn(
                                                        'typeofactivity',
                                                        FFAppState()
                                                                .TeacherListTipDeyatelnosti
                                                                .isNotEmpty
                                                            ? FFAppState()
                                                                .TeacherListTipDeyatelnosti
                                                            : FFAppState()
                                                                .faketeacherlist)
                                                    .where(
                                                      'experience_years',
                                                      isGreaterThanOrEqualTo:
                                                          FFAppState()
                                                              .SliderValueTeacher,
                                                    ),
                                          );
                                          FFAppState().numberofteachersall =
                                              _model.mama!;
                                          FFAppState().update(() {});
                                        }

                                        safeSetState(() {});
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 18.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().tipdeyatelnostiisset = true;
                              FFAppState().update(() {});
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      14.0, 0.0, 14.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Тип деятельности',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .black,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right,
                                        color: Color(0xB962676B),
                                        size: 22.0,
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        14.0, 12.0, 0.0, 0.0),
                                    child: Container(
                                      width: 360.0,
                                      height: 0.6,
                                      decoration: BoxDecoration(
                                        color: Color(0x5057636C),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              14.0, 24.0, 14.0, 24.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Предметы',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context).black,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().tochnaukiisset = true;
                                FFAppState().update(() {});
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        14.0, 0.0, 14.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Точные науки',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .black,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_right,
                                          color: Color(0xB962676B),
                                          size: 22.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          14.0, 12.0, 0.0, 0.0),
                                      child: Container(
                                        width: 360.0,
                                        height: 0.6,
                                        decoration: BoxDecoration(
                                          color: Color(0x5057636C),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().estestnaukiisset = true;
                                FFAppState().update(() {});
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        14.0, 0.0, 14.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Естественные науки',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .black,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_right,
                                          color: Color(0xB962676B),
                                          size: 22.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          14.0, 12.0, 0.0, 0.0),
                                      child: Container(
                                        width: 360.0,
                                        height: 0.6,
                                        decoration: BoxDecoration(
                                          color: Color(0x5057636C),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().socgumnaukiisset = true;
                                FFAppState().update(() {});
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        14.0, 0.0, 14.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Социально-гуманитарные науки',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .black,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_right,
                                          color: Color(0xB962676B),
                                          size: 22.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          14.0, 12.0, 0.0, 0.0),
                                      child: Container(
                                        width: 360.0,
                                        height: 0.6,
                                        decoration: BoxDecoration(
                                          color: Color(0x5057636C),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().lingvistiknaukiisset = true;
                                FFAppState().update(() {});
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        14.0, 0.0, 14.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Лингвистика',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .black,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_right,
                                          color: Color(0xB962676B),
                                          size: 22.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          14.0, 12.0, 0.0, 0.0),
                                      child: Container(
                                        width: 360.0,
                                        height: 0.6,
                                        decoration: BoxDecoration(
                                          color: Color(0x5057636C),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(SizedBox(height: 10.0)),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.safePop();
                          },
                          text:
                              'Показать ${FFAppState().numberofteachersall.toString()}${((FFAppState().numberofteachersall != 0) && (FFAppState().numberofteachersall < 5)) || ((FFAppState().numberofteachersall == 21) || (FFAppState().numberofteachersall == 22) || (FFAppState().numberofteachersall == 23) || (FFAppState().numberofteachersall == 24) || (FFAppState().numberofteachersall == 32) || (FFAppState().numberofteachersall == 33) || (FFAppState().numberofteachersall == 34) || (FFAppState().numberofteachersall == 31)) ? ' учителя' : ' учителей'}',
                          options: FFButtonOptions(
                            width: 350.0,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).mainColor,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.montserrat(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (FFAppState().tochnaukiisset == true)
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFFEFEFE),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Flexible(
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState().tochnaukiisset = false;
                                    FFAppState().update(() {});
                                  },
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: FlutterFlowTheme.of(context).black,
                                    size: 28.0,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 18.0, 0.0),
                              child: Text(
                                'Точные науки',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                            Flexible(
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    if ((FFAppState().mathisset == true) ||
                                        (FFAppState().programmingisset ==
                                            true) ||
                                        (FFAppState().informatikaisset ==
                                            true) ||
                                        (FFAppState().robototehnikaisset ==
                                            true))
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().mathisset = false;
                                            FFAppState().programmingisset =
                                                false;
                                            FFAppState().informatikaisset =
                                                false;
                                            FFAppState()
                                                .removeFromTeacherListOfSubjects(
                                                    'Математика');
                                            FFAppState().robototehnikaisset =
                                                false;
                                            FFAppState().update(() {});
                                            FFAppState()
                                                .removeFromTeacherListOfSubjects(
                                                    'Информатика');
                                            FFAppState().update(() {});
                                            FFAppState()
                                                .removeFromTeacherListOfSubjects(
                                                    'Программирование');
                                            FFAppState().update(() {});
                                            FFAppState()
                                                .removeFromTeacherListOfSubjects(
                                                    'Робототехника');
                                            FFAppState().update(() {});
                                            safeSetState(() {
                                              _model.checkboxmathValue =
                                                  FFAppState().mathisset;
                                              _model.checkboxinfValue =
                                                  FFAppState().informatikaisset;
                                              _model.checkboxprogValue =
                                                  FFAppState().programmingisset;
                                              _model.checkboxrobotValue =
                                                  FFAppState()
                                                      .robototehnikaisset;
                                            });
                                            _model.loopCount = 0;
                                            _model.teachersCount = 0;
                                            safeSetState(() {});
                                            if (FFAppState()
                                                    .TeacherListOfSubjects
                                                    .length >
                                                0) {
                                              while (_model.loopCount <
                                                  FFAppState()
                                                      .TeacherListOfSubjects
                                                      .length) {
                                                _model.numbersubjectatindexsbrosit =
                                                    await queryTeachersRecordCount(
                                                  queryBuilder:
                                                      (teachersRecord) =>
                                                          teachersRecord.where(
                                                    'subject',
                                                    isEqualTo: FFAppState()
                                                        .TeacherListOfSubjects
                                                        .elementAtOrNull(
                                                            _model.loopCount),
                                                  ),
                                                );
                                                _model.loopCount =
                                                    _model.loopCount + 1;
                                                _model.teachersCount = _model
                                                        .teachersCount +
                                                    _model
                                                        .numbersubjectatindexsbrosit!;
                                                safeSetState(() {});
                                              }
                                              FFAppState().numberofteachersall =
                                                  _model.teachersCount;
                                              FFAppState().update(() {});
                                            } else {
                                              _model.vseteachersnumsbrosit =
                                                  await queryTeachersRecordCount();
                                              FFAppState().numberofteachersall =
                                                  _model.vseteachersnumsbrosit!;
                                              FFAppState().update(() {});
                                            }

                                            safeSetState(() {});
                                          },
                                          child: Text(
                                            'Сбросить',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 13.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Математика',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .black,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxmathValue ??=
                                          FFAppState().mathisset,
                                      onChanged: (newValue) async {
                                        safeSetState(() => _model
                                            .checkboxmathValue = newValue!);
                                        if (newValue!) {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .addToTeacherListOfSubjects(
                                                  'Математика');
                                          FFAppState().mathisset = true;
                                          FFAppState().update(() {});
                                          while (_model.loopCount <
                                              FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length) {
                                            _model.numbersubjectatindex8 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .where(
                                                        'subject',
                                                        isEqualTo: FFAppState()
                                                            .TeacherListOfSubjects
                                                            .elementAtOrNull(
                                                                _model
                                                                    .loopCount),
                                                      )
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            _model.loopCount =
                                                _model.loopCount + 1;
                                            _model.teachersCount = _model
                                                    .teachersCount +
                                                _model.numbersubjectatindex8!;
                                            safeSetState(() {});
                                          }
                                          FFAppState().numberofteachersall =
                                              _model.teachersCount;
                                          FFAppState().update(() {});

                                          safeSetState(() {});
                                        } else {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .removeFromTeacherListOfSubjects(
                                                  'Математика');
                                          FFAppState().mathisset = false;
                                          FFAppState().update(() {});
                                          if (FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length >
                                              0) {
                                            while (_model.loopCount <
                                                FFAppState()
                                                    .TeacherListOfSubjects
                                                    .length) {
                                              _model.numbersubjectatindex9 =
                                                  await queryTeachersRecordCount(
                                                queryBuilder: (teachersRecord) =>
                                                    teachersRecord
                                                        .where(
                                                          'subject',
                                                          isEqualTo: FFAppState()
                                                              .TeacherListOfSubjects
                                                              .elementAtOrNull(
                                                                  _model
                                                                      .loopCount),
                                                        )
                                                        .whereIn(
                                                            'typeofactivity',
                                                            FFAppState()
                                                                .TeacherListTipDeyatelnosti)
                                                        .where(
                                                          'experience_years',
                                                          isGreaterThanOrEqualTo:
                                                              FFAppState().SliderValueTeacher !=
                                                                      null
                                                                  ? FFAppState()
                                                                      .SliderValueTeacher
                                                                  : 0,
                                                        ),
                                              );
                                              _model.loopCount =
                                                  _model.loopCount + 1;
                                              _model.teachersCount = _model
                                                      .teachersCount +
                                                  _model.numbersubjectatindex9!;
                                              safeSetState(() {});
                                            }
                                            FFAppState().numberofteachersall =
                                                _model.teachersCount;
                                            FFAppState().update(() {});
                                          } else {
                                            _model.vseteachersnum4 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            FFAppState().numberofteachersall =
                                                _model.vseteachersnum4!;
                                            FFAppState().update(() {});
                                          }

                                          safeSetState(() {});
                                        }
                                      },
                                      side: (FlutterFlowTheme.of(context)
                                                  .alternate !=
                                              null)
                                          ? BorderSide(
                                              width: 2,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate!,
                                            )
                                          : null,
                                      activeColor: FlutterFlowTheme.of(context)
                                          .mainColor,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Информатика',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .black,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxinfValue ??=
                                          FFAppState().informatikaisset,
                                      onChanged: (newValue) async {
                                        safeSetState(() => _model
                                            .checkboxinfValue = newValue!);
                                        if (newValue!) {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .addToTeacherListOfSubjects(
                                                  'Информатика');
                                          FFAppState().informatikaisset = true;
                                          FFAppState().update(() {});
                                          while (_model.loopCount <
                                              FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length) {
                                            _model.numbersubjectatindex10 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .where(
                                                        'subject',
                                                        isEqualTo: FFAppState()
                                                            .TeacherListOfSubjects
                                                            .elementAtOrNull(
                                                                _model
                                                                    .loopCount),
                                                      )
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            _model.loopCount =
                                                _model.loopCount + 1;
                                            _model.teachersCount = _model
                                                    .teachersCount +
                                                _model.numbersubjectatindex10!;
                                            safeSetState(() {});
                                          }
                                          FFAppState().numberofteachersall =
                                              _model.teachersCount;
                                          FFAppState().update(() {});

                                          safeSetState(() {});
                                        } else {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .removeFromTeacherListOfSubjects(
                                                  'Информатика');
                                          FFAppState().informatikaisset = false;
                                          FFAppState().update(() {});
                                          if (FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length >
                                              0) {
                                            while (_model.loopCount <
                                                FFAppState()
                                                    .TeacherListOfSubjects
                                                    .length) {
                                              _model.numbersubjectatindex11 =
                                                  await queryTeachersRecordCount(
                                                queryBuilder: (teachersRecord) =>
                                                    teachersRecord
                                                        .where(
                                                          'subject',
                                                          isEqualTo: FFAppState()
                                                              .TeacherListOfSubjects
                                                              .elementAtOrNull(
                                                                  _model
                                                                      .loopCount),
                                                        )
                                                        .whereIn(
                                                            'typeofactivity',
                                                            FFAppState()
                                                                .TeacherListTipDeyatelnosti)
                                                        .where(
                                                          'experience_years',
                                                          isGreaterThanOrEqualTo:
                                                              FFAppState().SliderValueTeacher !=
                                                                      null
                                                                  ? FFAppState()
                                                                      .SliderValueTeacher
                                                                  : 0,
                                                        ),
                                              );
                                              _model.loopCount =
                                                  _model.loopCount + 1;
                                              _model.teachersCount = _model
                                                      .teachersCount +
                                                  _model
                                                      .numbersubjectatindex11!;
                                              safeSetState(() {});
                                            }
                                            FFAppState().numberofteachersall =
                                                _model.teachersCount;
                                            FFAppState().update(() {});
                                          } else {
                                            _model.vseteachersnum5 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            FFAppState().numberofteachersall =
                                                _model.vseteachersnum5!;
                                            FFAppState().update(() {});
                                          }

                                          safeSetState(() {});
                                        }
                                      },
                                      side: (FlutterFlowTheme.of(context)
                                                  .alternate !=
                                              null)
                                          ? BorderSide(
                                              width: 2,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate!,
                                            )
                                          : null,
                                      activeColor: FlutterFlowTheme.of(context)
                                          .mainColor,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Программирование',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .black,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxprogValue ??=
                                          FFAppState().programmingisset,
                                      onChanged: (newValue) async {
                                        safeSetState(() => _model
                                            .checkboxprogValue = newValue!);
                                        if (newValue!) {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .addToTeacherListOfSubjects(
                                                  'Программирование');
                                          FFAppState().programmingisset = true;
                                          FFAppState().update(() {});
                                          while (_model.loopCount <
                                              FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length) {
                                            _model.numbersubjectatindex12 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .where(
                                                        'subject',
                                                        isEqualTo: FFAppState()
                                                            .TeacherListOfSubjects
                                                            .elementAtOrNull(
                                                                _model
                                                                    .loopCount),
                                                      )
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            _model.loopCount =
                                                _model.loopCount + 1;
                                            _model.teachersCount = _model
                                                    .teachersCount +
                                                _model.numbersubjectatindex12!;
                                            safeSetState(() {});
                                          }
                                          FFAppState().numberofteachersall =
                                              _model.teachersCount;
                                          FFAppState().update(() {});

                                          safeSetState(() {});
                                        } else {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .removeFromTeacherListOfSubjects(
                                                  'Программирование');
                                          FFAppState().programmingisset = false;
                                          FFAppState().update(() {});
                                          if (FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length >
                                              0) {
                                            while (_model.loopCount <
                                                FFAppState()
                                                    .TeacherListOfSubjects
                                                    .length) {
                                              _model.numbersubjectatindex13 =
                                                  await queryTeachersRecordCount(
                                                queryBuilder: (teachersRecord) =>
                                                    teachersRecord
                                                        .where(
                                                          'subject',
                                                          isEqualTo: FFAppState()
                                                              .TeacherListOfSubjects
                                                              .elementAtOrNull(
                                                                  _model
                                                                      .loopCount),
                                                        )
                                                        .whereIn(
                                                            'typeofactivity',
                                                            FFAppState()
                                                                .TeacherListTipDeyatelnosti)
                                                        .where(
                                                          'experience_years',
                                                          isGreaterThanOrEqualTo:
                                                              FFAppState().SliderValueTeacher !=
                                                                      null
                                                                  ? FFAppState()
                                                                      .SliderValueTeacher
                                                                  : 0,
                                                        ),
                                              );
                                              _model.loopCount =
                                                  _model.loopCount + 1;
                                              _model.teachersCount = _model
                                                      .teachersCount +
                                                  _model
                                                      .numbersubjectatindex13!;
                                              safeSetState(() {});
                                            }
                                            FFAppState().numberofteachersall =
                                                _model.teachersCount;
                                            FFAppState().update(() {});
                                          } else {
                                            _model.vseteachersnum6 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            FFAppState().numberofteachersall =
                                                _model.vseteachersnum6!;
                                            FFAppState().update(() {});
                                          }

                                          safeSetState(() {});
                                        }
                                      },
                                      side: (FlutterFlowTheme.of(context)
                                                  .alternate !=
                                              null)
                                          ? BorderSide(
                                              width: 2,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate!,
                                            )
                                          : null,
                                      activeColor: FlutterFlowTheme.of(context)
                                          .mainColor,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Робототехника',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .black,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxrobotValue ??=
                                          FFAppState().robototehnikaisset,
                                      onChanged: (newValue) async {
                                        safeSetState(() => _model
                                            .checkboxrobotValue = newValue!);
                                        if (newValue!) {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .addToTeacherListOfSubjects(
                                                  'Робототехника');
                                          FFAppState().robototehnikaisset =
                                              true;
                                          FFAppState().update(() {});
                                          while (_model.loopCount <
                                              FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length) {
                                            _model.numbersubjectatindex14 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .where(
                                                        'subject',
                                                        isEqualTo: FFAppState()
                                                            .TeacherListOfSubjects
                                                            .elementAtOrNull(
                                                                _model
                                                                    .loopCount),
                                                      )
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            _model.loopCount =
                                                _model.loopCount + 1;
                                            _model.teachersCount = _model
                                                    .teachersCount +
                                                _model.numbersubjectatindex14!;
                                            safeSetState(() {});
                                          }
                                          FFAppState().numberofteachersall =
                                              _model.teachersCount;
                                          FFAppState().update(() {});

                                          safeSetState(() {});
                                        } else {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .removeFromTeacherListOfSubjects(
                                                  'Робототехника');
                                          FFAppState().robototehnikaisset =
                                              false;
                                          FFAppState().update(() {});
                                          if (FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length >
                                              0) {
                                            while (_model.loopCount <
                                                FFAppState()
                                                    .TeacherListOfSubjects
                                                    .length) {
                                              _model.numbersubjectatindex15 =
                                                  await queryTeachersRecordCount(
                                                queryBuilder: (teachersRecord) =>
                                                    teachersRecord
                                                        .where(
                                                          'subject',
                                                          isEqualTo: FFAppState()
                                                              .TeacherListOfSubjects
                                                              .elementAtOrNull(
                                                                  _model
                                                                      .loopCount),
                                                        )
                                                        .whereIn(
                                                            'typeofactivity',
                                                            FFAppState()
                                                                .TeacherListTipDeyatelnosti)
                                                        .where(
                                                          'experience_years',
                                                          isGreaterThanOrEqualTo:
                                                              FFAppState().SliderValueTeacher !=
                                                                      null
                                                                  ? FFAppState()
                                                                      .SliderValueTeacher
                                                                  : 0,
                                                        ),
                                              );
                                              _model.loopCount =
                                                  _model.loopCount + 1;
                                              _model.teachersCount = _model
                                                      .teachersCount +
                                                  _model
                                                      .numbersubjectatindex15!;
                                              safeSetState(() {});
                                            }
                                            FFAppState().numberofteachersall =
                                                _model.teachersCount;
                                            FFAppState().update(() {});
                                          } else {
                                            _model.vseteachersnum12 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            FFAppState().numberofteachersall =
                                                _model.vseteachersnum12!;
                                            FFAppState().update(() {});
                                          }

                                          safeSetState(() {});
                                        }
                                      },
                                      side: (FlutterFlowTheme.of(context)
                                                  .alternate !=
                                              null)
                                          ? BorderSide(
                                              width: 2,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate!,
                                            )
                                          : null,
                                      activeColor: FlutterFlowTheme.of(context)
                                          .mainColor,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 30.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                FFAppState().tochnaukiisset = false;
                                FFAppState().update(() {});
                              },
                              text:
                                  'Показать ${FFAppState().numberofteachersall.toString()}${((FFAppState().numberofteachersall != 0) && (FFAppState().numberofteachersall < 5)) || ((FFAppState().numberofteachersall == 21) || (FFAppState().numberofteachersall == 22) || (FFAppState().numberofteachersall == 23) || (FFAppState().numberofteachersall == 24) || (FFAppState().numberofteachersall == 32) || (FFAppState().numberofteachersall == 33) || (FFAppState().numberofteachersall == 34) || (FFAppState().numberofteachersall == 31)) ? ' учителя' : ' учителей'}',
                              options: FFButtonOptions(
                                width: 350.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).mainColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.montserrat(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      fontSize: 15.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            if (FFAppState().estestnaukiisset == true)
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFFEFEFE),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Flexible(
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState().estestnaukiisset = false;
                                    FFAppState().update(() {});
                                  },
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: FlutterFlowTheme.of(context).black,
                                    size: 28.0,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 18.0, 0.0),
                              child: Text(
                                'Естественные науки',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                            Flexible(
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    if ((FFAppState().fizikaisset == true) ||
                                        (FFAppState().himiaisset == true) ||
                                        (FFAppState().biologia == true) ||
                                        (FFAppState().geografiaisset == true))
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().fizikaisset = false;
                                            FFAppState().himiaisset = false;
                                            FFAppState().biologia = false;
                                            FFAppState().geografiaisset = false;
                                            FFAppState()
                                                .removeFromTeacherListOfSubjects(
                                                    'Физика');
                                            FFAppState().update(() {});
                                            FFAppState()
                                                .removeFromTeacherListOfSubjects(
                                                    'Химия');
                                            FFAppState().update(() {});
                                            FFAppState()
                                                .removeFromTeacherListOfSubjects(
                                                    'Биология');
                                            FFAppState().update(() {});
                                            FFAppState()
                                                .removeFromTeacherListOfSubjects(
                                                    'География');
                                            FFAppState().update(() {});
                                            safeSetState(() {
                                              _model.checkboxfizValue =
                                                  FFAppState().fizikaisset;
                                              _model.checkboxhimValue =
                                                  FFAppState().himiaisset;
                                              _model.checkboxbioValue =
                                                  FFAppState().biologia;
                                              _model.checkboxgeoValue =
                                                  FFAppState().geografiaisset;
                                            });
                                            _model.loopCount = 0;
                                            _model.teachersCount = 0;
                                            safeSetState(() {});
                                            if (FFAppState()
                                                    .TeacherListOfSubjects
                                                    .length >
                                                0) {
                                              while (_model.loopCount <
                                                  FFAppState()
                                                      .TeacherListOfSubjects
                                                      .length) {
                                                _model.numbersubjectatindexsbrosit1 =
                                                    await queryTeachersRecordCount(
                                                  queryBuilder:
                                                      (teachersRecord) =>
                                                          teachersRecord.where(
                                                    'subject',
                                                    isEqualTo: FFAppState()
                                                        .TeacherListOfSubjects
                                                        .elementAtOrNull(
                                                            _model.loopCount),
                                                  ),
                                                );
                                                _model.loopCount =
                                                    _model.loopCount + 1;
                                                _model.teachersCount = _model
                                                        .teachersCount +
                                                    _model
                                                        .numbersubjectatindexsbrosit1!;
                                                safeSetState(() {});
                                              }
                                              FFAppState().numberofteachersall =
                                                  _model.teachersCount;
                                              FFAppState().update(() {});
                                            } else {
                                              _model.vseteachersnumsbrosit1 =
                                                  await queryTeachersRecordCount();
                                              FFAppState().numberofteachersall =
                                                  _model
                                                      .vseteachersnumsbrosit1!;
                                              FFAppState().update(() {});
                                            }

                                            safeSetState(() {});
                                          },
                                          child: Text(
                                            'Сбросить',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 13.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Физика',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .black,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxfizValue ??=
                                          FFAppState().fizikaisset,
                                      onChanged: (newValue) async {
                                        safeSetState(() => _model
                                            .checkboxfizValue = newValue!);
                                        if (newValue!) {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .addToTeacherListOfSubjects(
                                                  'Физика');
                                          FFAppState().fizikaisset = true;
                                          FFAppState().update(() {});
                                          while (_model.loopCount <
                                              FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length) {
                                            _model.numbersubjectatindex =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .where(
                                                        'subject',
                                                        isEqualTo: FFAppState()
                                                            .TeacherListOfSubjects
                                                            .elementAtOrNull(
                                                                _model
                                                                    .loopCount),
                                                      )
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            _model.loopCount =
                                                _model.loopCount + 1;
                                            _model.teachersCount = _model
                                                    .teachersCount +
                                                _model.numbersubjectatindex!;
                                            safeSetState(() {});
                                          }
                                          FFAppState().numberofteachersall =
                                              _model.teachersCount;
                                          FFAppState().update(() {});

                                          safeSetState(() {});
                                        } else {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState().fizikaisset = false;
                                          FFAppState()
                                              .removeFromTeacherListOfSubjects(
                                                  'Физика');
                                          FFAppState().update(() {});
                                          if (FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length >
                                              0) {
                                            while (_model.loopCount <
                                                FFAppState()
                                                    .TeacherListOfSubjects
                                                    .length) {
                                              _model.numbersubjectatindex1 =
                                                  await queryTeachersRecordCount(
                                                queryBuilder: (teachersRecord) =>
                                                    teachersRecord
                                                        .where(
                                                          'subject',
                                                          isEqualTo: FFAppState()
                                                              .TeacherListOfSubjects
                                                              .elementAtOrNull(
                                                                  _model
                                                                      .loopCount),
                                                        )
                                                        .whereIn(
                                                            'typeofactivity',
                                                            FFAppState()
                                                                .TeacherListTipDeyatelnosti)
                                                        .where(
                                                          'experience_years',
                                                          isGreaterThanOrEqualTo:
                                                              FFAppState().SliderValueTeacher !=
                                                                      null
                                                                  ? FFAppState()
                                                                      .SliderValueTeacher
                                                                  : 0,
                                                        ),
                                              );
                                              _model.loopCount =
                                                  _model.loopCount + 1;
                                              _model.teachersCount = _model
                                                      .teachersCount +
                                                  _model.numbersubjectatindex1!;
                                              safeSetState(() {});
                                            }
                                            FFAppState().numberofteachersall =
                                                _model.teachersCount;
                                            FFAppState().update(() {});
                                          } else {
                                            _model.vseteachersnum =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            FFAppState().numberofteachersall =
                                                _model.vseteachersnum!;
                                            FFAppState().update(() {});
                                          }

                                          safeSetState(() {});
                                        }
                                      },
                                      side: (FlutterFlowTheme.of(context)
                                                  .alternate !=
                                              null)
                                          ? BorderSide(
                                              width: 2,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate!,
                                            )
                                          : null,
                                      activeColor: FlutterFlowTheme.of(context)
                                          .mainColor,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Химия',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .black,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxhimValue ??=
                                          FFAppState().himiaisset,
                                      onChanged: (newValue) async {
                                        safeSetState(() => _model
                                            .checkboxhimValue = newValue!);
                                        if (newValue!) {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .addToTeacherListOfSubjects(
                                                  'Химия');
                                          FFAppState().himiaisset = true;
                                          FFAppState().update(() {});
                                          while (_model.loopCount <
                                              FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length) {
                                            _model.numbersubjectatindex2 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .where(
                                                        'subject',
                                                        isEqualTo: FFAppState()
                                                            .TeacherListOfSubjects
                                                            .elementAtOrNull(
                                                                _model
                                                                    .loopCount),
                                                      )
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            _model.loopCount =
                                                _model.loopCount + 1;
                                            _model.teachersCount = _model
                                                    .teachersCount +
                                                _model.numbersubjectatindex2!;
                                            safeSetState(() {});
                                          }
                                          FFAppState().numberofteachersall =
                                              _model.teachersCount;
                                          FFAppState().update(() {});

                                          safeSetState(() {});
                                        } else {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .removeFromTeacherListOfSubjects(
                                                  'Химия');
                                          FFAppState().himiaisset = false;
                                          FFAppState().update(() {});
                                          if (FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length >
                                              0) {
                                            while (_model.loopCount <
                                                FFAppState()
                                                    .TeacherListOfSubjects
                                                    .length) {
                                              _model.numbersubjectatindex3 =
                                                  await queryTeachersRecordCount(
                                                queryBuilder: (teachersRecord) =>
                                                    teachersRecord
                                                        .where(
                                                          'subject',
                                                          isEqualTo: FFAppState()
                                                              .TeacherListOfSubjects
                                                              .elementAtOrNull(
                                                                  _model
                                                                      .loopCount),
                                                        )
                                                        .whereIn(
                                                            'typeofactivity',
                                                            FFAppState()
                                                                .TeacherListTipDeyatelnosti)
                                                        .where(
                                                          'experience_years',
                                                          isGreaterThanOrEqualTo:
                                                              FFAppState().SliderValueTeacher !=
                                                                      null
                                                                  ? FFAppState()
                                                                      .SliderValueTeacher
                                                                  : 0,
                                                        ),
                                              );
                                              _model.loopCount =
                                                  _model.loopCount + 1;
                                              _model.teachersCount = _model
                                                      .teachersCount +
                                                  _model.numbersubjectatindex3!;
                                              safeSetState(() {});
                                            }
                                            FFAppState().numberofteachersall =
                                                _model.teachersCount;
                                            FFAppState().update(() {});
                                          } else {
                                            _model.vseteachersnum1 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            FFAppState().numberofteachersall =
                                                _model.vseteachersnum1!;
                                            FFAppState().update(() {});
                                          }

                                          safeSetState(() {});
                                        }
                                      },
                                      side: (FlutterFlowTheme.of(context)
                                                  .alternate !=
                                              null)
                                          ? BorderSide(
                                              width: 2,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate!,
                                            )
                                          : null,
                                      activeColor: FlutterFlowTheme.of(context)
                                          .mainColor,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Биология',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .black,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxbioValue ??=
                                          FFAppState().biologia,
                                      onChanged: (newValue) async {
                                        safeSetState(() => _model
                                            .checkboxbioValue = newValue!);
                                        if (newValue!) {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .addToTeacherListOfSubjects(
                                                  'Биология');
                                          FFAppState().biologia = true;
                                          FFAppState().update(() {});
                                          while (_model.loopCount <
                                              FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length) {
                                            _model.numbersubjectatindex4 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .where(
                                                        'subject',
                                                        isEqualTo: FFAppState()
                                                            .TeacherListOfSubjects
                                                            .elementAtOrNull(
                                                                _model
                                                                    .loopCount),
                                                      )
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            _model.loopCount =
                                                _model.loopCount + 1;
                                            _model.teachersCount = _model
                                                    .teachersCount +
                                                _model.numbersubjectatindex4!;
                                            safeSetState(() {});
                                          }
                                          FFAppState().numberofteachersall =
                                              _model.teachersCount;
                                          FFAppState().update(() {});

                                          safeSetState(() {});
                                        } else {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .removeFromTeacherListOfSubjects(
                                                  'Биология');
                                          FFAppState().biologia = false;
                                          FFAppState().update(() {});
                                          if (FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length >
                                              0) {
                                            while (_model.loopCount <
                                                FFAppState()
                                                    .TeacherListOfSubjects
                                                    .length) {
                                              _model.numbersubjectatindex5 =
                                                  await queryTeachersRecordCount(
                                                queryBuilder: (teachersRecord) =>
                                                    teachersRecord
                                                        .where(
                                                          'subject',
                                                          isEqualTo: FFAppState()
                                                              .TeacherListOfSubjects
                                                              .elementAtOrNull(
                                                                  _model
                                                                      .loopCount),
                                                        )
                                                        .whereIn(
                                                            'typeofactivity',
                                                            FFAppState()
                                                                .TeacherListTipDeyatelnosti)
                                                        .where(
                                                          'experience_years',
                                                          isGreaterThanOrEqualTo:
                                                              FFAppState().SliderValueTeacher !=
                                                                      null
                                                                  ? FFAppState()
                                                                      .SliderValueTeacher
                                                                  : 0,
                                                        ),
                                              );
                                              _model.loopCount =
                                                  _model.loopCount + 1;
                                              _model.teachersCount = _model
                                                      .teachersCount +
                                                  _model.numbersubjectatindex5!;
                                              safeSetState(() {});
                                            }
                                            FFAppState().numberofteachersall =
                                                _model.teachersCount;
                                            FFAppState().update(() {});
                                          } else {
                                            _model.vseteachersnum2 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            FFAppState().numberofteachersall =
                                                _model.vseteachersnum2!;
                                            FFAppState().update(() {});
                                          }

                                          safeSetState(() {});
                                        }
                                      },
                                      side: (FlutterFlowTheme.of(context)
                                                  .alternate !=
                                              null)
                                          ? BorderSide(
                                              width: 2,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate!,
                                            )
                                          : null,
                                      activeColor: FlutterFlowTheme.of(context)
                                          .mainColor,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'География',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .black,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxgeoValue ??=
                                          FFAppState().geografiaisset,
                                      onChanged: (newValue) async {
                                        safeSetState(() => _model
                                            .checkboxgeoValue = newValue!);
                                        if (newValue!) {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .addToTeacherListOfSubjects(
                                                  'География');
                                          FFAppState().geografiaisset = true;
                                          FFAppState().update(() {});
                                          while (_model.loopCount <
                                              FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length) {
                                            _model.numbersubjectatindex6 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .where(
                                                        'subject',
                                                        isEqualTo: FFAppState()
                                                            .TeacherListOfSubjects
                                                            .elementAtOrNull(
                                                                _model
                                                                    .loopCount),
                                                      )
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            _model.loopCount =
                                                _model.loopCount + 1;
                                            _model.teachersCount = _model
                                                    .teachersCount +
                                                _model.numbersubjectatindex6!;
                                            safeSetState(() {});
                                          }
                                          FFAppState().numberofteachersall =
                                              _model.teachersCount;
                                          FFAppState().update(() {});

                                          safeSetState(() {});
                                        } else {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .removeFromTeacherListOfSubjects(
                                                  'География');
                                          FFAppState().geografiaisset = false;
                                          FFAppState().update(() {});
                                          if (FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length >
                                              0) {
                                            while (_model.loopCount <
                                                FFAppState()
                                                    .TeacherListOfSubjects
                                                    .length) {
                                              _model.numbersubjectatindex7 =
                                                  await queryTeachersRecordCount(
                                                queryBuilder: (teachersRecord) =>
                                                    teachersRecord
                                                        .where(
                                                          'subject',
                                                          isEqualTo: FFAppState()
                                                              .TeacherListOfSubjects
                                                              .elementAtOrNull(
                                                                  _model
                                                                      .loopCount),
                                                        )
                                                        .whereIn(
                                                            'typeofactivity',
                                                            FFAppState()
                                                                .TeacherListTipDeyatelnosti)
                                                        .where(
                                                          'experience_years',
                                                          isGreaterThanOrEqualTo:
                                                              FFAppState().SliderValueTeacher !=
                                                                      null
                                                                  ? FFAppState()
                                                                      .SliderValueTeacher
                                                                  : 0,
                                                        ),
                                              );
                                              _model.loopCount =
                                                  _model.loopCount + 1;
                                              _model.teachersCount = _model
                                                      .teachersCount +
                                                  _model.numbersubjectatindex7!;
                                              safeSetState(() {});
                                            }
                                            FFAppState().numberofteachersall =
                                                _model.teachersCount;
                                            FFAppState().update(() {});
                                          } else {
                                            _model.vseteachersnum3 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            FFAppState().numberofteachersall =
                                                _model.vseteachersnum3!;
                                            FFAppState().update(() {});
                                          }

                                          safeSetState(() {});
                                        }
                                      },
                                      side: (FlutterFlowTheme.of(context)
                                                  .alternate !=
                                              null)
                                          ? BorderSide(
                                              width: 2,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate!,
                                            )
                                          : null,
                                      activeColor: FlutterFlowTheme.of(context)
                                          .mainColor,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 30.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                FFAppState().estestnaukiisset = false;
                                FFAppState().update(() {});
                              },
                              text:
                                  'Показать ${FFAppState().numberofteachersall.toString()}${((FFAppState().numberofteachersall != 0) && (FFAppState().numberofteachersall < 5)) || ((FFAppState().numberofteachersall == 21) || (FFAppState().numberofteachersall == 22) || (FFAppState().numberofteachersall == 23) || (FFAppState().numberofteachersall == 24) || (FFAppState().numberofteachersall == 32) || (FFAppState().numberofteachersall == 33) || (FFAppState().numberofteachersall == 34) || (FFAppState().numberofteachersall == 31)) ? ' учителя' : ' учителей'}',
                              options: FFButtonOptions(
                                width: 350.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).mainColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.montserrat(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      fontSize: 15.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            if (FFAppState().socgumnaukiisset == true)
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFFEFEFE),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Flexible(
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState().socgumnaukiisset = false;
                                    FFAppState().update(() {});
                                  },
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: FlutterFlowTheme.of(context).black,
                                    size: 28.0,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Соц-гум науки',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                            Flexible(
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    if ((FFAppState().kazhistoryisset ==
                                            true) ||
                                        (FFAppState().worldhistoryisset ==
                                            true) ||
                                        (FFAppState().economikaisset == true) ||
                                        (FFAppState().pravoisset == true) ||
                                        (FFAppState().predprenimatelstvoisset ==
                                            true))
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState()
                                                .removeFromTeacherListOfSubjects(
                                                    'История Казахстана');
                                            FFAppState().kazhistoryisset =
                                                false;
                                            FFAppState().worldhistoryisset =
                                                false;
                                            FFAppState().economikaisset = false;
                                            FFAppState().pravoisset = false;
                                            FFAppState()
                                                    .predprenimatelstvoisset =
                                                false;
                                            FFAppState().update(() {});
                                            FFAppState()
                                                .removeFromTeacherListOfSubjects(
                                                    'Всемирная история');
                                            FFAppState().update(() {});
                                            FFAppState()
                                                .removeFromTeacherListOfSubjects(
                                                    'Экономика');
                                            FFAppState().update(() {});
                                            FFAppState()
                                                .removeFromTeacherListOfSubjects(
                                                    'Право');
                                            FFAppState().update(() {});
                                            FFAppState()
                                                .removeFromTeacherListOfSubjects(
                                                    'Предпринимательство');
                                            FFAppState().update(() {});
                                            safeSetState(() {
                                              _model.checkboxkazhisValue =
                                                  FFAppState().kazhistoryisset;
                                              _model.checkboxwrldhisValue =
                                                  FFAppState()
                                                      .worldhistoryisset;
                                              _model.checkboxeconomicValue =
                                                  FFAppState().economikaisset;
                                              _model.checkboxpravoValue =
                                                  FFAppState().pravoisset;
                                              _model.checkboxpredpriValue =
                                                  FFAppState()
                                                      .predprenimatelstvoisset;
                                            });
                                            _model.loopCount = 0;
                                            _model.teachersCount = 0;
                                            safeSetState(() {});
                                            if (FFAppState()
                                                    .TeacherListOfSubjects
                                                    .length >
                                                0) {
                                              while (_model.loopCount <
                                                  FFAppState()
                                                      .TeacherListOfSubjects
                                                      .length) {
                                                _model.numbersubjectatindexsbrosit2 =
                                                    await queryTeachersRecordCount(
                                                  queryBuilder:
                                                      (teachersRecord) =>
                                                          teachersRecord.where(
                                                    'subject',
                                                    isEqualTo: FFAppState()
                                                        .TeacherListOfSubjects
                                                        .elementAtOrNull(
                                                            _model.loopCount),
                                                  ),
                                                );
                                                _model.loopCount =
                                                    _model.loopCount + 1;
                                                _model.teachersCount = _model
                                                        .teachersCount +
                                                    _model
                                                        .numbersubjectatindexsbrosit2!;
                                                safeSetState(() {});
                                              }
                                              FFAppState().numberofteachersall =
                                                  _model.teachersCount;
                                              FFAppState().update(() {});
                                            } else {
                                              _model.vseteachersnumsbrosit2 =
                                                  await queryTeachersRecordCount();
                                              FFAppState().numberofteachersall =
                                                  _model
                                                      .vseteachersnumsbrosit2!;
                                              FFAppState().update(() {});
                                            }

                                            safeSetState(() {});
                                          },
                                          child: Text(
                                            'Сбросить',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 13.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'История Казахстана',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .black,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxkazhisValue ??=
                                          FFAppState().kazhistoryisset,
                                      onChanged: (newValue) async {
                                        safeSetState(() => _model
                                            .checkboxkazhisValue = newValue!);
                                        if (newValue!) {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .addToTeacherListOfSubjects(
                                                  'История Казахстана');
                                          FFAppState().kazhistoryisset = true;
                                          FFAppState().update(() {});
                                          while (_model.loopCount <
                                              FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length) {
                                            _model.numbersubjectatindexsoc =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .where(
                                                        'subject',
                                                        isEqualTo: FFAppState()
                                                            .TeacherListOfSubjects
                                                            .elementAtOrNull(
                                                                _model
                                                                    .loopCount),
                                                      )
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            _model.loopCount =
                                                _model.loopCount + 1;
                                            _model.teachersCount = _model
                                                    .teachersCount +
                                                _model.numbersubjectatindexsoc!;
                                            safeSetState(() {});
                                          }
                                          FFAppState().numberofteachersall =
                                              _model.teachersCount;
                                          FFAppState().update(() {});

                                          safeSetState(() {});
                                        } else {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .removeFromTeacherListOfSubjects(
                                                  'История Казахстана');
                                          FFAppState().kazhistoryisset = false;
                                          FFAppState().update(() {});
                                          if (FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length >
                                              0) {
                                            while (_model.loopCount <
                                                FFAppState()
                                                    .TeacherListOfSubjects
                                                    .length) {
                                              _model.numbersubjectatindexsoc5 =
                                                  await queryTeachersRecordCount(
                                                queryBuilder: (teachersRecord) =>
                                                    teachersRecord
                                                        .where(
                                                          'subject',
                                                          isEqualTo: FFAppState()
                                                              .TeacherListOfSubjects
                                                              .elementAtOrNull(
                                                                  _model
                                                                      .loopCount),
                                                        )
                                                        .whereIn(
                                                            'typeofactivity',
                                                            FFAppState()
                                                                .TeacherListTipDeyatelnosti)
                                                        .where(
                                                          'experience_years',
                                                          isGreaterThanOrEqualTo:
                                                              FFAppState().SliderValueTeacher !=
                                                                      null
                                                                  ? FFAppState()
                                                                      .SliderValueTeacher
                                                                  : 0,
                                                        ),
                                              );
                                              _model.loopCount =
                                                  _model.loopCount + 1;
                                              _model.teachersCount = _model
                                                      .teachersCount +
                                                  _model
                                                      .numbersubjectatindexsoc5!;
                                              safeSetState(() {});
                                            }
                                            FFAppState().numberofteachersall =
                                                _model.teachersCount;
                                            FFAppState().update(() {});
                                          } else {
                                            _model.vseteachersnum7 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            FFAppState().numberofteachersall =
                                                _model.vseteachersnum7!;
                                            FFAppState().update(() {});
                                          }

                                          safeSetState(() {});
                                        }
                                      },
                                      side: (FlutterFlowTheme.of(context)
                                                  .alternate !=
                                              null)
                                          ? BorderSide(
                                              width: 2,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate!,
                                            )
                                          : null,
                                      activeColor: FlutterFlowTheme.of(context)
                                          .mainColor,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Всемирная история',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .black,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxwrldhisValue ??=
                                          FFAppState().worldhistoryisset,
                                      onChanged: (newValue) async {
                                        safeSetState(() => _model
                                            .checkboxwrldhisValue = newValue!);
                                        if (newValue!) {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .addToTeacherListOfSubjects(
                                                  'Всемирная история');
                                          FFAppState().worldhistoryisset = true;
                                          FFAppState().update(() {});
                                          while (_model.loopCount <
                                              FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length) {
                                            _model.numbersubjectatindexsoc1 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .where(
                                                        'subject',
                                                        isEqualTo: FFAppState()
                                                            .TeacherListOfSubjects
                                                            .elementAtOrNull(
                                                                _model
                                                                    .loopCount),
                                                      )
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            _model.loopCount =
                                                _model.loopCount + 1;
                                            _model.teachersCount = _model
                                                    .teachersCount +
                                                _model
                                                    .numbersubjectatindexsoc1!;
                                            safeSetState(() {});
                                          }
                                          FFAppState().numberofteachersall =
                                              _model.teachersCount;
                                          FFAppState().update(() {});

                                          safeSetState(() {});
                                        } else {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .removeFromTeacherListOfSubjects(
                                                  'Всемирная история');
                                          FFAppState().worldhistoryisset =
                                              false;
                                          FFAppState().update(() {});
                                          if (FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length >
                                              0) {
                                            while (_model.loopCount <
                                                FFAppState()
                                                    .TeacherListOfSubjects
                                                    .length) {
                                              _model.numbersubjectatindexsoc6 =
                                                  await queryTeachersRecordCount(
                                                queryBuilder: (teachersRecord) =>
                                                    teachersRecord
                                                        .where(
                                                          'subject',
                                                          isEqualTo: FFAppState()
                                                              .TeacherListOfSubjects
                                                              .elementAtOrNull(
                                                                  _model
                                                                      .loopCount),
                                                        )
                                                        .whereIn(
                                                            'typeofactivity',
                                                            FFAppState()
                                                                .TeacherListTipDeyatelnosti)
                                                        .where(
                                                          'experience_years',
                                                          isGreaterThanOrEqualTo:
                                                              FFAppState().SliderValueTeacher !=
                                                                      null
                                                                  ? FFAppState()
                                                                      .SliderValueTeacher
                                                                  : 0,
                                                        ),
                                              );
                                              _model.loopCount =
                                                  _model.loopCount + 1;
                                              _model.teachersCount = _model
                                                      .teachersCount +
                                                  _model
                                                      .numbersubjectatindexsoc6!;
                                              safeSetState(() {});
                                            }
                                            FFAppState().numberofteachersall =
                                                _model.teachersCount;
                                            FFAppState().update(() {});
                                          } else {
                                            _model.vseteachersnum8 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            FFAppState().numberofteachersall =
                                                _model.vseteachersnum8!;
                                            FFAppState().update(() {});
                                          }

                                          safeSetState(() {});
                                        }
                                      },
                                      side: (FlutterFlowTheme.of(context)
                                                  .alternate !=
                                              null)
                                          ? BorderSide(
                                              width: 2,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate!,
                                            )
                                          : null,
                                      activeColor: FlutterFlowTheme.of(context)
                                          .mainColor,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Экономика',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .black,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxeconomicValue ??=
                                          FFAppState().economikaisset,
                                      onChanged: (newValue) async {
                                        safeSetState(() => _model
                                            .checkboxeconomicValue = newValue!);
                                        if (newValue!) {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .addToTeacherListOfSubjects(
                                                  'Экономика');
                                          FFAppState().economikaisset = true;
                                          FFAppState().update(() {});
                                          while (_model.loopCount <
                                              FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length) {
                                            _model.numbersubjectatindexsoc2 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .where(
                                                        'subject',
                                                        isEqualTo: FFAppState()
                                                            .TeacherListOfSubjects
                                                            .elementAtOrNull(
                                                                _model
                                                                    .loopCount),
                                                      )
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            _model.loopCount =
                                                _model.loopCount + 1;
                                            _model.teachersCount = _model
                                                    .teachersCount +
                                                _model
                                                    .numbersubjectatindexsoc2!;
                                            safeSetState(() {});
                                          }
                                          FFAppState().numberofteachersall =
                                              _model.teachersCount;
                                          FFAppState().update(() {});

                                          safeSetState(() {});
                                        } else {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .removeFromTeacherListOfSubjects(
                                                  'Экономика');
                                          FFAppState().economikaisset = false;
                                          FFAppState().update(() {});
                                          if (FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length >
                                              0) {
                                            while (_model.loopCount <
                                                FFAppState()
                                                    .TeacherListOfSubjects
                                                    .length) {
                                              _model.numbersubjectatindexsoc7 =
                                                  await queryTeachersRecordCount(
                                                queryBuilder: (teachersRecord) =>
                                                    teachersRecord
                                                        .where(
                                                          'subject',
                                                          isEqualTo: FFAppState()
                                                              .TeacherListOfSubjects
                                                              .elementAtOrNull(
                                                                  _model
                                                                      .loopCount),
                                                        )
                                                        .whereIn(
                                                            'typeofactivity',
                                                            FFAppState()
                                                                .TeacherListTipDeyatelnosti)
                                                        .where(
                                                          'experience_years',
                                                          isGreaterThanOrEqualTo:
                                                              FFAppState().SliderValueTeacher !=
                                                                      null
                                                                  ? FFAppState()
                                                                      .SliderValueTeacher
                                                                  : 0,
                                                        ),
                                              );
                                              _model.loopCount =
                                                  _model.loopCount + 1;
                                              _model.teachersCount = _model
                                                      .teachersCount +
                                                  _model
                                                      .numbersubjectatindexsoc7!;
                                              safeSetState(() {});
                                            }
                                            FFAppState().numberofteachersall =
                                                _model.teachersCount;
                                            FFAppState().update(() {});
                                          } else {
                                            _model.vseteachersnum9 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            FFAppState().numberofteachersall =
                                                _model.vseteachersnum9!;
                                            FFAppState().update(() {});
                                          }

                                          safeSetState(() {});
                                        }
                                      },
                                      side: (FlutterFlowTheme.of(context)
                                                  .alternate !=
                                              null)
                                          ? BorderSide(
                                              width: 2,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate!,
                                            )
                                          : null,
                                      activeColor: FlutterFlowTheme.of(context)
                                          .mainColor,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Право',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .black,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxpravoValue ??=
                                          FFAppState().pravoisset,
                                      onChanged: (newValue) async {
                                        safeSetState(() => _model
                                            .checkboxpravoValue = newValue!);
                                        if (newValue!) {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .addToTeacherListOfSubjects(
                                                  'Право');
                                          FFAppState().pravoisset = true;
                                          FFAppState().update(() {});
                                          while (_model.loopCount <
                                              FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length) {
                                            _model.numbersubjectatindexsoc3 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .where(
                                                        'subject',
                                                        isEqualTo: FFAppState()
                                                            .TeacherListOfSubjects
                                                            .elementAtOrNull(
                                                                _model
                                                                    .loopCount),
                                                      )
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            _model.loopCount =
                                                _model.loopCount + 1;
                                            _model.teachersCount = _model
                                                    .teachersCount +
                                                _model
                                                    .numbersubjectatindexsoc3!;
                                            safeSetState(() {});
                                          }
                                          FFAppState().numberofteachersall =
                                              _model.teachersCount;
                                          FFAppState().update(() {});

                                          safeSetState(() {});
                                        } else {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .removeFromTeacherListOfSubjects(
                                                  'Право');
                                          FFAppState().pravoisset = false;
                                          FFAppState().update(() {});
                                          if (FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length >
                                              0) {
                                            while (_model.loopCount <
                                                FFAppState()
                                                    .TeacherListOfSubjects
                                                    .length) {
                                              _model.numbersubjectatindexsoc8 =
                                                  await queryTeachersRecordCount(
                                                queryBuilder: (teachersRecord) =>
                                                    teachersRecord
                                                        .where(
                                                          'subject',
                                                          isEqualTo: FFAppState()
                                                              .TeacherListOfSubjects
                                                              .elementAtOrNull(
                                                                  _model
                                                                      .loopCount),
                                                        )
                                                        .whereIn(
                                                            'typeofactivity',
                                                            FFAppState()
                                                                .TeacherListTipDeyatelnosti)
                                                        .where(
                                                          'experience_years',
                                                          isGreaterThanOrEqualTo:
                                                              FFAppState().SliderValueTeacher !=
                                                                      null
                                                                  ? FFAppState()
                                                                      .SliderValueTeacher
                                                                  : 0,
                                                        ),
                                              );
                                              _model.loopCount =
                                                  _model.loopCount + 1;
                                              _model.teachersCount = _model
                                                      .teachersCount +
                                                  _model
                                                      .numbersubjectatindexsoc8!;
                                              safeSetState(() {});
                                            }
                                            FFAppState().numberofteachersall =
                                                _model.teachersCount;
                                            FFAppState().update(() {});
                                          } else {
                                            _model.vseteachersnum10 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            FFAppState().numberofteachersall =
                                                _model.vseteachersnum10!;
                                            FFAppState().update(() {});
                                          }

                                          safeSetState(() {});
                                        }
                                      },
                                      side: (FlutterFlowTheme.of(context)
                                                  .alternate !=
                                              null)
                                          ? BorderSide(
                                              width: 2,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate!,
                                            )
                                          : null,
                                      activeColor: FlutterFlowTheme.of(context)
                                          .mainColor,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Предпринимательство',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .black,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxpredpriValue ??=
                                          FFAppState().predprenimatelstvoisset,
                                      onChanged: (newValue) async {
                                        safeSetState(() => _model
                                            .checkboxpredpriValue = newValue!);
                                        if (newValue!) {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .addToTeacherListOfSubjects(
                                                  'Предпринимательство');
                                          FFAppState().predprenimatelstvoisset =
                                              true;
                                          FFAppState().update(() {});
                                          while (_model.loopCount <
                                              FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length) {
                                            _model.numbersubjectatindexsoc4 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .where(
                                                        'subject',
                                                        isEqualTo: FFAppState()
                                                            .TeacherListOfSubjects
                                                            .elementAtOrNull(
                                                                _model
                                                                    .loopCount),
                                                      )
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            _model.loopCount =
                                                _model.loopCount + 1;
                                            _model.teachersCount = _model
                                                    .teachersCount +
                                                _model
                                                    .numbersubjectatindexsoc4!;
                                            safeSetState(() {});
                                          }
                                          FFAppState().numberofteachersall =
                                              _model.teachersCount;
                                          FFAppState().update(() {});

                                          safeSetState(() {});
                                        } else {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .removeFromTeacherListOfSubjects(
                                                  'Предпринимательство');
                                          FFAppState().predprenimatelstvoisset =
                                              false;
                                          FFAppState().update(() {});
                                          if (FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length >
                                              0) {
                                            while (_model.loopCount <
                                                FFAppState()
                                                    .TeacherListOfSubjects
                                                    .length) {
                                              _model.numbersubjectatindexsoc9 =
                                                  await queryTeachersRecordCount(
                                                queryBuilder: (teachersRecord) =>
                                                    teachersRecord
                                                        .where(
                                                          'subject',
                                                          isEqualTo: FFAppState()
                                                              .TeacherListOfSubjects
                                                              .elementAtOrNull(
                                                                  _model
                                                                      .loopCount),
                                                        )
                                                        .whereIn(
                                                            'typeofactivity',
                                                            FFAppState()
                                                                .TeacherListTipDeyatelnosti)
                                                        .where(
                                                          'experience_years',
                                                          isGreaterThanOrEqualTo:
                                                              FFAppState().SliderValueTeacher !=
                                                                      null
                                                                  ? FFAppState()
                                                                      .SliderValueTeacher
                                                                  : 0,
                                                        ),
                                              );
                                              _model.loopCount =
                                                  _model.loopCount + 1;
                                              _model.teachersCount = _model
                                                      .teachersCount +
                                                  _model
                                                      .numbersubjectatindexsoc9!;
                                              safeSetState(() {});
                                            }
                                            FFAppState().numberofteachersall =
                                                _model.teachersCount;
                                            FFAppState().update(() {});
                                          } else {
                                            _model.vseteachersnum11 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            FFAppState().numberofteachersall =
                                                _model.vseteachersnum11!;
                                            FFAppState().update(() {});
                                          }

                                          safeSetState(() {});
                                        }
                                      },
                                      side: (FlutterFlowTheme.of(context)
                                                  .alternate !=
                                              null)
                                          ? BorderSide(
                                              width: 2,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate!,
                                            )
                                          : null,
                                      activeColor: FlutterFlowTheme.of(context)
                                          .mainColor,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 30.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                FFAppState().socgumnaukiisset = false;
                                FFAppState().update(() {});
                              },
                              text:
                                  'Показать ${FFAppState().numberofteachersall.toString()}${((FFAppState().numberofteachersall != 0) && (FFAppState().numberofteachersall < 5)) || ((FFAppState().numberofteachersall == 21) || (FFAppState().numberofteachersall == 22) || (FFAppState().numberofteachersall == 23) || (FFAppState().numberofteachersall == 24) || (FFAppState().numberofteachersall == 32) || (FFAppState().numberofteachersall == 33) || (FFAppState().numberofteachersall == 34) || (FFAppState().numberofteachersall == 31)) ? ' учителя' : ' учителей'}',
                              options: FFButtonOptions(
                                width: 350.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).mainColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.montserrat(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      fontSize: 15.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            if (FFAppState().lingvistiknaukiisset == true)
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFFEFEFE),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Flexible(
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState().lingvistiknaukiisset = false;
                                    FFAppState().update(() {});
                                  },
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: FlutterFlowTheme.of(context).black,
                                    size: 28.0,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Соц-гум науки',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                            Flexible(
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    if ((FFAppState().kazahskiisset == true) ||
                                        (FFAppState().russkiisset == true) ||
                                        (FFAppState().anglisset == true) ||
                                        (FFAppState().kitaiskiisset == true) ||
                                        (FFAppState().koreiskiisset == true) ||
                                        (FFAppState().nemeckiisset == true))
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState()
                                                .removeFromTeacherListOfSubjects(
                                                    'Казахский язык');
                                            FFAppState().kazahskiisset = false;
                                            FFAppState().russkiisset = false;
                                            FFAppState().anglisset = false;
                                            FFAppState().kitaiskiisset = false;
                                            FFAppState().koreiskiisset = false;
                                            FFAppState().nemeckiisset = false;
                                            FFAppState().update(() {});
                                            FFAppState()
                                                .removeFromTeacherListOfSubjects(
                                                    'Русский язык');
                                            FFAppState().update(() {});
                                            FFAppState()
                                                .removeFromTeacherListOfSubjects(
                                                    'Английский язык');
                                            FFAppState().update(() {});
                                            FFAppState()
                                                .removeFromTeacherListOfSubjects(
                                                    'Китайский язык');
                                            FFAppState().update(() {});
                                            FFAppState()
                                                .removeFromTeacherListOfSubjects(
                                                    'Корейский язык');
                                            FFAppState().update(() {});
                                            FFAppState()
                                                .removeFromTeacherListOfSubjects(
                                                    'Немецкий язык');
                                            FFAppState().update(() {});
                                            safeSetState(() {
                                              _model.checkboxrusValue =
                                                  FFAppState().russkiisset;
                                              _model.checkboxanglValue =
                                                  FFAppState().anglisset;
                                              _model.checkboxkitaiValue =
                                                  FFAppState().kitaiskiisset;
                                              _model.checkboxkoreiValue =
                                                  FFAppState().koreiskiisset;
                                              _model.checkboxnemecValue =
                                                  FFAppState().nemeckiisset;
                                              _model.checkboxkazValue =
                                                  FFAppState().kazahskiisset;
                                            });
                                            _model.loopCount = 0;
                                            _model.teachersCount = 0;
                                            safeSetState(() {});
                                            if (FFAppState()
                                                    .TeacherListOfSubjects
                                                    .length >
                                                0) {
                                              while (_model.loopCount <
                                                  FFAppState()
                                                      .TeacherListOfSubjects
                                                      .length) {
                                                _model.numbersubjectatindexsbrosit3 =
                                                    await queryTeachersRecordCount(
                                                  queryBuilder:
                                                      (teachersRecord) =>
                                                          teachersRecord.where(
                                                    'subject',
                                                    isEqualTo: FFAppState()
                                                        .TeacherListOfSubjects
                                                        .elementAtOrNull(
                                                            _model.loopCount),
                                                  ),
                                                );
                                                _model.loopCount =
                                                    _model.loopCount + 1;
                                                _model.teachersCount = _model
                                                        .teachersCount +
                                                    _model
                                                        .numbersubjectatindexsbrosit3!;
                                                safeSetState(() {});
                                              }
                                              FFAppState().numberofteachersall =
                                                  _model.teachersCount;
                                              FFAppState().update(() {});
                                            } else {
                                              _model.vseteachersnumsbrosit3 =
                                                  await queryTeachersRecordCount();
                                              FFAppState().numberofteachersall =
                                                  _model
                                                      .vseteachersnumsbrosit3!;
                                              FFAppState().update(() {});
                                            }

                                            safeSetState(() {});
                                          },
                                          child: Text(
                                            'Сбросить',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 13.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Казахский язык',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .black,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxkazValue ??=
                                          FFAppState().kazahskiisset,
                                      onChanged: (newValue) async {
                                        safeSetState(() => _model
                                            .checkboxkazValue = newValue!);
                                        if (newValue!) {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .addToTeacherListOfSubjects(
                                                  'Казахский язык');
                                          FFAppState().kazahskiisset = true;
                                          FFAppState().update(() {});
                                          while (_model.loopCount <
                                              FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length) {
                                            _model.numbersubjectatindexling =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .where(
                                                        'subject',
                                                        isEqualTo: FFAppState()
                                                            .TeacherListOfSubjects
                                                            .elementAtOrNull(
                                                                _model
                                                                    .loopCount),
                                                      )
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            _model.loopCount =
                                                _model.loopCount + 1;
                                            _model.teachersCount = _model
                                                    .teachersCount +
                                                _model
                                                    .numbersubjectatindexling!;
                                            safeSetState(() {});
                                          }
                                          FFAppState().numberofteachersall =
                                              _model.teachersCount;
                                          FFAppState().update(() {});

                                          safeSetState(() {});
                                        } else {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .removeFromTeacherListOfSubjects(
                                                  'Казахский язык');
                                          FFAppState().kazahskiisset = false;
                                          FFAppState().update(() {});
                                          if (FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length >
                                              0) {
                                            while (_model.loopCount <
                                                FFAppState()
                                                    .TeacherListOfSubjects
                                                    .length) {
                                              _model.numbersubjectatindexling6 =
                                                  await queryTeachersRecordCount(
                                                queryBuilder: (teachersRecord) =>
                                                    teachersRecord
                                                        .where(
                                                          'subject',
                                                          isEqualTo: FFAppState()
                                                              .TeacherListOfSubjects
                                                              .elementAtOrNull(
                                                                  _model
                                                                      .loopCount),
                                                        )
                                                        .whereIn(
                                                            'typeofactivity',
                                                            FFAppState()
                                                                .TeacherListTipDeyatelnosti)
                                                        .where(
                                                          'experience_years',
                                                          isGreaterThanOrEqualTo:
                                                              FFAppState().SliderValueTeacher !=
                                                                      null
                                                                  ? FFAppState()
                                                                      .SliderValueTeacher
                                                                  : 0,
                                                        ),
                                              );
                                              _model.loopCount =
                                                  _model.loopCount + 1;
                                              _model.teachersCount = _model
                                                      .teachersCount +
                                                  _model
                                                      .numbersubjectatindexling6!;
                                              safeSetState(() {});
                                            }
                                            FFAppState().numberofteachersall =
                                                _model.teachersCount;
                                            FFAppState().update(() {});
                                          } else {
                                            _model.vseteachersnum13 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            FFAppState().numberofteachersall =
                                                _model.vseteachersnum13!;
                                            FFAppState().update(() {});
                                          }

                                          safeSetState(() {});
                                        }
                                      },
                                      side: (FlutterFlowTheme.of(context)
                                                  .alternate !=
                                              null)
                                          ? BorderSide(
                                              width: 2,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate!,
                                            )
                                          : null,
                                      activeColor: FlutterFlowTheme.of(context)
                                          .mainColor,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Русский язык',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .black,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxrusValue ??=
                                          FFAppState().russkiisset,
                                      onChanged: (newValue) async {
                                        safeSetState(() => _model
                                            .checkboxrusValue = newValue!);
                                        if (newValue!) {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .addToTeacherListOfSubjects(
                                                  'Русский язык');
                                          FFAppState().russkiisset = true;
                                          FFAppState().update(() {});
                                          while (_model.loopCount <
                                              FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length) {
                                            _model.numbersubjectatindexling1 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .where(
                                                        'subject',
                                                        isEqualTo: FFAppState()
                                                            .TeacherListOfSubjects
                                                            .elementAtOrNull(
                                                                _model
                                                                    .loopCount),
                                                      )
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            _model.loopCount =
                                                _model.loopCount + 1;
                                            _model.teachersCount = _model
                                                    .teachersCount +
                                                _model
                                                    .numbersubjectatindexling1!;
                                            safeSetState(() {});
                                          }
                                          FFAppState().numberofteachersall =
                                              _model.teachersCount;
                                          FFAppState().update(() {});

                                          safeSetState(() {});
                                        } else {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .removeFromTeacherListOfSubjects(
                                                  'Русский язык');
                                          FFAppState().russkiisset = false;
                                          FFAppState().update(() {});
                                          if (FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length >
                                              0) {
                                            while (_model.loopCount <
                                                FFAppState()
                                                    .TeacherListOfSubjects
                                                    .length) {
                                              _model.numbersubjectatindexling7 =
                                                  await queryTeachersRecordCount(
                                                queryBuilder: (teachersRecord) =>
                                                    teachersRecord
                                                        .where(
                                                          'subject',
                                                          isEqualTo: FFAppState()
                                                              .TeacherListOfSubjects
                                                              .elementAtOrNull(
                                                                  _model
                                                                      .loopCount),
                                                        )
                                                        .whereIn(
                                                            'typeofactivity',
                                                            FFAppState()
                                                                .TeacherListTipDeyatelnosti)
                                                        .where(
                                                          'experience_years',
                                                          isGreaterThanOrEqualTo:
                                                              FFAppState().SliderValueTeacher !=
                                                                      null
                                                                  ? FFAppState()
                                                                      .SliderValueTeacher
                                                                  : 0,
                                                        ),
                                              );
                                              _model.loopCount =
                                                  _model.loopCount + 1;
                                              _model.teachersCount = _model
                                                      .teachersCount +
                                                  _model
                                                      .numbersubjectatindexling7!;
                                              safeSetState(() {});
                                            }
                                            FFAppState().numberofteachersall =
                                                _model.teachersCount;
                                            FFAppState().update(() {});
                                          } else {
                                            _model.vseteachersnum14 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            FFAppState().numberofteachersall =
                                                _model.vseteachersnum14!;
                                            FFAppState().update(() {});
                                          }

                                          safeSetState(() {});
                                        }
                                      },
                                      side: (FlutterFlowTheme.of(context)
                                                  .alternate !=
                                              null)
                                          ? BorderSide(
                                              width: 2,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate!,
                                            )
                                          : null,
                                      activeColor: FlutterFlowTheme.of(context)
                                          .mainColor,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Английский язык',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .black,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxanglValue ??=
                                          FFAppState().anglisset,
                                      onChanged: (newValue) async {
                                        safeSetState(() => _model
                                            .checkboxanglValue = newValue!);
                                        if (newValue!) {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .addToTeacherListOfSubjects(
                                                  'Английский язык');
                                          FFAppState().anglisset = true;
                                          FFAppState().update(() {});
                                          while (_model.loopCount <
                                              FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length) {
                                            _model.numbersubjectatindexling2 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .where(
                                                        'subject',
                                                        isEqualTo: FFAppState()
                                                            .TeacherListOfSubjects
                                                            .elementAtOrNull(
                                                                _model
                                                                    .loopCount),
                                                      )
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            _model.loopCount =
                                                _model.loopCount + 1;
                                            _model.teachersCount = _model
                                                    .teachersCount +
                                                _model
                                                    .numbersubjectatindexling2!;
                                            safeSetState(() {});
                                          }
                                          FFAppState().numberofteachersall =
                                              _model.teachersCount;
                                          FFAppState().update(() {});

                                          safeSetState(() {});
                                        } else {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .removeFromTeacherListOfSubjects(
                                                  'Английский язык');
                                          FFAppState().anglisset = false;
                                          FFAppState().update(() {});
                                          if (FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length >
                                              0) {
                                            while (_model.loopCount <
                                                FFAppState()
                                                    .TeacherListOfSubjects
                                                    .length) {
                                              _model.numbersubjectatindexling8 =
                                                  await queryTeachersRecordCount(
                                                queryBuilder: (teachersRecord) =>
                                                    teachersRecord
                                                        .where(
                                                          'subject',
                                                          isEqualTo: FFAppState()
                                                              .TeacherListOfSubjects
                                                              .elementAtOrNull(
                                                                  _model
                                                                      .loopCount),
                                                        )
                                                        .whereIn(
                                                            'typeofactivity',
                                                            FFAppState()
                                                                .TeacherListTipDeyatelnosti)
                                                        .where(
                                                          'experience_years',
                                                          isGreaterThanOrEqualTo:
                                                              FFAppState().SliderValueTeacher !=
                                                                      null
                                                                  ? FFAppState()
                                                                      .SliderValueTeacher
                                                                  : 0,
                                                        ),
                                              );
                                              _model.loopCount =
                                                  _model.loopCount + 1;
                                              _model.teachersCount = _model
                                                      .teachersCount +
                                                  _model
                                                      .numbersubjectatindexling8!;
                                              safeSetState(() {});
                                            }
                                            FFAppState().numberofteachersall =
                                                _model.teachersCount;
                                            FFAppState().update(() {});
                                          } else {
                                            _model.vseteachersnum15 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            FFAppState().numberofteachersall =
                                                _model.vseteachersnum15!;
                                            FFAppState().update(() {});
                                          }

                                          safeSetState(() {});
                                        }
                                      },
                                      side: (FlutterFlowTheme.of(context)
                                                  .alternate !=
                                              null)
                                          ? BorderSide(
                                              width: 2,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate!,
                                            )
                                          : null,
                                      activeColor: FlutterFlowTheme.of(context)
                                          .mainColor,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Китайский язык',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .black,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxkitaiValue ??=
                                          FFAppState().kitaiskiisset,
                                      onChanged: (newValue) async {
                                        safeSetState(() => _model
                                            .checkboxkitaiValue = newValue!);
                                        if (newValue!) {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .addToTeacherListOfSubjects(
                                                  'Китайский язык');
                                          FFAppState().kitaiskiisset = true;
                                          FFAppState().update(() {});
                                          while (_model.loopCount <
                                              FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length) {
                                            _model.numbersubjectatindexling3 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .where(
                                                        'subject',
                                                        isEqualTo: FFAppState()
                                                            .TeacherListOfSubjects
                                                            .elementAtOrNull(
                                                                _model
                                                                    .loopCount),
                                                      )
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            _model.loopCount =
                                                _model.loopCount + 1;
                                            _model.teachersCount = _model
                                                    .teachersCount +
                                                _model
                                                    .numbersubjectatindexling3!;
                                            safeSetState(() {});
                                          }
                                          FFAppState().numberofteachersall =
                                              _model.teachersCount;
                                          FFAppState().update(() {});

                                          safeSetState(() {});
                                        } else {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .removeFromTeacherListOfSubjects(
                                                  'Китайский язык');
                                          FFAppState().kitaiskiisset = false;
                                          FFAppState().update(() {});
                                          if (FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length >
                                              0) {
                                            while (_model.loopCount <
                                                FFAppState()
                                                    .TeacherListOfSubjects
                                                    .length) {
                                              _model.numbersubjectatindexling9 =
                                                  await queryTeachersRecordCount(
                                                queryBuilder: (teachersRecord) =>
                                                    teachersRecord
                                                        .where(
                                                          'subject',
                                                          isEqualTo: FFAppState()
                                                              .TeacherListOfSubjects
                                                              .elementAtOrNull(
                                                                  _model
                                                                      .loopCount),
                                                        )
                                                        .whereIn(
                                                            'typeofactivity',
                                                            FFAppState()
                                                                .TeacherListTipDeyatelnosti)
                                                        .where(
                                                          'experience_years',
                                                          isGreaterThanOrEqualTo:
                                                              FFAppState().SliderValueTeacher !=
                                                                      null
                                                                  ? FFAppState()
                                                                      .SliderValueTeacher
                                                                  : 0,
                                                        ),
                                              );
                                              _model.loopCount =
                                                  _model.loopCount + 1;
                                              _model.teachersCount = _model
                                                      .teachersCount +
                                                  _model
                                                      .numbersubjectatindexling9!;
                                              safeSetState(() {});
                                            }
                                            FFAppState().numberofteachersall =
                                                _model.teachersCount;
                                            FFAppState().update(() {});
                                          } else {
                                            _model.vseteachersnum18 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            FFAppState().numberofteachersall =
                                                _model.vseteachersnum18!;
                                            FFAppState().update(() {});
                                          }

                                          safeSetState(() {});
                                        }
                                      },
                                      side: (FlutterFlowTheme.of(context)
                                                  .alternate !=
                                              null)
                                          ? BorderSide(
                                              width: 2,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate!,
                                            )
                                          : null,
                                      activeColor: FlutterFlowTheme.of(context)
                                          .mainColor,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Корейский язык',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .black,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxkoreiValue ??=
                                          FFAppState().koreiskiisset,
                                      onChanged: (newValue) async {
                                        safeSetState(() => _model
                                            .checkboxkoreiValue = newValue!);
                                        if (newValue!) {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .addToTeacherListOfSubjects(
                                                  'Корейский язык');
                                          FFAppState().koreiskiisset = true;
                                          FFAppState().update(() {});
                                          while (_model.loopCount <
                                              FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length) {
                                            _model.numbersubjectatindexling4 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .where(
                                                        'subject',
                                                        isEqualTo: FFAppState()
                                                            .TeacherListOfSubjects
                                                            .elementAtOrNull(
                                                                _model
                                                                    .loopCount),
                                                      )
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            _model.loopCount =
                                                _model.loopCount + 1;
                                            _model.teachersCount = _model
                                                    .teachersCount +
                                                _model
                                                    .numbersubjectatindexling4!;
                                            safeSetState(() {});
                                          }
                                          FFAppState().numberofteachersall =
                                              _model.teachersCount;
                                          FFAppState().update(() {});

                                          safeSetState(() {});
                                        } else {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .removeFromTeacherListOfSubjects(
                                                  'Корейский язык');
                                          FFAppState().koreiskiisset = false;
                                          FFAppState().update(() {});
                                          if (FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length >
                                              0) {
                                            while (_model.loopCount <
                                                FFAppState()
                                                    .TeacherListOfSubjects
                                                    .length) {
                                              _model.numbersubjectatindexling10 =
                                                  await queryTeachersRecordCount(
                                                queryBuilder: (teachersRecord) =>
                                                    teachersRecord
                                                        .where(
                                                          'subject',
                                                          isEqualTo: FFAppState()
                                                              .TeacherListOfSubjects
                                                              .elementAtOrNull(
                                                                  _model
                                                                      .loopCount),
                                                        )
                                                        .whereIn(
                                                            'typeofactivity',
                                                            FFAppState()
                                                                .TeacherListTipDeyatelnosti)
                                                        .where(
                                                          'experience_years',
                                                          isGreaterThanOrEqualTo:
                                                              FFAppState().SliderValueTeacher !=
                                                                      null
                                                                  ? FFAppState()
                                                                      .SliderValueTeacher
                                                                  : 0,
                                                        ),
                                              );
                                              _model.loopCount =
                                                  _model.loopCount + 1;
                                              _model.teachersCount = _model
                                                      .teachersCount +
                                                  _model
                                                      .numbersubjectatindexling10!;
                                              safeSetState(() {});
                                            }
                                            FFAppState().numberofteachersall =
                                                _model.teachersCount;
                                            FFAppState().update(() {});
                                          } else {
                                            _model.vseteachersnum16 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            FFAppState().numberofteachersall =
                                                _model.vseteachersnum16!;
                                            FFAppState().update(() {});
                                          }

                                          safeSetState(() {});
                                        }
                                      },
                                      side: (FlutterFlowTheme.of(context)
                                                  .alternate !=
                                              null)
                                          ? BorderSide(
                                              width: 2,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate!,
                                            )
                                          : null,
                                      activeColor: FlutterFlowTheme.of(context)
                                          .mainColor,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Немецкий язык',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .black,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxnemecValue ??=
                                          FFAppState().nemeckiisset,
                                      onChanged: (newValue) async {
                                        safeSetState(() => _model
                                            .checkboxnemecValue = newValue!);
                                        if (newValue!) {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .addToTeacherListOfSubjects(
                                                  'Немецкий язык');
                                          FFAppState().nemeckiisset = true;
                                          FFAppState().update(() {});
                                          while (_model.loopCount <
                                              FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length) {
                                            _model.numbersubjectatindexling5 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .where(
                                                        'subject',
                                                        isEqualTo: FFAppState()
                                                            .TeacherListOfSubjects
                                                            .elementAtOrNull(
                                                                _model
                                                                    .loopCount),
                                                      )
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            _model.loopCount =
                                                _model.loopCount + 1;
                                            _model.teachersCount = _model
                                                    .teachersCount +
                                                _model
                                                    .numbersubjectatindexling5!;
                                            safeSetState(() {});
                                          }
                                          FFAppState().numberofteachersall =
                                              _model.teachersCount;
                                          FFAppState().update(() {});

                                          safeSetState(() {});
                                        } else {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.teachersCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .removeFromTeacherListOfSubjects(
                                                  'Немецкий язык');
                                          FFAppState().nemeckiisset = false;
                                          FFAppState().update(() {});
                                          if (FFAppState()
                                                  .TeacherListOfSubjects
                                                  .length >
                                              0) {
                                            while (_model.loopCount <
                                                FFAppState()
                                                    .TeacherListOfSubjects
                                                    .length) {
                                              _model.numbersubjectatindexling11 =
                                                  await queryTeachersRecordCount(
                                                queryBuilder: (teachersRecord) =>
                                                    teachersRecord
                                                        .where(
                                                          'subject',
                                                          isEqualTo: FFAppState()
                                                              .TeacherListOfSubjects
                                                              .elementAtOrNull(
                                                                  _model
                                                                      .loopCount),
                                                        )
                                                        .whereIn(
                                                            'typeofactivity',
                                                            FFAppState()
                                                                .TeacherListTipDeyatelnosti)
                                                        .where(
                                                          'experience_years',
                                                          isGreaterThanOrEqualTo:
                                                              FFAppState().SliderValueTeacher !=
                                                                      null
                                                                  ? FFAppState()
                                                                      .SliderValueTeacher
                                                                  : 0,
                                                        ),
                                              );
                                              _model.loopCount =
                                                  _model.loopCount + 1;
                                              _model.teachersCount = _model
                                                      .teachersCount +
                                                  _model
                                                      .numbersubjectatindexling11!;
                                              safeSetState(() {});
                                            }
                                            FFAppState().numberofteachersall =
                                                _model.teachersCount;
                                            FFAppState().update(() {});
                                          } else {
                                            _model.vseteachersnum17 =
                                                await queryTeachersRecordCount(
                                              queryBuilder: (teachersRecord) =>
                                                  teachersRecord
                                                      .whereIn(
                                                          'typeofactivity',
                                                          FFAppState()
                                                              .TeacherListTipDeyatelnosti)
                                                      .where(
                                                        'experience_years',
                                                        isGreaterThanOrEqualTo:
                                                            FFAppState().SliderValueTeacher !=
                                                                    null
                                                                ? FFAppState()
                                                                    .SliderValueTeacher
                                                                : 0,
                                                      ),
                                            );
                                            FFAppState().numberofteachersall =
                                                _model.vseteachersnum17!;
                                            FFAppState().update(() {});
                                          }

                                          safeSetState(() {});
                                        }
                                      },
                                      side: (FlutterFlowTheme.of(context)
                                                  .alternate !=
                                              null)
                                          ? BorderSide(
                                              width: 2,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate!,
                                            )
                                          : null,
                                      activeColor: FlutterFlowTheme.of(context)
                                          .mainColor,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 30.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                FFAppState().lingvistiknaukiisset = false;
                                FFAppState().update(() {});
                              },
                              text:
                                  'Показать ${FFAppState().numberofteachersall.toString()}${((FFAppState().numberofteachersall != 0) && (FFAppState().numberofteachersall < 5)) || ((FFAppState().numberofteachersall == 21) || (FFAppState().numberofteachersall == 22) || (FFAppState().numberofteachersall == 23) || (FFAppState().numberofteachersall == 24) || (FFAppState().numberofteachersall == 32) || (FFAppState().numberofteachersall == 33) || (FFAppState().numberofteachersall == 34) || (FFAppState().numberofteachersall == 31)) ? ' учителя' : ' учителей'}',
                              options: FFButtonOptions(
                                width: 350.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).mainColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.montserrat(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      fontSize: 15.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            if (FFAppState().tipdeyatelnostiisset == true)
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFFEFEFE),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Flexible(
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState().tipdeyatelnostiisset = false;
                                    FFAppState().update(() {});
                                  },
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: FlutterFlowTheme.of(context).black,
                                    size: 28.0,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Тип деятельности',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                            Flexible(
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    if ((FFAppState().olympisset == true) ||
                                        (FFAppState().projectisset == true))
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState()
                                                .removeFromTeacherListTipDeyatelnosti(
                                                    'Олимпиада');
                                            FFAppState().olympisset = false;
                                            FFAppState().projectisset = false;
                                            FFAppState().update(() {});
                                            FFAppState()
                                                .removeFromTeacherListTipDeyatelnosti(
                                                    'Проект');
                                            FFAppState().update(() {});
                                            FFAppState()
                                                .removeFromTeacherListTipDeyatelnosti(
                                                    'Олимпиада и проект');
                                            FFAppState().update(() {});
                                            safeSetState(() {
                                              _model.checkboxprojectValue =
                                                  FFAppState().projectisset;
                                              _model.checkboxolympValue =
                                                  FFAppState().olympisset;
                                            });
                                            _model.loopCount = 0;
                                            _model.teachersCount = 0;
                                            safeSetState(() {});
                                            if (FFAppState()
                                                    .TeacherListOfSubjects
                                                    .length >
                                                0) {
                                              while (_model.loopCount <
                                                  FFAppState()
                                                      .TeacherListOfSubjects
                                                      .length) {
                                                _model.numbersubjectatindexsbrosit4 =
                                                    await queryTeachersRecordCount(
                                                  queryBuilder:
                                                      (teachersRecord) =>
                                                          teachersRecord.where(
                                                    'typeofactivity',
                                                    isEqualTo: FFAppState()
                                                        .TeacherListTipDeyatelnosti
                                                        .elementAtOrNull(
                                                            _model.loopCount),
                                                  ),
                                                );
                                                _model.loopCount =
                                                    _model.loopCount + 1;
                                                _model.teachersCount = _model
                                                        .teachersCount +
                                                    _model
                                                        .numbersubjectatindexsbrosit4!;
                                                safeSetState(() {});
                                              }
                                              FFAppState().numberofteachersall =
                                                  _model.teachersCount;
                                              FFAppState().update(() {});
                                            } else {
                                              _model.vseteachersnumsbrosit4 =
                                                  await queryTeachersRecordCount();
                                              FFAppState().numberofteachersall =
                                                  _model
                                                      .vseteachersnumsbrosit4!;
                                              FFAppState().update(() {});
                                            }

                                            safeSetState(() {});
                                          },
                                          child: Text(
                                            'Сбросить',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 13.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Олимпиада',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .black,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxolympValue ??=
                                          FFAppState().olympisset,
                                      onChanged: (newValue) async {
                                        safeSetState(() => _model
                                            .checkboxolympValue = newValue!);
                                        if (newValue!) {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 500,
                                            ),
                                          );
                                          if (FFAppState().projectisset ==
                                              false) {
                                            FFAppState()
                                                .addToTeacherListTipDeyatelnosti(
                                                    'Олимпиада');
                                            FFAppState().olympisset = true;
                                            FFAppState().update(() {});
                                            FFAppState()
                                                .addToTeacherListTipDeyatelnosti(
                                                    'Олимпиада и проект');
                                            FFAppState().update(() {});
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 0,
                                              ),
                                            );
                                            _model.loopCount = 0;
                                            _model.teachersCount = 0;
                                            safeSetState(() {});
                                            while (_model.loopCount <
                                                FFAppState()
                                                    .TeacherListTipDeyatelnosti
                                                    .length) {
                                              _model.numbersubjectatindextip =
                                                  await queryTeachersRecordCount(
                                                queryBuilder: (teachersRecord) =>
                                                    teachersRecord
                                                        .where(
                                                          'typeofactivity',
                                                          isEqualTo: FFAppState()
                                                              .TeacherListTipDeyatelnosti
                                                              .elementAtOrNull(
                                                                  _model
                                                                      .loopCount),
                                                        )
                                                        .whereIn(
                                                            'subject',
                                                            FFAppState()
                                                                .TeacherListOfSubjects)
                                                        .where(
                                                          'experience_years',
                                                          isGreaterThanOrEqualTo:
                                                              FFAppState().SliderValueTeacher !=
                                                                      null
                                                                  ? FFAppState()
                                                                      .SliderValueTeacher
                                                                  : 0,
                                                        ),
                                              );
                                              _model.loopCount =
                                                  _model.loopCount + 1;
                                              _model.teachersCount = _model
                                                      .teachersCount +
                                                  _model
                                                      .numbersubjectatindextip!;
                                              safeSetState(() {});
                                            }
                                            FFAppState().numberofteachersall =
                                                _model.teachersCount;
                                            FFAppState().update(() {});
                                          } else {
                                            FFAppState()
                                                .addToTeacherListTipDeyatelnosti(
                                                    'Олимпиада');
                                            FFAppState().olympisset = true;
                                            FFAppState().update(() {});
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 700,
                                              ),
                                            );
                                            _model.loopCount = 0;
                                            _model.teachersCount = 0;
                                            safeSetState(() {});
                                            while (_model.loopCount <
                                                FFAppState()
                                                    .TeacherListTipDeyatelnosti
                                                    .length) {
                                              _model.numbersubjectatindextip4 =
                                                  await queryTeachersRecordCount(
                                                queryBuilder: (teachersRecord) =>
                                                    teachersRecord
                                                        .where(
                                                          'typeofactivity',
                                                          isEqualTo: FFAppState()
                                                              .TeacherListTipDeyatelnosti
                                                              .elementAtOrNull(
                                                                  _model
                                                                      .loopCount),
                                                        )
                                                        .whereIn(
                                                            'subject',
                                                            FFAppState()
                                                                .TeacherListOfSubjects)
                                                        .where(
                                                          'experience_years',
                                                          isGreaterThanOrEqualTo:
                                                              FFAppState().SliderValueTeacher !=
                                                                      null
                                                                  ? FFAppState()
                                                                      .SliderValueTeacher
                                                                  : 0,
                                                        ),
                                              );
                                              _model.loopCount =
                                                  _model.loopCount + 1;
                                              _model.teachersCount = _model
                                                      .teachersCount +
                                                  _model
                                                      .numbersubjectatindextip4!;
                                              safeSetState(() {});
                                            }
                                            FFAppState().numberofteachersall =
                                                _model.teachersCount;
                                            FFAppState().update(() {});
                                          }

                                          safeSetState(() {});
                                        } else {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 500,
                                            ),
                                          );
                                          if (FFAppState().projectisset ==
                                              true) {
                                            FFAppState()
                                                .removeFromTeacherListTipDeyatelnosti(
                                                    'Олимпиада');
                                            FFAppState().olympisset = false;
                                            FFAppState().update(() {});
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 0,
                                              ),
                                            );
                                            _model.loopCount = 0;
                                            _model.teachersCount = 0;
                                            safeSetState(() {});
                                            if (FFAppState()
                                                    .TeacherListTipDeyatelnosti
                                                    .length >
                                                0) {
                                              while (_model.loopCount <
                                                  FFAppState()
                                                      .TeacherListTipDeyatelnosti
                                                      .length) {
                                                _model.numbersubjectatindextip1 =
                                                    await queryTeachersRecordCount(
                                                  queryBuilder: (teachersRecord) =>
                                                      teachersRecord
                                                          .where(
                                                            'typeofactivity',
                                                            isEqualTo: FFAppState()
                                                                .TeacherListTipDeyatelnosti
                                                                .elementAtOrNull(
                                                                    _model
                                                                        .loopCount),
                                                          )
                                                          .whereIn(
                                                              'subject',
                                                              FFAppState()
                                                                  .TeacherListOfSubjects)
                                                          .where(
                                                            'experience_years',
                                                            isGreaterThanOrEqualTo:
                                                                FFAppState().SliderValueTeacher !=
                                                                        null
                                                                    ? FFAppState()
                                                                        .SliderValueTeacher
                                                                    : 0,
                                                          ),
                                                );
                                                _model.loopCount =
                                                    _model.loopCount + 1;
                                                _model.teachersCount = _model
                                                        .teachersCount +
                                                    _model
                                                        .numbersubjectatindextip1!;
                                                safeSetState(() {});
                                              }
                                              FFAppState().numberofteachersall =
                                                  _model.teachersCount;
                                              FFAppState().update(() {});
                                            } else {
                                              _model.vseteachersnum19 =
                                                  await queryTeachersRecordCount(
                                                queryBuilder: (teachersRecord) =>
                                                    teachersRecord
                                                        .whereIn(
                                                            'subject',
                                                            FFAppState()
                                                                .TeacherListOfSubjects)
                                                        .where(
                                                          'experience_years',
                                                          isGreaterThanOrEqualTo:
                                                              FFAppState().SliderValueTeacher !=
                                                                      null
                                                                  ? FFAppState()
                                                                      .SliderValueTeacher
                                                                  : 0,
                                                        ),
                                              );
                                              FFAppState().numberofteachersall =
                                                  _model.vseteachersnum19!;
                                              FFAppState().update(() {});
                                            }
                                          } else {
                                            FFAppState()
                                                .removeFromTeacherListTipDeyatelnosti(
                                                    'Олимпиада');
                                            FFAppState().olympisset = false;
                                            FFAppState().update(() {});
                                            FFAppState()
                                                .removeFromTeacherListTipDeyatelnosti(
                                                    'Олимпиада и проект');
                                            FFAppState().update(() {});
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 700,
                                              ),
                                            );
                                            _model.loopCount = 0;
                                            _model.teachersCount = 0;
                                            safeSetState(() {});
                                            if (FFAppState()
                                                    .TeacherListTipDeyatelnosti
                                                    .length >
                                                0) {
                                              while (_model.loopCount <
                                                  FFAppState()
                                                      .TeacherListTipDeyatelnosti
                                                      .length) {
                                                _model.numbersubjectatindextip6 =
                                                    await queryTeachersRecordCount(
                                                  queryBuilder: (teachersRecord) =>
                                                      teachersRecord
                                                          .where(
                                                            'typeofactivity',
                                                            isEqualTo: FFAppState()
                                                                .TeacherListTipDeyatelnosti
                                                                .elementAtOrNull(
                                                                    _model
                                                                        .loopCount),
                                                          )
                                                          .whereIn(
                                                              'subject',
                                                              FFAppState()
                                                                  .TeacherListOfSubjects)
                                                          .where(
                                                            'experience_years',
                                                            isGreaterThanOrEqualTo:
                                                                FFAppState().SliderValueTeacher !=
                                                                        null
                                                                    ? FFAppState()
                                                                        .SliderValueTeacher
                                                                    : 0,
                                                          ),
                                                );
                                                _model.loopCount =
                                                    _model.loopCount + 1;
                                                _model.teachersCount = _model
                                                        .teachersCount +
                                                    _model
                                                        .numbersubjectatindextip6!;
                                                safeSetState(() {});
                                              }
                                              FFAppState().numberofteachersall =
                                                  _model.teachersCount;
                                              FFAppState().update(() {});
                                            } else {
                                              _model.vseteachersnum21 =
                                                  await queryTeachersRecordCount(
                                                queryBuilder: (teachersRecord) =>
                                                    teachersRecord
                                                        .whereIn(
                                                            'subject',
                                                            FFAppState()
                                                                .TeacherListOfSubjects)
                                                        .where(
                                                          'experience_years',
                                                          isGreaterThanOrEqualTo:
                                                              FFAppState().SliderValueTeacher !=
                                                                      null
                                                                  ? FFAppState()
                                                                      .SliderValueTeacher
                                                                  : 0,
                                                        ),
                                              );
                                              FFAppState().numberofteachersall =
                                                  _model.vseteachersnum21!;
                                              FFAppState().update(() {});
                                            }
                                          }

                                          safeSetState(() {});
                                        }
                                      },
                                      side: (FlutterFlowTheme.of(context)
                                                  .alternate !=
                                              null)
                                          ? BorderSide(
                                              width: 2,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate!,
                                            )
                                          : null,
                                      activeColor: FlutterFlowTheme.of(context)
                                          .mainColor,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Проект',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .black,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxprojectValue ??=
                                          FFAppState().projectisset,
                                      onChanged: (newValue) async {
                                        safeSetState(() => _model
                                            .checkboxprojectValue = newValue!);
                                        if (newValue!) {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 500,
                                            ),
                                          );
                                          if (FFAppState().olympisset ==
                                              false) {
                                            FFAppState()
                                                .addToTeacherListTipDeyatelnosti(
                                                    'Проект');
                                            FFAppState().projectisset = true;
                                            FFAppState().update(() {});
                                            FFAppState()
                                                .addToTeacherListTipDeyatelnosti(
                                                    'Олимпиада и проект');
                                            FFAppState().update(() {});
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 0,
                                              ),
                                            );
                                            _model.loopCount = 0;
                                            _model.teachersCount = 0;
                                            safeSetState(() {});
                                            while (_model.loopCount <
                                                FFAppState()
                                                    .TeacherListTipDeyatelnosti
                                                    .length) {
                                              _model.numbersubjectatindextip2 =
                                                  await queryTeachersRecordCount(
                                                queryBuilder: (teachersRecord) =>
                                                    teachersRecord
                                                        .where(
                                                          'typeofactivity',
                                                          isEqualTo: FFAppState()
                                                              .TeacherListTipDeyatelnosti
                                                              .elementAtOrNull(
                                                                  _model
                                                                      .loopCount),
                                                        )
                                                        .whereIn(
                                                            'subject',
                                                            FFAppState()
                                                                .TeacherListOfSubjects)
                                                        .where(
                                                          'experience_years',
                                                          isGreaterThanOrEqualTo:
                                                              FFAppState().SliderValueTeacher !=
                                                                      null
                                                                  ? FFAppState()
                                                                      .SliderValueTeacher
                                                                  : 0,
                                                        ),
                                              );
                                              _model.loopCount =
                                                  _model.loopCount + 1;
                                              _model.teachersCount = _model
                                                      .teachersCount +
                                                  _model
                                                      .numbersubjectatindextip2!;
                                              safeSetState(() {});
                                            }
                                            FFAppState().numberofteachersall =
                                                _model.teachersCount;
                                            FFAppState().update(() {});
                                          } else {
                                            FFAppState()
                                                .addToTeacherListTipDeyatelnosti(
                                                    'Проект');
                                            FFAppState().projectisset = true;
                                            FFAppState().update(() {});
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 700,
                                              ),
                                            );
                                            _model.loopCount = 0;
                                            _model.teachersCount = 0;
                                            safeSetState(() {});
                                            while (_model.loopCount <
                                                FFAppState()
                                                    .TeacherListTipDeyatelnosti
                                                    .length) {
                                              _model.numbersubjectatindextip5 =
                                                  await queryTeachersRecordCount(
                                                queryBuilder: (teachersRecord) =>
                                                    teachersRecord
                                                        .where(
                                                          'typeofactivity',
                                                          isEqualTo: FFAppState()
                                                              .TeacherListTipDeyatelnosti
                                                              .elementAtOrNull(
                                                                  _model
                                                                      .loopCount),
                                                        )
                                                        .whereIn(
                                                            'subject',
                                                            FFAppState()
                                                                .TeacherListOfSubjects)
                                                        .where(
                                                          'experience_years',
                                                          isGreaterThanOrEqualTo:
                                                              FFAppState().SliderValueTeacher !=
                                                                      null
                                                                  ? FFAppState()
                                                                      .SliderValueTeacher
                                                                  : 0,
                                                        ),
                                              );
                                              _model.loopCount =
                                                  _model.loopCount + 1;
                                              _model.teachersCount = _model
                                                      .teachersCount +
                                                  _model
                                                      .numbersubjectatindextip5!;
                                              safeSetState(() {});
                                            }
                                            FFAppState().numberofteachersall =
                                                _model.teachersCount;
                                            FFAppState().update(() {});
                                          }

                                          safeSetState(() {});
                                        } else {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 500,
                                            ),
                                          );
                                          if (FFAppState().olympisset == true) {
                                            FFAppState()
                                                .removeFromTeacherListTipDeyatelnosti(
                                                    'Проект');
                                            FFAppState().projectisset = false;
                                            FFAppState().update(() {});
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 0,
                                              ),
                                            );
                                            _model.loopCount = 0;
                                            _model.teachersCount = 0;
                                            safeSetState(() {});
                                            if (FFAppState()
                                                    .TeacherListTipDeyatelnosti
                                                    .length >
                                                0) {
                                              while (_model.loopCount <
                                                  FFAppState()
                                                      .TeacherListTipDeyatelnosti
                                                      .length) {
                                                _model.numbersubjectatindextip3 =
                                                    await queryTeachersRecordCount(
                                                  queryBuilder: (teachersRecord) =>
                                                      teachersRecord
                                                          .where(
                                                            'typeofactivity',
                                                            isEqualTo: FFAppState()
                                                                .TeacherListTipDeyatelnosti
                                                                .elementAtOrNull(
                                                                    _model
                                                                        .loopCount),
                                                          )
                                                          .whereIn(
                                                              'subject',
                                                              FFAppState()
                                                                  .TeacherListOfSubjects)
                                                          .where(
                                                            'experience_years',
                                                            isGreaterThanOrEqualTo:
                                                                FFAppState().SliderValueTeacher !=
                                                                        null
                                                                    ? FFAppState()
                                                                        .SliderValueTeacher
                                                                    : 0,
                                                          ),
                                                );
                                                _model.loopCount =
                                                    _model.loopCount + 1;
                                                _model.teachersCount = _model
                                                        .teachersCount +
                                                    _model
                                                        .numbersubjectatindextip3!;
                                                safeSetState(() {});
                                              }
                                              FFAppState().numberofteachersall =
                                                  _model.teachersCount;
                                              FFAppState().update(() {});
                                            } else {
                                              _model.vseteachersnum20 =
                                                  await queryTeachersRecordCount(
                                                queryBuilder: (teachersRecord) =>
                                                    teachersRecord
                                                        .whereIn(
                                                            'subject',
                                                            FFAppState()
                                                                .TeacherListOfSubjects)
                                                        .where(
                                                          'experience_years',
                                                          isGreaterThanOrEqualTo:
                                                              FFAppState().SliderValueTeacher !=
                                                                      null
                                                                  ? FFAppState()
                                                                      .SliderValueTeacher
                                                                  : 0,
                                                        ),
                                              );
                                              FFAppState().numberofteachersall =
                                                  _model.vseteachersnum20!;
                                              FFAppState().update(() {});
                                            }
                                          } else {
                                            FFAppState()
                                                .removeFromTeacherListTipDeyatelnosti(
                                                    'Проект');
                                            FFAppState().projectisset = false;
                                            FFAppState().update(() {});
                                            FFAppState()
                                                .removeFromTeacherListTipDeyatelnosti(
                                                    'Олимпиада и проект');
                                            FFAppState().update(() {});
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 700,
                                              ),
                                            );
                                            _model.loopCount = 0;
                                            _model.teachersCount = 0;
                                            safeSetState(() {});
                                            if (FFAppState()
                                                    .TeacherListTipDeyatelnosti
                                                    .length >
                                                0) {
                                              while (_model.loopCount <
                                                  FFAppState()
                                                      .TeacherListTipDeyatelnosti
                                                      .length) {
                                                _model.numbersubjectatindextip7 =
                                                    await queryTeachersRecordCount(
                                                  queryBuilder: (teachersRecord) =>
                                                      teachersRecord
                                                          .where(
                                                            'typeofactivity',
                                                            isEqualTo: FFAppState()
                                                                .TeacherListTipDeyatelnosti
                                                                .elementAtOrNull(
                                                                    _model
                                                                        .loopCount),
                                                          )
                                                          .whereIn(
                                                              'subject',
                                                              FFAppState()
                                                                  .TeacherListOfSubjects)
                                                          .where(
                                                            'experience_years',
                                                            isGreaterThanOrEqualTo:
                                                                FFAppState().SliderValueTeacher !=
                                                                        null
                                                                    ? FFAppState()
                                                                        .SliderValueTeacher
                                                                    : 0,
                                                          ),
                                                );
                                                _model.loopCount =
                                                    _model.loopCount + 1;
                                                _model.teachersCount = _model
                                                        .teachersCount +
                                                    _model
                                                        .numbersubjectatindextip7!;
                                                safeSetState(() {});
                                              }
                                              FFAppState().numberofteachersall =
                                                  _model.teachersCount;
                                              FFAppState().update(() {});
                                            } else {
                                              _model.vseteachersnum22 =
                                                  await queryTeachersRecordCount(
                                                queryBuilder: (teachersRecord) =>
                                                    teachersRecord
                                                        .whereIn(
                                                            'subject',
                                                            FFAppState()
                                                                .TeacherListOfSubjects)
                                                        .where(
                                                          'experience_years',
                                                          isGreaterThanOrEqualTo:
                                                              FFAppState().SliderValueTeacher !=
                                                                      null
                                                                  ? FFAppState()
                                                                      .SliderValueTeacher
                                                                  : 0,
                                                        ),
                                              );
                                              FFAppState().numberofteachersall =
                                                  _model.vseteachersnum22!;
                                              FFAppState().update(() {});
                                            }
                                          }

                                          safeSetState(() {});
                                        }
                                      },
                                      side: (FlutterFlowTheme.of(context)
                                                  .alternate !=
                                              null)
                                          ? BorderSide(
                                              width: 2,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate!,
                                            )
                                          : null,
                                      activeColor: FlutterFlowTheme.of(context)
                                          .mainColor,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 30.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                FFAppState().tipdeyatelnostiisset = false;
                                FFAppState().update(() {});
                              },
                              text:
                                  'Показать ${FFAppState().numberofteachersall.toString()}${((FFAppState().numberofteachersall != 0) && (FFAppState().numberofteachersall < 5)) || ((FFAppState().numberofteachersall == 21) || (FFAppState().numberofteachersall == 22) || (FFAppState().numberofteachersall == 23) || (FFAppState().numberofteachersall == 24) || (FFAppState().numberofteachersall == 32) || (FFAppState().numberofteachersall == 33) || (FFAppState().numberofteachersall == 34) || (FFAppState().numberofteachersall == 31)) ? ' учителя' : ' учителей'}',
                              options: FFButtonOptions(
                                width: 350.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).mainColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.montserrat(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      fontSize: 15.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
