import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/oneclub/oneclub_widget.dart';
import '/pages/filter_club/filter_club_widget.dart';
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
import 'clubs_page_model.dart';
export 'clubs_page_model.dart';

class ClubsPageWidget extends StatefulWidget {
  const ClubsPageWidget({
    super.key,
    this.clubsDoc,
    this.notification,
  });

  final ClubsRecord? clubsDoc;
  final NotificationRecord? notification;

  static String routeName = 'ClubsPage';
  static String routePath = '/clubsPage';

  @override
  State<ClubsPageWidget> createState() => _ClubsPageWidgetState();
}

class _ClubsPageWidgetState extends State<ClubsPageWidget>
    with TickerProviderStateMixin {
  late ClubsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClubsPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.textfiledactive = false;
      safeSetState(() {});
      _model.queryclubsall = await queryClubsRecordCount();
      FFAppState().clubsearchactive = false;
      FFAppState().NumberOfClubsAll = _model.queryclubsall!;
      FFAppState().NumberOfClubsCreated =
          valueOrDefault(currentUserDocument?.usercreatedclubsnumber, 0);
      safeSetState(() {});
      _model.queryclubsfav = await queryClubsRecordCount(
        queryBuilder: (clubsRecord) => clubsRecord.where(
          'club_liked_by',
          arrayContains: currentUserReference,
        ),
      );
      FFAppState().NumberOfClubsFav = _model.queryclubsfav!;
      safeSetState(() {});
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
                                  'Клубы',
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
                                          await queryClubsRecordOnce()
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

                                          FFAppState().clubsearchactive = true;
                                          FFAppState().NumberOfClubsAll = _model
                                              .simpleSearchResults
                                              .where((e) =>
                                                  (FFAppState()
                                                          .ClubSphere
                                                          .isNotEmpty
                                                      ? FFAppState()
                                                          .ClubSphere
                                                          .contains(e.sphere)
                                                      : true) &&
                                                  (FFAppState()
                                                          .ClubEntryGrade
                                                          .isNotEmpty
                                                      ? FFAppState()
                                                          .ClubEntryGrade
                                                          .contains(
                                                              e.entryGrade)
                                                      : true) &&
                                                  (FFAppState()
                                                          .ClubFormat
                                                          .isNotEmpty
                                                      ? FFAppState()
                                                          .ClubFormat
                                                          .contains(e.format)
                                                      : true))
                                              .toList()
                                              .length;
                                          FFAppState().NumberOfClubsFav = _model
                                              .simpleSearchResults
                                              .where((e) => e.clubLikedBy
                                                  .contains(
                                                      currentUserReference))
                                              .toList()
                                              .length;
                                          FFAppState().NumberOfClubsCreated =
                                              _model
                                                  .simpleSearchResults
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
                                            FFAppState().clubsearchactive =
                                                false;
                                            safeSetState(() {});
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
                                        hintText: 'Ищите клубы',
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
                                                  await queryClubsRecordOnce()
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
                                                      .clubsearchactive = true;
                                                  FFAppState().NumberOfClubsAll = _model
                                                      .simpleSearchResults
                                                      .where((e) =>
                                                          (FFAppState()
                                                                  .ClubSphere
                                                                  .isNotEmpty
                                                              ? FFAppState()
                                                                  .ClubSphere
                                                                  .contains(
                                                                      e.sphere)
                                                              : true) &&
                                                          (FFAppState()
                                                                  .ClubEntryGrade
                                                                  .isNotEmpty
                                                              ? FFAppState()
                                                                  .ClubEntryGrade
                                                                  .contains(e
                                                                      .entryGrade)
                                                              : true) &&
                                                          (FFAppState()
                                                                  .ClubFormat
                                                                  .isNotEmpty
                                                              ? FFAppState()
                                                                  .ClubFormat
                                                                  .contains(
                                                                      e.format)
                                                              : true))
                                                      .toList()
                                                      .length;
                                                  FFAppState()
                                                          .NumberOfClubsFav =
                                                      _model.simpleSearchResults
                                                          .where((e) => e
                                                              .clubLikedBy
                                                              .contains(
                                                                  currentUserReference))
                                                          .toList()
                                                          .length;
                                                  FFAppState()
                                                          .NumberOfClubsCreated =
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
                                                            .clubsearchactive =
                                                        false;
                                                    safeSetState(() {});
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
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return GestureDetector(
                                            onTap: () {
                                              FocusScope.of(context).unfocus();
                                              FocusManager.instance.primaryFocus
                                                  ?.unfocus();
                                            },
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: FilterClubWidget(),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
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
                                        text: 'Избранное',
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
                                                  0.0, 12.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        18.0, 0.0, 0.0, 10.0),
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
                                                                .NumberOfClubsAll
                                                                .toString(),
                                                            style: TextStyle(),
                                                          ),
                                                          TextSpan(
                                                            text: () {
                                                              if ((FFAppState()
                                                                          .NumberOfClubsAll ==
                                                                      1) ||
                                                                  (FFAppState()
                                                                          .NumberOfClubsAll ==
                                                                      21) ||
                                                                  (FFAppState()
                                                                          .NumberOfClubsAll ==
                                                                      31)) {
                                                                return ' клуб';
                                                              } else if (((FFAppState()
                                                                              .NumberOfClubsAll <
                                                                          5) &&
                                                                      (FFAppState()
                                                                              .NumberOfClubsAll >
                                                                          1)) ||
                                                                  ((FFAppState()
                                                                              .NumberOfClubsAll <
                                                                          25) &&
                                                                      (FFAppState()
                                                                              .NumberOfClubsAll >
                                                                          21)) ||
                                                                  ((FFAppState()
                                                                              .NumberOfClubsAll <
                                                                          35) &&
                                                                      (FFAppState()
                                                                              .NumberOfClubsAll >
                                                                          31))) {
                                                                return ' клуба';
                                                              } else {
                                                                return ' клубов';
                                                              }
                                                            }(),
                                                            style: TextStyle(),
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
                                                                .clubsearchactive ==
                                                            false)
                                                          AuthUserStreamWidget(
                                                            builder: (context) =>
                                                                StreamBuilder<
                                                                    List<
                                                                        ClubsRecord>>(
                                                              stream:
                                                                  queryClubsRecord(
                                                                queryBuilder: (clubsRecord) =>
                                                                    clubsRecord
                                                                        .where(Filter
                                                                            .or(
                                                                          Filter(
                                                                            'Name',
                                                                            isEqualTo:
                                                                                FFAppState().clubname,
                                                                          ),
                                                                          Filter(
                                                                            'logo',
                                                                            isEqualTo:
                                                                                FFAppState().clubimage,
                                                                          ),
                                                                          Filter(
                                                                            'free_positions',
                                                                            isEqualTo:
                                                                                FFAppState().clubpositions,
                                                                          ),
                                                                          Filter(
                                                                            'info',
                                                                            isEqualTo:
                                                                                FFAppState().clubinfo,
                                                                          ),
                                                                          Filter(
                                                                            'creator_name',
                                                                            isEqualTo:
                                                                                valueOrDefault(currentUserDocument?.name, ''),
                                                                          ),
                                                                          Filter(
                                                                            'creator_grade',
                                                                            isEqualTo:
                                                                                valueOrDefault(currentUserDocument?.grade, 0),
                                                                          ),
                                                                          Filter(
                                                                            'creator_liter',
                                                                            isEqualTo:
                                                                                valueOrDefault(currentUserDocument?.liter, ''),
                                                                          ),
                                                                        ))
                                                                        .orderBy(
                                                                            'created',
                                                                            descending:
                                                                                true),
                                                              )..listen((snapshot) {
                                                                      List<ClubsRecord>
                                                                          listViewClubsRecordList =
                                                                          snapshot;
                                                                      if (_model.listViewPreviousSnapshot1 !=
                                                                              null &&
                                                                          !const ListEquality(ClubsRecordDocumentEquality()).equals(
                                                                              listViewClubsRecordList,
                                                                              _model.listViewPreviousSnapshot1)) {
                                                                        () async {
                                                                          FFAppState().NumberOfClubsAll =
                                                                              listViewClubsRecordList.length;
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
                                                                List<ClubsRecord>
                                                                    listViewClubsRecordList =
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
                                                                      listViewClubsRecordList
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          listViewIndex) {
                                                                    final listViewClubsRecord =
                                                                        listViewClubsRecordList[
                                                                            listViewIndex];
                                                                    return Visibility(
                                                                      visible: (listViewClubsRecord.freePositions >
                                                                              0) &&
                                                                          ((FFAppState().ClubObrazovanie != null && FFAppState().ClubObrazovanie != '') || (FFAppState().ClubVolonterstvo != null && FFAppState().ClubVolonterstvo != '') || (FFAppState().ClubSport != null && FFAppState().ClubSport != '') || (FFAppState().ClubTvorchestvo != null && FFAppState().ClubTvorchestvo != '') || (FFAppState().ClubVseTematiki != null && FFAppState().ClubVseTematiki != '')
                                                                              ? FFAppState().ClubSphere.contains(listViewClubsRecord
                                                                                  .sphere)
                                                                              : true) &&
                                                                          ((FFAppState().ClubSevenNine != null && FFAppState().ClubSevenNine != '') || (FFAppState().ClubTenTwelve != null && FFAppState().ClubTenTwelve != '') || (FFAppState().ClubVseGrades != null && FFAppState().ClubVseGrades != '')
                                                                              ? FFAppState().ClubEntryGrade.contains(listViewClubsRecord
                                                                                  .entryGrade)
                                                                              : true) &&
                                                                          ((FFAppState().ClubOffline != null && FFAppState().ClubOffline != '') || (FFAppState().ClubOnline != null && FFAppState().ClubOnline != '') || (FFAppState().ClubVseFormati != null && FFAppState().ClubVseFormati != '')
                                                                              ? FFAppState().ClubFormat.contains(listViewClubsRecord.format)
                                                                              : true),
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            wrapWithModel(
                                                                          model: _model
                                                                              .oneclubModels1
                                                                              .getModel(
                                                                            listViewIndex.toString(),
                                                                            listViewIndex,
                                                                          ),
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              OneclubWidget(
                                                                            key:
                                                                                Key(
                                                                              'Key39t_${listViewIndex.toString()}',
                                                                            ),
                                                                            clubs:
                                                                                listViewClubsRecord,
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
                                                                .clubsearchactive ==
                                                            true)
                                                          Builder(
                                                            builder: (context) {
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
                                                                    visible: (searchresultsItem.freePositions >
                                                                            0) &&
                                                                        ((FFAppState().ClubObrazovanie != null && FFAppState().ClubObrazovanie != '') || (FFAppState().ClubVolonterstvo != null && FFAppState().ClubVolonterstvo != '') || (FFAppState().ClubSport != null && FFAppState().ClubSport != '') || (FFAppState().ClubTvorchestvo != null && FFAppState().ClubTvorchestvo != '') || (FFAppState().ClubVseTematiki != null && FFAppState().ClubVseTematiki != '')
                                                                            ? FFAppState().ClubSphere.contains(searchresultsItem
                                                                                .sphere)
                                                                            : true) &&
                                                                        ((FFAppState().ClubSevenNine != null && FFAppState().ClubSevenNine != '') || (FFAppState().ClubTenTwelve != null && FFAppState().ClubTenTwelve != '') || (FFAppState().ClubVseGrades != null && FFAppState().ClubVseGrades != '')
                                                                            ? FFAppState().ClubEntryGrade.contains(searchresultsItem
                                                                                .entryGrade)
                                                                            : true) &&
                                                                        ((FFAppState().ClubOffline != null && FFAppState().ClubOffline != '') ||
                                                                                (FFAppState().ClubOnline != null && FFAppState().ClubOnline != '') ||
                                                                                (FFAppState().ClubVseFormati != null && FFAppState().ClubVseFormati != '')
                                                                            ? FFAppState().ClubFormat.contains(searchresultsItem.format)
                                                                            : true),
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          wrapWithModel(
                                                                        model: _model
                                                                            .oneclubModels2
                                                                            .getModel(
                                                                          searchresultsIndex
                                                                              .toString(),
                                                                          searchresultsIndex,
                                                                        ),
                                                                        updateCallback:
                                                                            () =>
                                                                                safeSetState(() {}),
                                                                        child:
                                                                            OneclubWidget(
                                                                          key:
                                                                              Key(
                                                                            'Keyx5r_${searchresultsIndex.toString()}',
                                                                          ),
                                                                          clubs:
                                                                              searchresultsItem,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        if (FFAppState()
                                                                .NumberOfClubsAll <
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
                                                                      'Добавляйте и делитись своими клубами\nвсем пользователям!',
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
                                        builder: (context) => Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        18.0, 0.0, 0.0, 10.0),
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
                                                                .NumberOfClubsFav
                                                                .toString(),
                                                            style: TextStyle(),
                                                          ),
                                                          TextSpan(
                                                            text: () {
                                                              if ((FFAppState()
                                                                          .NumberOfClubsFav ==
                                                                      1) ||
                                                                  (FFAppState()
                                                                          .NumberOfClubsFav ==
                                                                      21) ||
                                                                  (FFAppState()
                                                                          .NumberOfClubsFav ==
                                                                      31)) {
                                                                return ' клуб';
                                                              } else if (((FFAppState()
                                                                              .NumberOfClubsFav <
                                                                          5) &&
                                                                      (FFAppState()
                                                                              .NumberOfClubsFav >
                                                                          1)) ||
                                                                  ((FFAppState()
                                                                              .NumberOfClubsFav <
                                                                          25) &&
                                                                      (FFAppState()
                                                                              .NumberOfClubsFav >
                                                                          21)) ||
                                                                  ((FFAppState()
                                                                              .NumberOfClubsFav <
                                                                          35) &&
                                                                      (FFAppState()
                                                                              .NumberOfClubsFav >
                                                                          31))) {
                                                                return ' клуба';
                                                              } else {
                                                                return ' клубов';
                                                              }
                                                            }(),
                                                            style: TextStyle(),
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
                                                                .clubsearchactive ==
                                                            false)
                                                          StreamBuilder<
                                                              List<
                                                                  ClubsRecord>>(
                                                            stream:
                                                                queryClubsRecord(
                                                              queryBuilder: (clubsRecord) =>
                                                                  clubsRecord
                                                                      .where(
                                                                        'club_liked_by',
                                                                        arrayContains:
                                                                            currentUserReference,
                                                                      )
                                                                      .orderBy(
                                                                          'created',
                                                                          descending:
                                                                              true),
                                                            )..listen((snapshot) {
                                                                    List<ClubsRecord>
                                                                        listViewClubsRecordList =
                                                                        snapshot;
                                                                    if (_model.listViewPreviousSnapshot2 !=
                                                                            null &&
                                                                        !const ListEquality(ClubsRecordDocumentEquality()).equals(
                                                                            listViewClubsRecordList,
                                                                            _model.listViewPreviousSnapshot2)) {
                                                                      () async {
                                                                        FFAppState().NumberOfClubsFav = listViewClubsRecordList
                                                                            .where((e) =>
                                                                                e.clubLikedBy.contains(currentUserReference))
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
                                                                    width: 30.0,
                                                                    height:
                                                                        30.0,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      valueColor:
                                                                          AlwaysStoppedAnimation<
                                                                              Color>(
                                                                        FlutterFlowTheme.of(context)
                                                                            .mainColor,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<ClubsRecord>
                                                                  listViewClubsRecordList =
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
                                                                    listViewClubsRecordList
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        listViewIndex) {
                                                                  final listViewClubsRecord =
                                                                      listViewClubsRecordList[
                                                                          listViewIndex];
                                                                  return Visibility(
                                                                    visible:
                                                                        listViewClubsRecord.freePositions >
                                                                            0,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          wrapWithModel(
                                                                        model: _model
                                                                            .oneclubModels3
                                                                            .getModel(
                                                                          listViewIndex
                                                                              .toString(),
                                                                          listViewIndex,
                                                                        ),
                                                                        updateCallback:
                                                                            () =>
                                                                                safeSetState(() {}),
                                                                        child:
                                                                            OneclubWidget(
                                                                          key:
                                                                              Key(
                                                                            'Keyiuo_${listViewIndex.toString()}',
                                                                          ),
                                                                          clubs:
                                                                              listViewClubsRecord,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        if (FFAppState()
                                                                .clubsearchactive ==
                                                            true)
                                                          Builder(
                                                            builder: (context) {
                                                              final searchresults = _model
                                                                  .simpleSearchResults
                                                                  .where((e) => e
                                                                      .clubLikedBy
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
                                                                  return Visibility(
                                                                    visible:
                                                                        searchresultsItem.freePositions >
                                                                            0,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          wrapWithModel(
                                                                        model: _model
                                                                            .oneclubModels4
                                                                            .getModel(
                                                                          searchresultsIndex
                                                                              .toString(),
                                                                          searchresultsIndex,
                                                                        ),
                                                                        updateCallback:
                                                                            () =>
                                                                                safeSetState(() {}),
                                                                        child:
                                                                            OneclubWidget(
                                                                          key:
                                                                              Key(
                                                                            'Keyi8k_${searchresultsIndex.toString()}',
                                                                          ),
                                                                          clubs:
                                                                              searchresultsItem,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        if (FFAppState()
                                                                .NumberOfClubsFav <
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
                                                                      'Добавляйте клубы в избранное, чтобы \nбыстро находить их позже!',
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
                                                  .fromSTEB(
                                                      0.0, 12.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(18.0, 0.0,
                                                                0.0, 10.0),
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
                                                                    .NumberOfClubsCreated
                                                                    .toString(),
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text: () {
                                                                  if ((FFAppState()
                                                                              .NumberOfClubsCreated ==
                                                                          1) ||
                                                                      (FFAppState()
                                                                              .NumberOfClubsCreated ==
                                                                          21) ||
                                                                      (FFAppState()
                                                                              .NumberOfClubsCreated ==
                                                                          31)) {
                                                                    return ' клуб';
                                                                  } else if (((FFAppState().NumberOfClubsCreated < 5) && (FFAppState().NumberOfClubsCreated > 1)) ||
                                                                      ((FFAppState().NumberOfClubsCreated <
                                                                              25) &&
                                                                          (FFAppState().NumberOfClubsCreated >
                                                                              21)) ||
                                                                      ((FFAppState().NumberOfClubsCreated <
                                                                              35) &&
                                                                          (FFAppState().NumberOfClubsCreated >
                                                                              31))) {
                                                                    return ' клуба';
                                                                  } else {
                                                                    return ' клубов';
                                                                  }
                                                                }(),
                                                                style:
                                                                    TextStyle(),
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
                                                  Expanded(
                                                    child: Stack(
                                                      children: [
                                                        Stack(
                                                          children: [
                                                            if (FFAppState()
                                                                    .clubsearchactive ==
                                                                false)
                                                              StreamBuilder<
                                                                  List<
                                                                      ClubsRecord>>(
                                                                stream:
                                                                    queryClubsRecord(
                                                                  queryBuilder: (clubsRecord) =>
                                                                      clubsRecord
                                                                          .where(
                                                                            'creator',
                                                                            isEqualTo:
                                                                                currentUserReference,
                                                                          )
                                                                          .orderBy(
                                                                              'created',
                                                                              descending: true),
                                                                ),
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
                                                                            FlutterFlowTheme.of(context).mainColor,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<ClubsRecord>
                                                                      listViewClubsRecordList =
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
                                                                        listViewClubsRecordList
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            listViewIndex) {
                                                                      final listViewClubsRecord =
                                                                          listViewClubsRecordList[
                                                                              listViewIndex];
                                                                      return Visibility(
                                                                        visible:
                                                                            listViewClubsRecord.freePositions >
                                                                                0,
                                                                        child:
                                                                            Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              wrapWithModel(
                                                                            model:
                                                                                _model.oneclubModels5.getModel(
                                                                              listViewIndex.toString(),
                                                                              listViewIndex,
                                                                            ),
                                                                            updateCallback: () =>
                                                                                safeSetState(() {}),
                                                                            child:
                                                                                OneclubWidget(
                                                                              key: Key(
                                                                                'Keytq1_${listViewIndex.toString()}',
                                                                              ),
                                                                              clubs: listViewClubsRecord,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                },
                                                              ),
                                                            if (FFAppState()
                                                                    .clubsearchactive ==
                                                                true)
                                                              Builder(
                                                                builder:
                                                                    (context) {
                                                                  final searchresults = _model
                                                                      .simpleSearchResults
                                                                      .where((e) =>
                                                                          currentUserReference ==
                                                                          e.creator)
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
                                                                      return Visibility(
                                                                        visible:
                                                                            searchresultsItem.freePositions >
                                                                                0,
                                                                        child:
                                                                            Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              wrapWithModel(
                                                                            model:
                                                                                _model.oneclubModels6.getModel(
                                                                              searchresultsIndex.toString(),
                                                                              searchresultsIndex,
                                                                            ),
                                                                            updateCallback: () =>
                                                                                safeSetState(() {}),
                                                                            child:
                                                                                OneclubWidget(
                                                                              key: Key(
                                                                                'Keyz4y_${searchresultsIndex.toString()}',
                                                                              ),
                                                                              clubs: searchresultsItem,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                },
                                                              ),
                                                            if (FFAppState()
                                                                    .NumberOfClubsCreated <
                                                                1)
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          120.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/document.png',
                                                                            width:
                                                                                60.0,
                                                                            height:
                                                                                80.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            24.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Ничего не найдено',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.montserrat(
                                                                                  fontWeight: FontWeight.w600,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                color: Color(0xFF636363),
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            6.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Легко создавайте и управляйте\nсвоими клубами!',
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.montserrat(
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                color: Color(0xFF8F8F8F),
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
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
                                                ].addToEnd(
                                                    SizedBox(height: 10.0)),
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
                                                          0.0, 0.0, 0.0, 10.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      context.pushNamed(
                                                        CreateClubPageWidget
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
