import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/oneteacher/oneteacher_widget.dart';
import 'dart:ui';
import '/index.dart';
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
import 'teachers_page_model.dart';
export 'teachers_page_model.dart';

class TeachersPageWidget extends StatefulWidget {
  const TeachersPageWidget({
    super.key,
    this.notification,
    this.teachers,
  });

  final NotificationRecord? notification;
  final TeachersRecord? teachers;

  static String routeName = 'TeachersPage';
  static String routePath = '/teachersPage';

  @override
  State<TeachersPageWidget> createState() => _TeachersPageWidgetState();
}

class _TeachersPageWidgetState extends State<TeachersPageWidget>
    with TickerProviderStateMixin {
  late TeachersPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TeachersPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        Future(() async {
          FFAppState().teachersearchactive = false;
          safeSetState(() {});
          _model.textfiledactive = false;
          safeSetState(() {});
          _model.querynumofteachers = await queryTeachersRecordCount();
          FFAppState().numberofteachersall = _model.querynumofteachers!;
          FFAppState().numberofteachersCreated =
              valueOrDefault(currentUserDocument?.usercreatedteachernumber, 0);
          safeSetState(() {});
          _model.querrycounteaachers = await queryTeachersRecordCount(
            queryBuilder: (teachersRecord) => teachersRecord.where(
              'teacher_liked_by',
              arrayContains: currentUserReference,
            ),
          );
          FFAppState().numberofteachersfav = _model.querrycounteaachers!;
          safeSetState(() {});
        }),
        Future(() async {
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
        }),
      ]);
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
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
        body: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).white,
                  borderRadius: BorderRadius.only(),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                18.0, 0.0, 18.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Учителя',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        fontSize: 26.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 30.0,
                                      height: 30.0,
                                      child: Stack(
                                        children: [
                                          Container(
                                            width: 30.0,
                                            height: 30.0,
                                            decoration: BoxDecoration(
                                              color: Color(0x00FFFFFF),
                                            ),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                  NotificationsPageWidget
                                                      .routeName,
                                                  extra: <String, dynamic>{
                                                    '__transition_info__':
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                      duration: Duration(
                                                          milliseconds: 0),
                                                    ),
                                                  },
                                                );
                                              },
                                              child: Icon(
                                                Icons.notifications_none,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 30.0,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, -1.0),
                                            child: AuthUserStreamWidget(
                                              builder: (context) =>
                                                  StreamBuilder<
                                                      List<NotificationRecord>>(
                                                stream: queryNotificationRecord(
                                                  parent: currentUserReference,
                                                  queryBuilder:
                                                      (notificationRecord) =>
                                                          notificationRecord
                                                              .where(
                                                    'timestamp',
                                                    isGreaterThan:
                                                        currentUserDocument
                                                            ?.lastNotificationReadTime,
                                                  ),
                                                  singleRecord: true,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 10.0,
                                                        height: 10.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            Color(0x00FF5963),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<NotificationRecord>
                                                      containerNotificationRecordList =
                                                      snapshot.data!;
                                                  // Return an empty Container when the item does not exist.
                                                  if (snapshot.data!.isEmpty) {
                                                    return Container();
                                                  }
                                                  final containerNotificationRecord =
                                                      containerNotificationRecordList
                                                              .isNotEmpty
                                                          ? containerNotificationRecordList
                                                              .first
                                                          : null;

                                                  return Container(
                                                    width: 5.8,
                                                    height: 5.8,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      shape: BoxShape.circle,
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                18.0, 16.0, 8.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Container(
                                    width: 296.0,
                                    child: TextFormField(
                                      controller: _model.textController,
                                      focusNode: _model.textFieldFocusNode,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.textController',
                                        Duration(milliseconds: 0),
                                        () async {
                                          await queryTeachersRecordOnce()
                                              .then(
                                                (records) => _model
                                                        .simpleSearchResults =
                                                    TextSearch(
                                                  records
                                                      .map(
                                                        (record) =>
                                                            TextSearchItem
                                                                .fromTerms(
                                                                    record, [
                                                          record.name!
                                                        ]),
                                                      )
                                                      .toList(),
                                                )
                                                        .search(_model
                                                            .textController
                                                            .text)
                                                        .map((r) => r.object)
                                                        .toList(),
                                              )
                                              .onError((_, __) => _model
                                                  .simpleSearchResults = [])
                                              .whenComplete(
                                                  () => safeSetState(() {}));

                                          FFAppState().teachersearchactive =
                                              true;
                                          FFAppState().numberofteachersall = _model
                                              .simpleSearchResults
                                              .where((e) =>
                                                  (FFAppState()
                                                          .TeacherListOfSubjects
                                                          .isNotEmpty
                                                      ? FFAppState()
                                                          .TeacherListOfSubjects
                                                          .contains(e.subject)
                                                      : true) &&
                                                  (FFAppState()
                                                          .TeacherListTipDeyatelnosti
                                                          .isNotEmpty
                                                      ? FFAppState()
                                                          .TeacherListTipDeyatelnosti
                                                          .contains(
                                                              e.typeofactivity)
                                                      : true) &&
                                                  (FFAppState()
                                                              .SliderValueTeacher !=
                                                          null
                                                      ? (e.experienceYears >=
                                                          FFAppState()
                                                              .SliderValueTeacher)
                                                      : true))
                                              .toList()
                                              .length;
                                          FFAppState().numberofteachersfav =
                                              _model.simpleSearchResults
                                                  .where((e) => e.teacherLikedBy
                                                      .contains(
                                                          currentUserReference))
                                                  .toList()
                                                  .length;
                                          FFAppState().teachertextfieldwords =
                                              _model.textController.text;
                                          FFAppState().numberofteachersCreated =
                                              _model.simpleSearchResults
                                                  .where((e) =>
                                                      e.creator ==
                                                      currentUserReference)
                                                  .toList()
                                                  .length;
                                          safeSetState(() {});
                                          if (_model.textController.text ==
                                                  null ||
                                              _model.textController.text ==
                                                  '') {
                                            FFAppState().teachersearchactive =
                                                false;
                                            FFAppState().update(() {});
                                          }
                                        },
                                      ),
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelMediumIsCustom,
                                            ),
                                        hintText: 'Ищите учителей',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.normal,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF757171),
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        filled: true,
                                        fillColor: Color(0xFFEDEDED),
                                        prefixIcon: Icon(
                                          Icons.search,
                                          color: Color(0xFF1C42CF),
                                          size: 26.0,
                                        ),
                                        suffixIcon: _model
                                                .textController!.text.isNotEmpty
                                            ? InkWell(
                                                onTap: () async {
                                                  _model.textController
                                                      ?.clear();
                                                  await queryTeachersRecordOnce()
                                                      .then(
                                                        (records) => _model
                                                                .simpleSearchResults =
                                                            TextSearch(
                                                          records
                                                              .map(
                                                                (record) =>
                                                                    TextSearchItem
                                                                        .fromTerms(
                                                                            record,
                                                                            [
                                                                      record
                                                                          .name!
                                                                    ]),
                                                              )
                                                              .toList(),
                                                        )
                                                                .search(_model
                                                                    .textController
                                                                    .text)
                                                                .map((r) =>
                                                                    r.object)
                                                                .toList(),
                                                      )
                                                      .onError((_, __) => _model
                                                              .simpleSearchResults =
                                                          [])
                                                      .whenComplete(() =>
                                                          safeSetState(() {}));

                                                  FFAppState()
                                                          .teachersearchactive =
                                                      true;
                                                  FFAppState().numberofteachersall = _model
                                                      .simpleSearchResults
                                                      .where((e) =>
                                                          (FFAppState()
                                                                  .TeacherListOfSubjects
                                                                  .isNotEmpty
                                                              ? FFAppState()
                                                                  .TeacherListOfSubjects
                                                                  .contains(
                                                                      e.subject)
                                                              : true) &&
                                                          (FFAppState()
                                                                  .TeacherListTipDeyatelnosti
                                                                  .isNotEmpty
                                                              ? FFAppState()
                                                                  .TeacherListTipDeyatelnosti
                                                                  .contains(e
                                                                      .typeofactivity)
                                                              : true) &&
                                                          (FFAppState().SliderValueTeacher !=
                                                                  null
                                                              ? (e.experienceYears >=
                                                                  FFAppState()
                                                                      .SliderValueTeacher)
                                                              : true))
                                                      .toList()
                                                      .length;
                                                  FFAppState()
                                                          .numberofteachersfav =
                                                      _model.simpleSearchResults
                                                          .where((e) => e
                                                              .teacherLikedBy
                                                              .contains(
                                                                  currentUserReference))
                                                          .toList()
                                                          .length;
                                                  FFAppState()
                                                          .teachertextfieldwords =
                                                      _model
                                                          .textController.text;
                                                  FFAppState()
                                                          .numberofteachersCreated =
                                                      _model.simpleSearchResults
                                                          .where((e) =>
                                                              e.creator ==
                                                              currentUserReference)
                                                          .toList()
                                                          .length;
                                                  safeSetState(() {});
                                                  if (_model.textController
                                                              .text ==
                                                          null ||
                                                      _model.textController
                                                              .text ==
                                                          '') {
                                                    FFAppState()
                                                            .teachersearchactive =
                                                        false;
                                                    FFAppState().update(() {});
                                                  }
                                                  safeSetState(() {});
                                                },
                                                child: Icon(
                                                  Icons.clear,
                                                  color: Color(0xFFA6A9A9),
                                                  size: 22.0,
                                                ),
                                              )
                                            : null,
                                      ),
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
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      validator: _model.textControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 14.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        TeacherfilterWidget.routeName,
                                        extra: <String, dynamic>{
                                          '__transition_info__': TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    },
                                    child: FaIcon(
                                      FontAwesomeIcons.filter,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 22.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Flexible(
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Align(
                                  alignment: Alignment(-1.0, 0),
                                  child: TabBar(
                                    isScrollable: true,
                                    labelColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    unselectedLabelColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                          lineHeight: 3.3,
                                        ),
                                    unselectedLabelStyle:
                                        FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              font: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                              lineHeight: 3.3,
                                            ),
                                    indicatorColor: Color(0xFF1C42CF),
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    tabs: [
                                      Tab(
                                        text: 'Все',
                                      ),
                                      Tab(
                                        text: 'Избранные',
                                      ),
                                      Tab(
                                        text: 'Созданные',
                                      ),
                                    ],
                                    controller: _model.tabBarController,
                                    onTap: (i) async {
                                      [
                                        () async {},
                                        () async {},
                                        () async {}
                                      ][i]();
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: TabBarView(
                                    controller: _model.tabBarController,
                                    children: [
                                      KeepAliveWidgetWrapper(
                                        builder: (context) => Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 20.0, 4.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    RichText(
                                                      textScaler:
                                                          MediaQuery.of(context)
                                                              .textScaler,
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text: FFAppState()
                                                                .numberofteachersall
                                                                .toString(),
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF858585),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 12.0,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: () {
                                                              if ((FFAppState().numberofteachersall ==
                                                                      1) ||
                                                                  (FFAppState()
                                                                          .numberofteachersall ==
                                                                      21) ||
                                                                  (FFAppState()
                                                                          .numberofteachersall ==
                                                                      31)) {
                                                                return ' учитель';
                                                              } else if (((FFAppState()
                                                                              .numberofteachersall !=
                                                                          1) &&
                                                                      (FFAppState()
                                                                              .numberofteachersall !=
                                                                          0) &&
                                                                      (FFAppState()
                                                                              .numberofteachersall <
                                                                          5)) ||
                                                                  ((FFAppState().numberofteachersall == 22) ||
                                                                      (FFAppState()
                                                                              .numberofteachersall ==
                                                                          23) ||
                                                                      (FFAppState()
                                                                              .numberofteachersall ==
                                                                          24) ||
                                                                      (FFAppState()
                                                                              .numberofteachersall ==
                                                                          32) ||
                                                                      (FFAppState()
                                                                              .numberofteachersall ==
                                                                          33) ||
                                                                      (FFAppState()
                                                                              .numberofteachersall ==
                                                                          34))) {
                                                                return ' учителя';
                                                              } else {
                                                                return ' учителей';
                                                              }
                                                            }(),
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF858585),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 12.0,
                                                            ),
                                                          )
                                                        ],
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .montserrat(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                              color: Color(
                                                                  0xFF858585),
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Stack(
                                                  children: [
                                                    Stack(
                                                      children: [
                                                        if (FFAppState()
                                                                .teachersearchactive ==
                                                            false)
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: StreamBuilder<
                                                                List<
                                                                    TeachersRecord>>(
                                                              stream:
                                                                  queryTeachersRecord(
                                                                queryBuilder: (teachersRecord) =>
                                                                    teachersRecord.orderBy(
                                                                        'experience_years',
                                                                        descending:
                                                                            true),
                                                              )..listen((snapshot) {
                                                                      List<TeachersRecord>
                                                                          listViewTeachersRecordList =
                                                                          snapshot;
                                                                      if (_model.listViewPreviousSnapshot1 !=
                                                                              null &&
                                                                          !const ListEquality(TeachersRecordDocumentEquality()).equals(
                                                                              listViewTeachersRecordList,
                                                                              _model.listViewPreviousSnapshot1)) {
                                                                        () async {
                                                                          FFAppState().numberofteachersall =
                                                                              listViewTeachersRecordList.length;
                                                                          safeSetState(
                                                                              () {});

                                                                          safeSetState(
                                                                              () {});
                                                                        }();
                                                                      }
                                                                      _model.listViewPreviousSnapshot1 =
                                                                          snapshot;
                                                                    }),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          30.0,
                                                                      height:
                                                                          30.0,
                                                                      child:
                                                                          CircularProgressIndicator(
                                                                        valueColor:
                                                                            AlwaysStoppedAnimation<Color>(
                                                                          FlutterFlowTheme.of(context)
                                                                              .mainColor,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<TeachersRecord>
                                                                    listViewTeachersRecordList =
                                                                    snapshot
                                                                        .data!;

                                                                return ListView
                                                                    .builder(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .fromLTRB(
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    30.0,
                                                                  ),
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  itemCount:
                                                                      listViewTeachersRecordList
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          listViewIndex) {
                                                                    final listViewTeachersRecord =
                                                                        listViewTeachersRecordList[
                                                                            listViewIndex];
                                                                    return Visibility(
                                                                      visible: (FFAppState().TeacherListOfSubjects.isNotEmpty ? FFAppState().TeacherListOfSubjects.contains(listViewTeachersRecord.subject) : true) &&
                                                                          (FFAppState().TeacherListTipDeyatelnosti.isNotEmpty
                                                                              ? FFAppState().TeacherListTipDeyatelnosti.contains(listViewTeachersRecord
                                                                                  .typeofactivity)
                                                                              : true) &&
                                                                          (FFAppState().SliderValueTeacher != null
                                                                              ? (listViewTeachersRecord.experienceYears >= FFAppState().SliderValueTeacher)
                                                                              : true),
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            wrapWithModel(
                                                                          model: _model
                                                                              .oneteacherModels1
                                                                              .getModel(
                                                                            listViewIndex.toString(),
                                                                            listViewIndex,
                                                                          ),
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              OneteacherWidget(
                                                                            key:
                                                                                Key(
                                                                              'Keypbq_${listViewIndex.toString()}',
                                                                            ),
                                                                            teachers:
                                                                                listViewTeachersRecord,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        if (FFAppState()
                                                                .teachersearchactive ==
                                                            true)
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final searchresults =
                                                                    _model
                                                                        .simpleSearchResults
                                                                        .toList();

                                                                return ListView
                                                                    .builder(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .fromLTRB(
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    30.0,
                                                                  ),
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  itemCount:
                                                                      searchresults
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          searchresultsIndex) {
                                                                    final searchresultsItem =
                                                                        searchresults[
                                                                            searchresultsIndex];
                                                                    return Visibility(
                                                                      visible: (FFAppState().TeacherListOfSubjects.isNotEmpty ? FFAppState().TeacherListOfSubjects.contains(searchresultsItem.subject) : true) &&
                                                                          (FFAppState().TeacherListTipDeyatelnosti.isNotEmpty
                                                                              ? FFAppState().TeacherListTipDeyatelnosti.contains(searchresultsItem
                                                                                  .typeofactivity)
                                                                              : true) &&
                                                                          (FFAppState().SliderValueTeacher != null
                                                                              ? (searchresultsItem.experienceYears >= FFAppState().SliderValueTeacher)
                                                                              : true),
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            wrapWithModel(
                                                                          model: _model
                                                                              .oneteacherModels2
                                                                              .getModel(
                                                                            searchresultsIndex.toString(),
                                                                            searchresultsIndex,
                                                                          ),
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              OneteacherWidget(
                                                                            key:
                                                                                Key(
                                                                              'Keytpy_${searchresultsIndex.toString()}',
                                                                            ),
                                                                            teachers:
                                                                                searchresultsItem,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                    if (FFAppState()
                                                            .numberofteachersall <
                                                        1)
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      130.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/document.png',
                                                                    width: 60.0,
                                                                    height:
                                                                        80.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            24.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'Ничего не найдено',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .montserrat(
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Color(
                                                                            0xFF636363),
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            6.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'Попробуйте изменить ваш запрос или воспользуйтесь фильтрами',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .montserrat(
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Color(
                                                                            0xFF8F8F8F),
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
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
                                            ],
                                          ),
                                        ),
                                      ),
                                      KeepAliveWidgetWrapper(
                                        builder: (context) => Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 20.0, 4.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    RichText(
                                                      textScaler:
                                                          MediaQuery.of(context)
                                                              .textScaler,
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text: FFAppState()
                                                                .numberofteachersfav
                                                                .toString(),
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF858585),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 12.0,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: () {
                                                              if ((FFAppState().numberofteachersfav ==
                                                                      1) ||
                                                                  (FFAppState()
                                                                          .numberofteachersfav ==
                                                                      21) ||
                                                                  (FFAppState()
                                                                          .numberofteachersfav ==
                                                                      31)) {
                                                                return ' учитель';
                                                              } else if (((FFAppState()
                                                                              .numberofteachersfav !=
                                                                          1) &&
                                                                      (FFAppState()
                                                                              .numberofteachersfav !=
                                                                          0) &&
                                                                      (FFAppState()
                                                                              .numberofteachersfav <
                                                                          5)) ||
                                                                  ((FFAppState().numberofteachersfav == 22) ||
                                                                      (FFAppState()
                                                                              .numberofteachersfav ==
                                                                          23) ||
                                                                      (FFAppState()
                                                                              .numberofteachersfav ==
                                                                          24) ||
                                                                      (FFAppState()
                                                                              .numberofteachersfav ==
                                                                          32) ||
                                                                      (FFAppState()
                                                                              .numberofteachersfav ==
                                                                          33) ||
                                                                      (FFAppState()
                                                                              .numberofteachersfav ==
                                                                          34))) {
                                                                return ' учителя';
                                                              } else {
                                                                return ' учителей';
                                                              }
                                                            }(),
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF858585),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 12.0,
                                                            ),
                                                          )
                                                        ],
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .montserrat(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                              color: Color(
                                                                  0xFF858585),
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Stack(
                                                  children: [
                                                    Stack(
                                                      children: [
                                                        if (FFAppState()
                                                                .teachersearchactive ==
                                                            false)
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: StreamBuilder<
                                                                List<
                                                                    TeachersRecord>>(
                                                              stream:
                                                                  queryTeachersRecord(
                                                                queryBuilder: (teachersRecord) =>
                                                                    teachersRecord
                                                                        .where(
                                                                          'teacher_liked_by',
                                                                          arrayContains:
                                                                              currentUserReference,
                                                                        )
                                                                        .orderBy(
                                                                            'experience_years',
                                                                            descending:
                                                                                true),
                                                              )..listen((snapshot) {
                                                                      List<TeachersRecord>
                                                                          listViewTeachersRecordList =
                                                                          snapshot;
                                                                      if (_model.listViewPreviousSnapshot2 !=
                                                                              null &&
                                                                          !const ListEquality(TeachersRecordDocumentEquality()).equals(
                                                                              listViewTeachersRecordList,
                                                                              _model.listViewPreviousSnapshot2)) {
                                                                        () async {
                                                                          FFAppState().numberofteachersfav = listViewTeachersRecordList
                                                                              .where((e) => e.teacherLikedBy.contains(currentUserReference))
                                                                              .toList()
                                                                              .length;
                                                                          safeSetState(
                                                                              () {});

                                                                          safeSetState(
                                                                              () {});
                                                                        }();
                                                                      }
                                                                      _model.listViewPreviousSnapshot2 =
                                                                          snapshot;
                                                                    }),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          30.0,
                                                                      height:
                                                                          30.0,
                                                                      child:
                                                                          CircularProgressIndicator(
                                                                        valueColor:
                                                                            AlwaysStoppedAnimation<Color>(
                                                                          FlutterFlowTheme.of(context)
                                                                              .mainColor,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<TeachersRecord>
                                                                    listViewTeachersRecordList =
                                                                    snapshot
                                                                        .data!;

                                                                return ListView
                                                                    .builder(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .fromLTRB(
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    30.0,
                                                                  ),
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  itemCount:
                                                                      listViewTeachersRecordList
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          listViewIndex) {
                                                                    final listViewTeachersRecord =
                                                                        listViewTeachersRecordList[
                                                                            listViewIndex];
                                                                    return Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          wrapWithModel(
                                                                        model: _model
                                                                            .oneteacherModels3
                                                                            .getModel(
                                                                          listViewIndex
                                                                              .toString(),
                                                                          listViewIndex,
                                                                        ),
                                                                        updateCallback:
                                                                            () =>
                                                                                safeSetState(() {}),
                                                                        child:
                                                                            OneteacherWidget(
                                                                          key:
                                                                              Key(
                                                                            'Key4yb_${listViewIndex.toString()}',
                                                                          ),
                                                                          teachers:
                                                                              listViewTeachersRecord,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        if (FFAppState()
                                                                .teachersearchactive ==
                                                            true)
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final searchresults = _model
                                                                    .simpleSearchResults
                                                                    .where((e) => e
                                                                        .teacherLikedBy
                                                                        .contains(
                                                                            currentUserReference))
                                                                    .toList();

                                                                return ListView
                                                                    .builder(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .fromLTRB(
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    30.0,
                                                                  ),
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  itemCount:
                                                                      searchresults
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          searchresultsIndex) {
                                                                    final searchresultsItem =
                                                                        searchresults[
                                                                            searchresultsIndex];
                                                                    return Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          wrapWithModel(
                                                                        model: _model
                                                                            .oneteacherModels4
                                                                            .getModel(
                                                                          searchresultsIndex
                                                                              .toString(),
                                                                          searchresultsIndex,
                                                                        ),
                                                                        updateCallback:
                                                                            () =>
                                                                                safeSetState(() {}),
                                                                        child:
                                                                            OneteacherWidget(
                                                                          key:
                                                                              Key(
                                                                            'Keyg0u_${searchresultsIndex.toString()}',
                                                                          ),
                                                                          teachers:
                                                                              searchresultsItem,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        if (FFAppState()
                                                                .numberofteachersfav <
                                                            1)
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          130.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/images/document.png',
                                                                        width:
                                                                            60.0,
                                                                        height:
                                                                            80.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            24.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Ничего не найдено',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.montserrat(
                                                                              fontWeight: FontWeight.w600,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            color:
                                                                                Color(0xFF636363),
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            6.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Добавляйте учителей в избранное, чтобы \nбыстро находить их позже!',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.montserrat(
                                                                              fontWeight: FontWeight.w500,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            color:
                                                                                Color(0xFF8F8F8F),
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      KeepAliveWidgetWrapper(
                                        builder: (context) => Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  4.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          RichText(
                                                            textScaler:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .textScaler,
                                                            text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                  text: FFAppState()
                                                                      .numberofteachersCreated
                                                                      .toString(),
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color(
                                                                        0xFF858585),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        12.0,
                                                                  ),
                                                                ),
                                                                TextSpan(
                                                                  text: () {
                                                                    if ((FFAppState().numberofteachersCreated == 1) ||
                                                                        (FFAppState().numberofteachersCreated ==
                                                                            21) ||
                                                                        (FFAppState().numberofteachersCreated ==
                                                                            31)) {
                                                                      return ' учитель';
                                                                    } else if (((FFAppState().numberofteachersCreated != 1) &&
                                                                            (FFAppState().numberofteachersCreated !=
                                                                                0) &&
                                                                            (FFAppState().numberofteachersCreated <
                                                                                5)) ||
                                                                        ((FFAppState().numberofteachersCreated == 22) ||
                                                                            (FFAppState().numberofteachersCreated ==
                                                                                23) ||
                                                                            (FFAppState().numberofteachersCreated ==
                                                                                24) ||
                                                                            (FFAppState().numberofteachersCreated ==
                                                                                32) ||
                                                                            (FFAppState().numberofteachersCreated ==
                                                                                33) ||
                                                                            (FFAppState().numberofteachersCreated ==
                                                                                34))) {
                                                                      return ' учителя';
                                                                    } else {
                                                                      return ' учителей';
                                                                    }
                                                                  }(),
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color(
                                                                        0xFF858585),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        12.0,
                                                                  ),
                                                                )
                                                              ],
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .montserrat(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: Color(
                                                                        0xFF858585),
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Stack(
                                                      children: [
                                                        if (FFAppState()
                                                                .teachersearchactive ==
                                                            false)
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: StreamBuilder<
                                                                List<
                                                                    TeachersRecord>>(
                                                              stream:
                                                                  queryTeachersRecord(
                                                                queryBuilder: (teachersRecord) =>
                                                                    teachersRecord
                                                                        .where(
                                                                          'creator',
                                                                          isEqualTo:
                                                                              currentUserReference,
                                                                        )
                                                                        .orderBy(
                                                                            'experience_years',
                                                                            descending:
                                                                                true),
                                                              )..listen((snapshot) {
                                                                      List<TeachersRecord>
                                                                          listViewTeachersRecordList =
                                                                          snapshot;
                                                                      if (_model.listViewPreviousSnapshot3 !=
                                                                              null &&
                                                                          !const ListEquality(TeachersRecordDocumentEquality()).equals(
                                                                              listViewTeachersRecordList,
                                                                              _model.listViewPreviousSnapshot3)) {
                                                                        () async {
                                                                          FFAppState().numberofteachersCreated = listViewTeachersRecordList
                                                                              .where((e) => e.creator == currentUserReference)
                                                                              .toList()
                                                                              .length;
                                                                          safeSetState(
                                                                              () {});

                                                                          safeSetState(
                                                                              () {});
                                                                        }();
                                                                      }
                                                                      _model.listViewPreviousSnapshot3 =
                                                                          snapshot;
                                                                    }),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          30.0,
                                                                      height:
                                                                          30.0,
                                                                      child:
                                                                          CircularProgressIndicator(
                                                                        valueColor:
                                                                            AlwaysStoppedAnimation<Color>(
                                                                          FlutterFlowTheme.of(context)
                                                                              .mainColor,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<TeachersRecord>
                                                                    listViewTeachersRecordList =
                                                                    snapshot
                                                                        .data!;

                                                                return ListView
                                                                    .builder(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .fromLTRB(
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    44.0,
                                                                  ),
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  itemCount:
                                                                      listViewTeachersRecordList
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          listViewIndex) {
                                                                    final listViewTeachersRecord =
                                                                        listViewTeachersRecordList[
                                                                            listViewIndex];
                                                                    return Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          wrapWithModel(
                                                                        model: _model
                                                                            .oneteacherModels5
                                                                            .getModel(
                                                                          listViewIndex
                                                                              .toString(),
                                                                          listViewIndex,
                                                                        ),
                                                                        updateCallback:
                                                                            () =>
                                                                                safeSetState(() {}),
                                                                        child:
                                                                            OneteacherWidget(
                                                                          key:
                                                                              Key(
                                                                            'Key7c9_${listViewIndex.toString()}',
                                                                          ),
                                                                          teachers:
                                                                              listViewTeachersRecord,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        if (FFAppState()
                                                                .teachersearchactive ==
                                                            true)
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final searchresults = _model
                                                                    .simpleSearchResults
                                                                    .where((e) =>
                                                                        e.creator ==
                                                                        currentUserReference)
                                                                    .toList();

                                                                return ListView
                                                                    .builder(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .fromLTRB(
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    44.0,
                                                                  ),
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  itemCount:
                                                                      searchresults
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          searchresultsIndex) {
                                                                    final searchresultsItem =
                                                                        searchresults[
                                                                            searchresultsIndex];
                                                                    return Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          wrapWithModel(
                                                                        model: _model
                                                                            .oneteacherModels6
                                                                            .getModel(
                                                                          searchresultsIndex
                                                                              .toString(),
                                                                          searchresultsIndex,
                                                                        ),
                                                                        updateCallback:
                                                                            () =>
                                                                                safeSetState(() {}),
                                                                        child:
                                                                            OneteacherWidget(
                                                                          key:
                                                                              Key(
                                                                            'Key2rb_${searchresultsIndex.toString()}',
                                                                          ),
                                                                          teachers:
                                                                              searchresultsItem,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        if (FFAppState()
                                                                .numberofteachersCreated <
                                                            1)
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          144.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/images/document.png',
                                                                        width:
                                                                            60.0,
                                                                        height:
                                                                            80.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            24.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Ничего не найдено',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.montserrat(
                                                                              fontWeight: FontWeight.w600,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            color:
                                                                                Color(0xFF636363),
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            6.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Создайте карточку учителя \nбыстро и удобно!',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.montserrat(
                                                                              fontWeight: FontWeight.w500,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            color:
                                                                                Color(0xFF8F8F8F),
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ].addToEnd(
                                                      SizedBox(height: 10.0)),
                                                ),
                                              ),
                                            ),
                                            Opacity(
                                              opacity: 0.7,
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 1.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 12.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      context.pushNamed(
                                                        CreateTeacherPageWidget
                                                            .routeName,
                                                        extra: <String,
                                                            dynamic>{
                                                          '__transition_info__':
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .bottomToTop,
                                                          ),
                                                        },
                                                      );
                                                    },
                                                    text: '+ Создать',
                                                    options: FFButtonOptions(
                                                      width: 130.0,
                                                      height: 42.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: Color(0xFF1C42CF),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                font: GoogleFonts
                                                                    .montserrat(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontStyle,
                                                                ),
                                                                color: Colors
                                                                    .white,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontStyle,
                                                              ),
                                                      elevation: 0.0,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24.0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
