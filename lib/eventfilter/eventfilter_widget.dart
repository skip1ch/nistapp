import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'eventfilter_model.dart';
export 'eventfilter_model.dart';

class EventfilterWidget extends StatefulWidget {
  const EventfilterWidget({super.key});

  static String routeName = 'eventfilter';
  static String routePath = '/eventfilter';

  @override
  State<EventfilterWidget> createState() => _EventfilterWidgetState();
}

class _EventfilterWidgetState extends State<EventfilterWidget> {
  late EventfilterModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventfilterModel());
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
                              FFAppState().eventObrazovatelnieisset = false;
                              FFAppState().eventTvorcheskieisset = false;
                              FFAppState().eventSportivnieisset = false;
                              FFAppState().eventSocEcoisset = false;
                              FFAppState().removeFromEventListOfTypes(
                                  'Образовательные');
                              FFAppState().update(() {});
                              FFAppState()
                                  .removeFromEventListOfTypes('Творческие');
                              FFAppState().update(() {});
                              FFAppState()
                                  .removeFromEventListOfTypes('Спортивные');
                              FFAppState().update(() {});
                              FFAppState().removeFromEventListOfTypes(
                                  'Социальные / Экологические');
                              FFAppState().update(() {});
                              safeSetState(() {
                                _model.checkboxobrazValue =
                                    FFAppState().eventObrazovatelnieisset;
                                _model.checkboxtvorchValue =
                                    FFAppState().eventTvorcheskieisset;
                                _model.checkboxsportValue =
                                    FFAppState().eventSportivnieisset;
                                _model.checkboxsocValue =
                                    FFAppState().eventSocEcoisset;
                              });
                              _model.loopCount = 0;
                              _model.eventsCount = 0;
                              safeSetState(() {});
                              if (FFAppState().EventListOfTypes.length > 0) {
                                while (_model.loopCount <
                                    FFAppState().EventListOfTypes.length) {
                                  _model.numbertypesatindexsbrositxx =
                                      await queryEventsRecordCount(
                                    queryBuilder: (eventsRecord) =>
                                        eventsRecord.where(
                                      'type',
                                      isEqualTo: FFAppState()
                                          .EventListOfTypes
                                          .elementAtOrNull(_model.loopCount),
                                    ),
                                  );
                                  _model.loopCount = _model.loopCount + 1;
                                  _model.eventsCount = _model.eventsCount +
                                      _model.numbertypesatindexsbrositxx!;
                                  safeSetState(() {});
                                }
                                FFAppState().numberofeventsall =
                                    _model.eventsCount;
                                FFAppState().update(() {});
                              } else {
                                _model.vseeventsnumsbrositxx =
                                    await queryEventsRecordCount();
                                FFAppState().numberofeventsall =
                                    _model.vseeventsnumsbrositxx!;
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
                              6.0, 0.0, 6.0, 0.0),
                          child: FlutterFlowCalendar(
                            color: Color(0xBD1C42CF),
                            iconColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            weekFormat: true,
                            weekStartsMonday: true,
                            rowHeight: 50.0,
                            onChange: (DateTimeRange? newSelectedDate) {
                              safeSetState(() =>
                                  _model.calendarSelectedDay = newSelectedDate);
                            },
                            titleStyle: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleLargeFamily,
                                  fontSize: 17.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .titleLargeIsCustom,
                                ),
                            dayOfWeekStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      font: GoogleFonts.montserrat(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context).black,
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontStyle,
                                    ),
                            dateStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.montserrat(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).black,
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                            selectedDateStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  fontSize: 15.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .titleSmallIsCustom,
                                ),
                            inactiveDateStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  color: FlutterFlowTheme.of(context).black,
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .labelMediumIsCustom,
                                ),
                            locale: FFLocalizations.of(context).languageCode,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              14.0, 20.0, 14.0, 6.0),
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
                              0.0, 14.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().tipeventisset = true;
                                  safeSetState(() {});
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
                                            'Тип мероприятия',
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
                                                      .black,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
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
                              Column(
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
                                          'Для кого',
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
                              Column(
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
                                          'Место проведения',
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
                            ].divide(SizedBox(height: 10.0)),
                          ),
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
                              'Показать ${FFAppState().numberofeventsall.toString()}${() {
                            if ((FFAppState().numberofeventsall == 1) ||
                                (FFAppState().numberofeventsall == 21) ||
                                (FFAppState().numberofeventsall == 31)) {
                              return ' мероприятие';
                            } else if (((FFAppState().numberofeventsall < 5) &&
                                    (FFAppState().numberofeventsall > 1)) ||
                                ((FFAppState().numberofeventsall < 25) &&
                                    (FFAppState().numberofeventsall > 21)) ||
                                ((FFAppState().numberofeventsall < 35) &&
                                    (FFAppState().numberofeventsall > 31))) {
                              return ' мероприятия';
                            } else {
                              return ' мероприятий';
                            }
                          }()}',
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
            if (FFAppState().tipeventisset == true)
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
                                    FFAppState().tipeventisset = false;
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
                                'Тип мероприятия',
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
                                    if ((FFAppState()
                                                .eventObrazovatelnieisset ==
                                            true) ||
                                        (FFAppState().eventTvorcheskieisset ==
                                            true) ||
                                        (FFAppState().eventSportivnieisset ==
                                            true) ||
                                        (FFAppState().eventSocEcoisset == true))
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
                                                    .eventObrazovatelnieisset =
                                                false;
                                            FFAppState().eventTvorcheskieisset =
                                                false;
                                            FFAppState().eventSportivnieisset =
                                                false;
                                            FFAppState().eventSocEcoisset =
                                                false;
                                            FFAppState()
                                                .removeFromEventListOfTypes(
                                                    'Образовательные');
                                            FFAppState().update(() {});
                                            FFAppState()
                                                .removeFromEventListOfTypes(
                                                    'Творческие');
                                            FFAppState().update(() {});
                                            FFAppState()
                                                .removeFromEventListOfTypes(
                                                    'Спортивные');
                                            FFAppState().update(() {});
                                            FFAppState()
                                                .removeFromEventListOfTypes(
                                                    'Социальные / Экологические');
                                            FFAppState().update(() {});
                                            safeSetState(() {
                                              _model.checkboxobrazValue =
                                                  FFAppState()
                                                      .eventObrazovatelnieisset;
                                              _model.checkboxtvorchValue =
                                                  FFAppState()
                                                      .eventTvorcheskieisset;
                                              _model.checkboxsportValue =
                                                  FFAppState()
                                                      .eventSportivnieisset;
                                              _model.checkboxsocValue =
                                                  FFAppState().eventSocEcoisset;
                                            });
                                            _model.loopCount = 0;
                                            _model.eventsCount = 0;
                                            safeSetState(() {});
                                            if (FFAppState()
                                                    .EventListOfTypes
                                                    .length >
                                                0) {
                                              while (_model.loopCount <
                                                  FFAppState()
                                                      .EventListOfTypes
                                                      .length) {
                                                _model.numbertypesatindexsbrosit =
                                                    await queryEventsRecordCount(
                                                  queryBuilder:
                                                      (eventsRecord) =>
                                                          eventsRecord.where(
                                                    'type',
                                                    isEqualTo: FFAppState()
                                                        .EventListOfTypes
                                                        .elementAtOrNull(
                                                            _model.loopCount),
                                                  ),
                                                );
                                                _model.loopCount =
                                                    _model.loopCount + 1;
                                                _model.eventsCount = _model
                                                        .eventsCount +
                                                    _model
                                                        .numbertypesatindexsbrosit!;
                                                safeSetState(() {});
                                              }
                                              FFAppState().numberofeventsall =
                                                  _model.eventsCount;
                                              FFAppState().update(() {});
                                            } else {
                                              _model.vseeventsnumsbrosit =
                                                  await queryEventsRecordCount();
                                              FFAppState().numberofeventsall =
                                                  _model.vseeventsnumsbrosit!;
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
                                    'Образовательные',
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
                                      value: _model.checkboxobrazValue ??=
                                          FFAppState().eventObrazovatelnieisset,
                                      onChanged: (newValue) async {
                                        safeSetState(() => _model
                                            .checkboxobrazValue = newValue!);
                                        if (newValue!) {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.eventsCount = 0;
                                          safeSetState(() {});
                                          FFAppState().addToEventListOfTypes(
                                              'Образовательные');
                                          FFAppState()
                                              .eventObrazovatelnieisset = true;
                                          FFAppState().update(() {});
                                          while (_model.loopCount <
                                              FFAppState()
                                                  .EventListOfTypes
                                                  .length) {
                                            _model.numbersubjectatindex8 =
                                                await queryEventsRecordCount(
                                              queryBuilder: (eventsRecord) =>
                                                  eventsRecord.where(
                                                'type',
                                                isEqualTo: FFAppState()
                                                    .EventListOfTypes
                                                    .elementAtOrNull(
                                                        _model.loopCount),
                                              ),
                                            );
                                            _model.loopCount =
                                                _model.loopCount + 1;
                                            _model.eventsCount = _model
                                                    .eventsCount +
                                                _model.numbersubjectatindex8!;
                                            safeSetState(() {});
                                          }
                                          FFAppState().numberofeventsall =
                                              _model.eventsCount;
                                          FFAppState().update(() {});

                                          safeSetState(() {});
                                        } else {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.eventsCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .removeFromEventListOfTypes(
                                                  'Образовательные');
                                          FFAppState()
                                              .eventObrazovatelnieisset = false;
                                          FFAppState().update(() {});
                                          if (FFAppState()
                                                  .EventListOfTypes
                                                  .length >
                                              0) {
                                            while (_model.loopCount <
                                                FFAppState()
                                                    .EventListOfTypes
                                                    .length) {
                                              _model.numbersubjectatindex9 =
                                                  await queryEventsRecordCount(
                                                queryBuilder: (eventsRecord) =>
                                                    eventsRecord.where(
                                                  'type',
                                                  isEqualTo: FFAppState()
                                                      .EventListOfTypes
                                                      .elementAtOrNull(
                                                          _model.loopCount),
                                                ),
                                              );
                                              _model.loopCount =
                                                  _model.loopCount + 1;
                                              _model.eventsCount = _model
                                                      .eventsCount +
                                                  _model.numbersubjectatindex9!;
                                              safeSetState(() {});
                                            }
                                            FFAppState().numberofeventsall =
                                                _model.eventsCount;
                                            FFAppState().update(() {});
                                          } else {
                                            _model.vseteachersnum4 =
                                                await queryEventsRecordCount();
                                            FFAppState().numberofeventsall =
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
                                    'Творческие',
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
                                      value: _model.checkboxtvorchValue ??=
                                          FFAppState().eventTvorcheskieisset,
                                      onChanged: (newValue) async {
                                        safeSetState(() => _model
                                            .checkboxtvorchValue = newValue!);
                                        if (newValue!) {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.eventsCount = 0;
                                          safeSetState(() {});
                                          FFAppState().addToEventListOfTypes(
                                              'Творческие');
                                          FFAppState().eventTvorcheskieisset =
                                              true;
                                          FFAppState().update(() {});
                                          while (_model.loopCount <
                                              FFAppState()
                                                  .EventListOfTypes
                                                  .length) {
                                            _model.numbersubjectatindex10 =
                                                await queryEventsRecordCount(
                                              queryBuilder: (eventsRecord) =>
                                                  eventsRecord.where(
                                                'type',
                                                isEqualTo: FFAppState()
                                                    .EventListOfTypes
                                                    .elementAtOrNull(
                                                        _model.loopCount),
                                              ),
                                            );
                                            _model.loopCount =
                                                _model.loopCount + 1;
                                            _model.eventsCount = _model
                                                    .eventsCount +
                                                _model.numbersubjectatindex10!;
                                            safeSetState(() {});
                                          }
                                          FFAppState().numberofeventsall =
                                              _model.eventsCount;
                                          FFAppState().update(() {});

                                          safeSetState(() {});
                                        } else {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.eventsCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .removeFromEventListOfTypes(
                                                  'Творческие');
                                          FFAppState().eventTvorcheskieisset =
                                              false;
                                          FFAppState().update(() {});
                                          if (FFAppState()
                                                  .EventListOfTypes
                                                  .length >
                                              0) {
                                            while (_model.loopCount <
                                                FFAppState()
                                                    .EventListOfTypes
                                                    .length) {
                                              _model.numbersubjectatindex11 =
                                                  await queryEventsRecordCount(
                                                queryBuilder: (eventsRecord) =>
                                                    eventsRecord.where(
                                                  'type',
                                                  isEqualTo: FFAppState()
                                                      .EventListOfTypes
                                                      .elementAtOrNull(
                                                          _model.loopCount),
                                                ),
                                              );
                                              _model.loopCount =
                                                  _model.loopCount + 1;
                                              _model.eventsCount = _model
                                                      .eventsCount +
                                                  _model
                                                      .numbersubjectatindex11!;
                                              safeSetState(() {});
                                            }
                                            FFAppState().numberofeventsall =
                                                _model.eventsCount;
                                            FFAppState().update(() {});
                                          } else {
                                            _model.vseteachersnum5 =
                                                await queryEventsRecordCount();
                                            FFAppState().numberofeventsall =
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
                                    'Спортивные',
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
                                      value: _model.checkboxsportValue ??=
                                          FFAppState().eventSportivnieisset,
                                      onChanged: (newValue) async {
                                        safeSetState(() => _model
                                            .checkboxsportValue = newValue!);
                                        if (newValue!) {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.eventsCount = 0;
                                          safeSetState(() {});
                                          FFAppState().addToEventListOfTypes(
                                              'Спортивные');
                                          FFAppState().eventSportivnieisset =
                                              true;
                                          FFAppState().update(() {});
                                          while (_model.loopCount <
                                              FFAppState()
                                                  .EventListOfTypes
                                                  .length) {
                                            _model.numbersubjectatindex12 =
                                                await queryEventsRecordCount(
                                              queryBuilder: (eventsRecord) =>
                                                  eventsRecord.where(
                                                'type',
                                                isEqualTo: FFAppState()
                                                    .EventListOfTypes
                                                    .elementAtOrNull(
                                                        _model.loopCount),
                                              ),
                                            );
                                            _model.loopCount =
                                                _model.loopCount + 1;
                                            _model.eventsCount = _model
                                                    .eventsCount +
                                                _model.numbersubjectatindex12!;
                                            safeSetState(() {});
                                          }
                                          FFAppState().numberofeventsall =
                                              _model.eventsCount;
                                          FFAppState().update(() {});

                                          safeSetState(() {});
                                        } else {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.eventsCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .removeFromEventListOfTypes(
                                                  'Спортивные');
                                          FFAppState().eventSportivnieisset =
                                              false;
                                          FFAppState().update(() {});
                                          if (FFAppState()
                                                  .EventListOfTypes
                                                  .length >
                                              0) {
                                            while (_model.loopCount <
                                                FFAppState()
                                                    .EventListOfTypes
                                                    .length) {
                                              _model.numbersubjectatindex13 =
                                                  await queryEventsRecordCount(
                                                queryBuilder: (eventsRecord) =>
                                                    eventsRecord.where(
                                                  'type',
                                                  isEqualTo: FFAppState()
                                                      .EventListOfTypes
                                                      .elementAtOrNull(
                                                          _model.loopCount),
                                                ),
                                              );
                                              _model.loopCount =
                                                  _model.loopCount + 1;
                                              _model.eventsCount = _model
                                                      .eventsCount +
                                                  _model
                                                      .numbersubjectatindex13!;
                                              safeSetState(() {});
                                            }
                                            FFAppState().numberofeventsall =
                                                _model.eventsCount;
                                            FFAppState().update(() {});
                                          } else {
                                            _model.vseteachersnum6 =
                                                await queryEventsRecordCount();
                                            FFAppState().numberofeventsall =
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
                                    'Социальные / Экологические',
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
                                      value: _model.checkboxsocValue ??=
                                          FFAppState().eventSocEcoisset,
                                      onChanged: (newValue) async {
                                        safeSetState(() => _model
                                            .checkboxsocValue = newValue!);
                                        if (newValue!) {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.eventsCount = 0;
                                          safeSetState(() {});
                                          FFAppState().addToEventListOfTypes(
                                              'Социальные / Экологические');
                                          FFAppState().eventSocEcoisset = true;
                                          FFAppState().update(() {});
                                          while (_model.loopCount <
                                              FFAppState()
                                                  .EventListOfTypes
                                                  .length) {
                                            _model.numbersubjectatindex14 =
                                                await queryEventsRecordCount(
                                              queryBuilder: (eventsRecord) =>
                                                  eventsRecord.where(
                                                'type',
                                                isEqualTo: FFAppState()
                                                    .EventListOfTypes
                                                    .elementAtOrNull(
                                                        _model.loopCount),
                                              ),
                                            );
                                            _model.loopCount =
                                                _model.loopCount + 1;
                                            _model.eventsCount = _model
                                                    .eventsCount +
                                                _model.numbersubjectatindex14!;
                                            safeSetState(() {});
                                          }
                                          FFAppState().numberofeventsall =
                                              _model.eventsCount;
                                          FFAppState().update(() {});

                                          safeSetState(() {});
                                        } else {
                                          await Future.delayed(
                                            Duration(
                                              milliseconds: 250,
                                            ),
                                          );
                                          _model.loopCount = 0;
                                          _model.eventsCount = 0;
                                          safeSetState(() {});
                                          FFAppState()
                                              .removeFromEventListOfTypes(
                                                  'Социальные / Экологические');
                                          FFAppState().eventSocEcoisset = false;
                                          FFAppState().update(() {});
                                          if (FFAppState()
                                                  .EventListOfTypes
                                                  .length >
                                              0) {
                                            while (_model.loopCount <
                                                FFAppState()
                                                    .EventListOfTypes
                                                    .length) {
                                              _model.numbersubjectatindex15 =
                                                  await queryEventsRecordCount(
                                                queryBuilder: (eventsRecord) =>
                                                    eventsRecord.where(
                                                  'type',
                                                  isEqualTo: FFAppState()
                                                      .EventListOfTypes
                                                      .elementAtOrNull(
                                                          _model.loopCount),
                                                ),
                                              );
                                              _model.loopCount =
                                                  _model.loopCount + 1;
                                              _model.eventsCount = _model
                                                      .eventsCount +
                                                  _model
                                                      .numbersubjectatindex15!;
                                              safeSetState(() {});
                                            }
                                            FFAppState().numberofeventsall =
                                                _model.eventsCount;
                                            FFAppState().update(() {});
                                          } else {
                                            _model.vseteachersnum12 =
                                                await queryEventsRecordCount();
                                            FFAppState().numberofeventsall =
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
                                FFAppState().tipeventisset = false;
                                FFAppState().update(() {});
                              },
                              text:
                                  'Показать ${FFAppState().numberofeventsall.toString()}${() {
                                if ((FFAppState().numberofeventsall == 1) ||
                                    (FFAppState().numberofeventsall == 21) ||
                                    (FFAppState().numberofeventsall == 31)) {
                                  return ' мероприятие';
                                } else if (((FFAppState().numberofeventsall <
                                            5) &&
                                        (FFAppState().numberofeventsall > 1)) ||
                                    ((FFAppState().numberofeventsall < 25) &&
                                        (FFAppState().numberofeventsall >
                                            21)) ||
                                    ((FFAppState().numberofeventsall < 35) &&
                                        (FFAppState().numberofeventsall >
                                            31))) {
                                  return ' мероприятия';
                                } else {
                                  return ' мероприятий';
                                }
                              }()}',
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
