import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_teacher_page_model.dart';
export 'create_teacher_page_model.dart';

class CreateTeacherPageWidget extends StatefulWidget {
  const CreateTeacherPageWidget({super.key});

  static String routeName = 'Create_teacher_page';
  static String routePath = '/createTeacherPage';

  @override
  State<CreateTeacherPageWidget> createState() =>
      _CreateTeacherPageWidgetState();
}

class _CreateTeacherPageWidgetState extends State<CreateTeacherPageWidget> {
  late CreateTeacherPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateTeacherPageModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();
    _model.textFieldFocusNode1!.addListener(
      () async {
        _model.namecorrect = true;
        safeSetState(() {});
      },
    );
    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
    _model.textFieldFocusNode2!.addListener(
      () async {
        _model.cabinetcorrect = true;
        safeSetState(() {});
      },
    );
    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();
    _model.textFieldFocusNode3!.addListener(
      () async {
        _model.contactcorrect = true;
        safeSetState(() {});
      },
    );
    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();
    _model.textFieldFocusNode4!.addListener(
      () async {
        _model.infocorrect = true;
        safeSetState(() {});
      },
    );
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 58.0, 20.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Добавление учителя',
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                font: GoogleFonts.montserrat(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .fontStyle,
                                ),
                                fontSize: 15.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .fontStyle,
                              ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.close,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 30.0,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 14.0),
                      child: Text(
                        'Заполните сведения об учителе',
                        style:
                            FlutterFlowTheme.of(context).headlineLarge.override(
                                  font: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .fontStyle,
                                  ),
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .fontStyle,
                                ),
                      ),
                    ),
                    Stack(
                      children: [
                        if (functions
                            .photoIsEmpty(_model.uploadedFileUrl_teacherAva))
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                final selectedMedia =
                                    await selectMediaWithSourceBottomSheet(
                                  context: context,
                                  imageQuality: 31,
                                  allowPhoto: true,
                                );
                                if (selectedMedia != null &&
                                    selectedMedia.every((m) =>
                                        validateFileFormat(
                                            m.storagePath, context))) {
                                  safeSetState(() =>
                                      _model.isDataUploading_teacherAva = true);
                                  var selectedUploadedFiles =
                                      <FFUploadedFile>[];

                                  var downloadUrls = <String>[];
                                  try {
                                    selectedUploadedFiles = selectedMedia
                                        .map((m) => FFUploadedFile(
                                              name:
                                                  m.storagePath.split('/').last,
                                              bytes: m.bytes,
                                              height: m.dimensions?.height,
                                              width: m.dimensions?.width,
                                              blurHash: m.blurHash,
                                              originalFilename:
                                                  m.originalFilename,
                                            ))
                                        .toList();

                                    downloadUrls = (await Future.wait(
                                      selectedMedia.map(
                                        (m) async => await uploadData(
                                            m.storagePath, m.bytes),
                                      ),
                                    ))
                                        .where((u) => u != null)
                                        .map((u) => u!)
                                        .toList();
                                  } finally {
                                    _model.isDataUploading_teacherAva = false;
                                  }
                                  if (selectedUploadedFiles.length ==
                                          selectedMedia.length &&
                                      downloadUrls.length ==
                                          selectedMedia.length) {
                                    safeSetState(() {
                                      _model.uploadedLocalFile_teacherAva =
                                          selectedUploadedFiles.first;
                                      _model.uploadedFileUrl_teacherAva =
                                          downloadUrls.first;
                                    });
                                  } else {
                                    safeSetState(() {});
                                    return;
                                  }
                                }
                              },
                              child: Container(
                                width: 80.0,
                                height: 80.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/free-icon-user-avatar-8188362.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        if (!functions
                            .photoIsEmpty(_model.uploadedFileUrl_teacherAva))
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: 80.0,
                              height: 80.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                _model.uploadedFileUrl_teacherAva,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 22.0, 8.0, 0.0),
                      child: TextFormField(
                        controller: _model.textController1,
                        focusNode: _model.textFieldFocusNode1,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.textController1',
                          Duration(milliseconds: 100),
                          () => safeSetState(() {}),
                        ),
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelMediumFamily,
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .labelMediumIsCustom,
                              ),
                          hintText: 'Введите ФИО (В указанном порядке)',
                          hintStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                font: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .fontStyle,
                              ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: valueOrDefault<Color>(
                                !_model.namecorrect
                                    ? Color(0xFFBD0000)
                                    : Color(0xFFC4B9B9),
                                Color(0xFFC4B9B9),
                              ),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFC4B9B9),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.readexPro(
                                fontWeight: FontWeight.normal,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                        maxLength: 50,
                        maxLengthEnforcement: MaxLengthEnforcement.enforced,
                        buildCounter: (context,
                                {required currentLength,
                                required isFocused,
                                maxLength}) =>
                            null,
                        validator: _model.textController1Validator
                            .asValidator(context),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 18.0, 8.0, 0.0),
                      child: TextFormField(
                        controller: _model.textController2,
                        focusNode: _model.textFieldFocusNode2,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.textController2',
                          Duration(milliseconds: 100),
                          () => safeSetState(() {}),
                        ),
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .labelMediumIsCustom,
                              ),
                          hintText: 'Введите кабинет (Пример ФМ-101)',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    font: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: valueOrDefault<Color>(
                                !_model.cabinetcorrect
                                    ? Color(0xFFBD0000)
                                    : Color(0xFFC4B9B9),
                                Color(0xFFC4B9B9),
                              ),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFC4B9B9),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.readexPro(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                        maxLength: 40,
                        buildCounter: (context,
                                {required currentLength,
                                required isFocused,
                                maxLength}) =>
                            null,
                        keyboardType: TextInputType.number,
                        validator: _model.textController2Validator
                            .asValidator(context),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 18.0, 8.0, 0.0),
                      child: TextFormField(
                        controller: _model.textController3,
                        focusNode: _model.textFieldFocusNode3,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.textController3',
                          Duration(milliseconds: 100),
                          () => safeSetState(() {}),
                        ),
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .labelMediumIsCustom,
                              ),
                          hintText: 'Контактные данные (номер, почта)',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    font: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: valueOrDefault<Color>(
                                !_model.contactcorrect
                                    ? Color(0xFFBD0000)
                                    : Color(0xFFC4B9B9),
                                Color(0xFFC4B9B9),
                              ),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFC4B9B9),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.readexPro(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                        maxLength: 50,
                        buildCounter: (context,
                                {required currentLength,
                                required isFocused,
                                maxLength}) =>
                            null,
                        keyboardType: TextInputType.number,
                        validator: _model.textController3Validator
                            .asValidator(context),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 18.0, 8.0, 0.0),
                      child: FlutterFlowDropDown<String>(
                        controller: _model.dropDown1ValueController1 ??=
                            FormFieldController<String>(null),
                        options: [
                          'Математика',
                          'Физика',
                          'Химия',
                          'Биология',
                          'Информатика',
                          'География',
                          'Анлийский язык',
                          'Казахский язык',
                          'Русский язык',
                          'История Казахстана',
                          'Всемирная история',
                          'Основы права'
                        ],
                        onChanged: (val) async {
                          safeSetState(() => _model.dropDown1Value1 = val);
                          _model.subjectcorrect = true;
                          safeSetState(() {});
                        },
                        height: 52.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  font: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF475454),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                        hintText: 'Выберите предмет',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Color(0xFF7A7A7A),
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2.0,
                        borderColor: valueOrDefault<Color>(
                          !_model.subjectcorrect
                              ? Color(0xFFBD0000)
                              : Color(0xFFC4B9B9),
                          Color(0xFFC4B9B9),
                        ),
                        borderWidth: 1.0,
                        borderRadius: 8.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isOverButton: true,
                        isSearchable: false,
                        isMultiSelect: false,
                        labelText: '',
                        labelTextStyle: TextStyle(
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 18.0, 8.0, 0.0),
                      child: FlutterFlowDropDown<String>(
                        multiSelectController:
                            _model.dropDown1ValueController2 ??=
                                FormListFieldController<String>(null),
                        options: ['Олимпиадная подготовка', 'Проектная работа'],
                        height: 52.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  font: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF475454),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                        hintText: 'Выберите деятельность',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Color(0xFF7A7A7A),
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2.0,
                        borderColor: valueOrDefault<Color>(
                          !_model.typeofactivitycorrect
                              ? Color(0xFFBD0000)
                              : Color(0xFFC4B9B9),
                          Color(0xFFC4B9B9),
                        ),
                        borderWidth: 1.0,
                        borderRadius: 8.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isOverButton: true,
                        isSearchable: false,
                        isMultiSelect: true,
                        onMultiSelectChanged: (val) async {
                          safeSetState(() => _model.dropDown1Value2 = val);
                          _model.typeofactivitycorrect = true;
                          safeSetState(() {});
                        },
                        labelText: '',
                        labelTextStyle: TextStyle(
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 18.0, 8.0, 0.0),
                      child: FlutterFlowDropDown<int>(
                        controller: _model.dropDown1ValueController3 ??=
                            FormFieldController<int>(null),
                        options: List<int>.from([0, 1, 2, 3, 4, 5, 6]),
                        optionLabels: [
                          'Без опыта',
                          '1 год',
                          '2 года',
                          '3 года',
                          '4 года',
                          '5 лет',
                          '6 лет и более'
                        ],
                        onChanged: (val) async {
                          safeSetState(() => _model.dropDown1Value3 = val);
                          _model.experiencecorrect = true;
                          safeSetState(() {});
                        },
                        height: 52.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  font: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF475454),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                        hintText: 'Укажите опыт работы',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Color(0xFF7A7A7A),
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2.0,
                        borderColor: valueOrDefault<Color>(
                          !_model.experiencecorrect
                              ? Color(0xFFBD0000)
                              : Color(0xFFC4B9B9),
                          Color(0xFFC4B9B9),
                        ),
                        borderWidth: 1.0,
                        borderRadius: 8.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isOverButton: true,
                        isSearchable: false,
                        isMultiSelect: false,
                        labelText: '',
                        labelTextStyle: TextStyle(
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 18.0, 8.0, 0.0),
                      child: TextFormField(
                        controller: _model.textController4,
                        focusNode: _model.textFieldFocusNode4,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.textController4',
                          Duration(milliseconds: 100),
                          () => safeSetState(() {}),
                        ),
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                font: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .fontStyle,
                              ),
                          hintText:
                              'Краткая информация\n(Достижения и другая важная информация)',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    font: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: valueOrDefault<Color>(
                                !_model.infocorrect
                                    ? Color(0xFFBD0000)
                                    : Color(0xFFC4B9B9),
                                Color(0xFFC4B9B9),
                              ),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFC4B9B9),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 24.0, 12.0, 0.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.readexPro(
                                fontWeight: FontWeight.normal,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                        maxLines: 8,
                        maxLength: 300,
                        validator: _model.textController4Validator
                            .asValidator(context),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (functions.photoIsEmpty(
                                    _model.uploadedFileUrl_teacherAva) ||
                                functions.stringIsEmpty(
                                    _model.textController1.text) ||
                                functions.stringIsEmpty(
                                    _model.textController2.text) ||
                                functions.stringIsEmpty(
                                    _model.textController3.text) ||
                                functions
                                    .stringIsEmpty(_model.dropDown1Value1!) ||
                                !(_model.dropDown1Value2 != null &&
                                    (_model.dropDown1Value2)!.isNotEmpty) ||
                                functions.stringIsEmpty(
                                    _model.dropDown1Value3!.toString()) ||
                                functions.stringIsEmpty(
                                    _model.textController4.text)) {
                              await Future.wait([
                                Future(() async {
                                  if (_model.textController1.text == null ||
                                      _model.textController1.text == '') {
                                    _model.namecorrect = false;
                                    safeSetState(() {});
                                  }
                                }),
                                Future(() async {
                                  if (_model.textController2.text == null ||
                                      _model.textController2.text == '') {
                                    _model.cabinetcorrect = false;
                                    safeSetState(() {});
                                  }
                                }),
                                Future(() async {
                                  if (_model.textController3.text == null ||
                                      _model.textController3.text == '') {
                                    _model.contactcorrect = false;
                                    safeSetState(() {});
                                  }
                                }),
                                Future(() async {
                                  if (_model.dropDown1Value1 == null ||
                                      _model.dropDown1Value1 == '') {
                                    _model.subjectcorrect = false;
                                    safeSetState(() {});
                                  }
                                }),
                                Future(() async {
                                  if (!(_model.dropDown1Value2 != null &&
                                      (_model.dropDown1Value2)!.isNotEmpty)) {
                                    _model.typeofactivitycorrect = false;
                                    safeSetState(() {});
                                  }
                                }),
                                Future(() async {
                                  if (_model.dropDown1Value3 == null) {
                                    _model.experiencecorrect = false;
                                    safeSetState(() {});
                                  }
                                }),
                                Future(() async {
                                  if (_model.textController4.text == null ||
                                      _model.textController4.text == '') {
                                    _model.infocorrect = false;
                                    safeSetState(() {});
                                  }
                                }),
                                Future(() async {
                                  if (!(!functions.photoIsEmpty(
                                          _model.uploadedFileUrl_teacherAva) ||
                                      functions.stringIsEmpty(
                                          _model.textController1.text) ||
                                      functions.stringIsEmpty(
                                          _model.textController2.text) ||
                                      functions.stringIsEmpty(
                                          _model.textController3.text) ||
                                      functions.stringIsEmpty(
                                          _model.dropDown1Value1!) ||
                                      !(_model.dropDown1Value2 != null &&
                                          (_model.dropDown1Value2)!
                                              .isNotEmpty) ||
                                      functions.stringIsEmpty(
                                          _model.dropDown1Value3!.toString()) ||
                                      functions.stringIsEmpty(
                                          _model.textController4.text))) {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title:
                                              Text('Установите изображение!'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }
                                }),
                              ]);
                              return;
                            } else {
                              FFAppState().teachername =
                                  _model.textController1.text;
                              FFAppState().teacherimage =
                                  _model.uploadedFileUrl_teacherAva;
                              FFAppState().teacherinfo =
                                  _model.textController4.text;
                              FFAppState().teachersubject =
                                  _model.dropDown1Value1!;
                              FFAppState().typeofactivityteacher = () {
                                if (_model.dropDown1Value2!
                                        .contains('Олимпиадная подготовка') &&
                                    _model.dropDown1Value2!
                                        .contains('Проектная работа')) {
                                  return 'Олимпиада и проект';
                                } else if (_model.dropDown1Value2!
                                        .contains('Олимпиадная подготовка') &&
                                    !_model.dropDown1Value2!
                                        .contains('Проектная работа')) {
                                  return 'Олимпиада';
                                } else {
                                  return 'Проект';
                                }
                              }();
                              FFAppState().teachercabinet =
                                  _model.textController2.text;
                              FFAppState().teachercontacts =
                                  _model.textController3.text;
                              FFAppState().update(() {});

                              await TeachersRecord.collection
                                  .doc()
                                  .set(createTeachersRecordData(
                                    name: _model.textController1.text,
                                    image: _model.uploadedFileUrl_teacherAva,
                                    subject: _model.dropDown1Value1,
                                    achievments: _model.textController4.text,
                                    typeofactivity: () {
                                      if (_model.dropDown1Value2!.contains(
                                              'Олимпиадная подготовка') &&
                                          _model.dropDown1Value2!
                                              .contains('Проектная работа')) {
                                        return 'Олимпиада и проект';
                                      } else if (_model.dropDown1Value2!
                                              .contains(
                                                  'Олимпиадная подготовка') &&
                                          !_model.dropDown1Value2!
                                              .contains('Проектная работа')) {
                                        return 'Олимпиада';
                                      } else {
                                        return 'Проект';
                                      }
                                    }(),
                                    cabinet: _model.textController2.text,
                                    creator: currentUserReference,
                                    contacts: _model.textController3.text,
                                    experienceYears: _model.dropDown1Value3,
                                  ));

                              await currentUserReference!.update({
                                ...mapToFirestore(
                                  {
                                    'usercreatedteachernumber':
                                        FieldValue.increment(1),
                                  },
                                ),
                              });
                            }

                            context.safePop();
                          },
                          text: 'Сохранить',
                          options: FFButtonOptions(
                            width: 230.0,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: valueOrDefault<Color>(
                              functions.photoIsEmpty(
                                          _model.uploadedFileUrl_teacherAva) ||
                                      functions.stringIsEmpty(
                                          _model.textController1.text) ||
                                      functions.stringIsEmpty(
                                          _model.textController4.text) ||
                                      functions.stringIsEmpty(
                                          _model.textController2.text)
                                  ? FlutterFlowTheme.of(context).passiveColor
                                  : FlutterFlowTheme.of(context).black,
                              FlutterFlowTheme.of(context).passiveColor,
                            ),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .titleSmallIsCustom,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ].addToEnd(SizedBox(height: 50.0)),
          ),
        ),
      ),
    );
  }
}
