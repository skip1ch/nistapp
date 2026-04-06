import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _isjoined = prefs.getBool('ff_isjoined') ?? _isjoined;
    });
    _safeInit(() {
      _numberofeventsfav =
          prefs.getInt('ff_numberofeventsfav') ?? _numberofeventsfav;
    });
    _safeInit(() {
      _numberofeventsall =
          prefs.getInt('ff_numberofeventsall') ?? _numberofeventsall;
    });
    _safeInit(() {
      _eventisfav = prefs.getBool('ff_eventisfav') ?? _eventisfav;
    });
    _safeInit(() {
      _numberofteachersall =
          prefs.getInt('ff_numberofteachersall') ?? _numberofteachersall;
    });
    _safeInit(() {
      _numberofteachersfav =
          prefs.getInt('ff_numberofteachersfav') ?? _numberofteachersfav;
    });
    _safeInit(() {
      _faketeacherlist =
          prefs.getStringList('ff_faketeacherlist') ?? _faketeacherlist;
    });
    _safeInit(() {
      _testnumber = prefs.getInt('ff_testnumber') ?? _testnumber;
    });
    _safeInit(() {
      _numberofteachersCreated = prefs.getInt('ff_numberofteachersCreated') ??
          _numberofteachersCreated;
    });
    _safeInit(() {
      _numberofeventsMy =
          prefs.getInt('ff_numberofeventsMy') ?? _numberofeventsMy;
    });
    _safeInit(() {
      _NumberOfClubsAll =
          prefs.getInt('ff_NumberOfClubsAll') ?? _NumberOfClubsAll;
    });
    _safeInit(() {
      _NumberOfClubsFav =
          prefs.getInt('ff_NumberOfClubsFav') ?? _NumberOfClubsFav;
    });
    _safeInit(() {
      _NumberOfClubsCreated =
          prefs.getInt('ff_NumberOfClubsCreated') ?? _NumberOfClubsCreated;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _isHome = false;
  bool get isHome => _isHome;
  set isHome(bool value) {
    _isHome = value;
  }

  bool _isClubs = false;
  bool get isClubs => _isClubs;
  set isClubs(bool value) {
    _isClubs = value;
  }

  bool _isEvents = false;
  bool get isEvents => _isEvents;
  set isEvents(bool value) {
    _isEvents = value;
  }

  String _clubname = '';
  String get clubname => _clubname;
  set clubname(String value) {
    _clubname = value;
  }

  String _clubimage =
      'https://content.nebo.by/photos/stroymaterialy/big/webp/RAL-7001-Serebristo-serii.webp';
  String get clubimage => _clubimage;
  set clubimage(String value) {
    _clubimage = value;
  }

  int _clubpositions = 0;
  int get clubpositions => _clubpositions;
  set clubpositions(int value) {
    _clubpositions = value;
  }

  String _clubinfo = '';
  String get clubinfo => _clubinfo;
  set clubinfo(String value) {
    _clubinfo = value;
  }

  String _clubcreatorname = '';
  String get clubcreatorname => _clubcreatorname;
  set clubcreatorname(String value) {
    _clubcreatorname = value;
  }

  int _clubcreatorgrade = 0;
  int get clubcreatorgrade => _clubcreatorgrade;
  set clubcreatorgrade(int value) {
    _clubcreatorgrade = value;
  }

  String _clubcreatorliter = '';
  String get clubcreatorliter => _clubcreatorliter;
  set clubcreatorliter(String value) {
    _clubcreatorliter = value;
  }

  bool _isjoined = false;
  bool get isjoined => _isjoined;
  set isjoined(bool value) {
    _isjoined = value;
    prefs.setBool('ff_isjoined', value);
  }

  String _eventname = ' ';
  String get eventname => _eventname;
  set eventname(String value) {
    _eventname = value;
  }

  String _eventimage =
      'https://content.nebo.by/photos/stroymaterialy/big/webp/RAL-7001-Serebristo-serii.webp';
  String get eventimage => _eventimage;
  set eventimage(String value) {
    _eventimage = value;
  }

  String _eventlocation = ' ';
  String get eventlocation => _eventlocation;
  set eventlocation(String value) {
    _eventlocation = value;
  }

  String _eventinfo = ' ';
  String get eventinfo => _eventinfo;
  set eventinfo(String value) {
    _eventinfo = value;
  }

  String _eventcreatorname = '';
  String get eventcreatorname => _eventcreatorname;
  set eventcreatorname(String value) {
    _eventcreatorname = value;
  }

  int _eventcreatorgrade = 0;
  int get eventcreatorgrade => _eventcreatorgrade;
  set eventcreatorgrade(int value) {
    _eventcreatorgrade = value;
  }

  String _eventcreatorliter = '';
  String get eventcreatorliter => _eventcreatorliter;
  set eventcreatorliter(String value) {
    _eventcreatorliter = value;
  }

  DateTime? _eventdate = DateTime.fromMillisecondsSinceEpoch(978332400000);
  DateTime? get eventdate => _eventdate;
  set eventdate(DateTime? value) {
    _eventdate = value;
  }

  DateTime? _eventstarttime =
      DateTime.fromMillisecondsSinceEpoch(1717225200000);
  DateTime? get eventstarttime => _eventstarttime;
  set eventstarttime(DateTime? value) {
    _eventstarttime = value;
  }

  DateTime? _eventendtime = DateTime.fromMillisecondsSinceEpoch(1717225200000);
  DateTime? get eventendtime => _eventendtime;
  set eventendtime(DateTime? value) {
    _eventendtime = value;
  }

  bool _searchActive = false;
  bool get searchActive => _searchActive;
  set searchActive(bool value) {
    _searchActive = value;
  }

  String _teachername = '';
  String get teachername => _teachername;
  set teachername(String value) {
    _teachername = value;
  }

  String _teacherimage = '';
  String get teacherimage => _teacherimage;
  set teacherimage(String value) {
    _teacherimage = value;
  }

  String _teacherinfo = '';
  String get teacherinfo => _teacherinfo;
  set teacherinfo(String value) {
    _teacherinfo = value;
  }

  String _teachersubject = '';
  String get teachersubject => _teachersubject;
  set teachersubject(String value) {
    _teachersubject = value;
  }

  String _typeofactivityteacher = '';
  String get typeofactivityteacher => _typeofactivityteacher;
  set typeofactivityteacher(String value) {
    _typeofactivityteacher = value;
  }

  String _teachercabinet = '';
  String get teachercabinet => _teachercabinet;
  set teachercabinet(String value) {
    _teachercabinet = value;
  }

  bool _phonecorrect = false;
  bool get phonecorrect => _phonecorrect;
  set phonecorrect(bool value) {
    _phonecorrect = value;
  }

  bool _smscorrect = false;
  bool get smscorrect => _smscorrect;
  set smscorrect(bool value) {
    _smscorrect = value;
  }

  bool _adminpasswordcorrect = false;
  bool get adminpasswordcorrect => _adminpasswordcorrect;
  set adminpasswordcorrect(bool value) {
    _adminpasswordcorrect = value;
  }

  List<bool> _eventliked = [];
  List<bool> get eventliked => _eventliked;
  set eventliked(List<bool> value) {
    _eventliked = value;
  }

  void addToEventliked(bool value) {
    eventliked.add(value);
  }

  void removeFromEventliked(bool value) {
    eventliked.remove(value);
  }

  void removeAtIndexFromEventliked(int index) {
    eventliked.removeAt(index);
  }

  void updateEventlikedAtIndex(
    int index,
    bool Function(bool) updateFn,
  ) {
    eventliked[index] = updateFn(_eventliked[index]);
  }

  void insertAtIndexInEventliked(int index, bool value) {
    eventliked.insert(index, value);
  }

  int _numberofeventsfav = 0;
  int get numberofeventsfav => _numberofeventsfav;
  set numberofeventsfav(int value) {
    _numberofeventsfav = value;
    prefs.setInt('ff_numberofeventsfav', value);
  }

  int _numberofeventsall = 0;
  int get numberofeventsall => _numberofeventsall;
  set numberofeventsall(int value) {
    _numberofeventsall = value;
    prefs.setInt('ff_numberofeventsall', value);
  }

  bool _eventisfav = false;
  bool get eventisfav => _eventisfav;
  set eventisfav(bool value) {
    _eventisfav = value;
    prefs.setBool('ff_eventisfav', value);
  }

  String _clubcreatorimage = '';
  String get clubcreatorimage => _clubcreatorimage;
  set clubcreatorimage(String value) {
    _clubcreatorimage = value;
  }

  String _eventcreatorimage = '';
  String get eventcreatorimage => _eventcreatorimage;
  set eventcreatorimage(String value) {
    _eventcreatorimage = value;
  }

  List<String> _ClubSphere = [];
  List<String> get ClubSphere => _ClubSphere;
  set ClubSphere(List<String> value) {
    _ClubSphere = value;
  }

  void addToClubSphere(String value) {
    ClubSphere.add(value);
  }

  void removeFromClubSphere(String value) {
    ClubSphere.remove(value);
  }

  void removeAtIndexFromClubSphere(int index) {
    ClubSphere.removeAt(index);
  }

  void updateClubSphereAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    ClubSphere[index] = updateFn(_ClubSphere[index]);
  }

  void insertAtIndexInClubSphere(int index, String value) {
    ClubSphere.insert(index, value);
  }

  List<String> _ClubEntryGrade = [];
  List<String> get ClubEntryGrade => _ClubEntryGrade;
  set ClubEntryGrade(List<String> value) {
    _ClubEntryGrade = value;
  }

  void addToClubEntryGrade(String value) {
    ClubEntryGrade.add(value);
  }

  void removeFromClubEntryGrade(String value) {
    ClubEntryGrade.remove(value);
  }

  void removeAtIndexFromClubEntryGrade(int index) {
    ClubEntryGrade.removeAt(index);
  }

  void updateClubEntryGradeAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    ClubEntryGrade[index] = updateFn(_ClubEntryGrade[index]);
  }

  void insertAtIndexInClubEntryGrade(int index, String value) {
    ClubEntryGrade.insert(index, value);
  }

  List<String> _ClubFormat = [];
  List<String> get ClubFormat => _ClubFormat;
  set ClubFormat(List<String> value) {
    _ClubFormat = value;
  }

  void addToClubFormat(String value) {
    ClubFormat.add(value);
  }

  void removeFromClubFormat(String value) {
    ClubFormat.remove(value);
  }

  void removeAtIndexFromClubFormat(int index) {
    ClubFormat.removeAt(index);
  }

  void updateClubFormatAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    ClubFormat[index] = updateFn(_ClubFormat[index]);
  }

  void insertAtIndexInClubFormat(int index, String value) {
    ClubFormat.insert(index, value);
  }

  String _ClubObrazovanie = '';
  String get ClubObrazovanie => _ClubObrazovanie;
  set ClubObrazovanie(String value) {
    _ClubObrazovanie = value;
  }

  String _ClubVolonterstvo = '';
  String get ClubVolonterstvo => _ClubVolonterstvo;
  set ClubVolonterstvo(String value) {
    _ClubVolonterstvo = value;
  }

  String _ClubSport = '';
  String get ClubSport => _ClubSport;
  set ClubSport(String value) {
    _ClubSport = value;
  }

  String _ClubTvorchestvo = '';
  String get ClubTvorchestvo => _ClubTvorchestvo;
  set ClubTvorchestvo(String value) {
    _ClubTvorchestvo = value;
  }

  String _ClubVseTematiki = '';
  String get ClubVseTematiki => _ClubVseTematiki;
  set ClubVseTematiki(String value) {
    _ClubVseTematiki = value;
  }

  String _ClubSevenNine = '';
  String get ClubSevenNine => _ClubSevenNine;
  set ClubSevenNine(String value) {
    _ClubSevenNine = value;
  }

  String _ClubTenTwelve = '';
  String get ClubTenTwelve => _ClubTenTwelve;
  set ClubTenTwelve(String value) {
    _ClubTenTwelve = value;
  }

  String _ClubVseGrades = '';
  String get ClubVseGrades => _ClubVseGrades;
  set ClubVseGrades(String value) {
    _ClubVseGrades = value;
  }

  String _ClubOffline = '';
  String get ClubOffline => _ClubOffline;
  set ClubOffline(String value) {
    _ClubOffline = value;
  }

  String _ClubOnline = '';
  String get ClubOnline => _ClubOnline;
  set ClubOnline(String value) {
    _ClubOnline = value;
  }

  String _ClubVseFormati = '';
  String get ClubVseFormati => _ClubVseFormati;
  set ClubVseFormati(String value) {
    _ClubVseFormati = value;
  }

  bool _filterclubpressed = false;
  bool get filterclubpressed => _filterclubpressed;
  set filterclubpressed(bool value) {
    _filterclubpressed = value;
  }

  bool _obrazovisset = false;
  bool get obrazovisset => _obrazovisset;
  set obrazovisset(bool value) {
    _obrazovisset = value;
  }

  bool _volonterstvoisset = false;
  bool get volonterstvoisset => _volonterstvoisset;
  set volonterstvoisset(bool value) {
    _volonterstvoisset = value;
  }

  bool _sportisset = false;
  bool get sportisset => _sportisset;
  set sportisset(bool value) {
    _sportisset = value;
  }

  bool _tvorchestisset = false;
  bool get tvorchestisset => _tvorchestisset;
  set tvorchestisset(bool value) {
    _tvorchestisset = value;
  }

  bool _vsetematikiisset = false;
  bool get vsetematikiisset => _vsetematikiisset;
  set vsetematikiisset(bool value) {
    _vsetematikiisset = value;
  }

  bool _sevennineisset = false;
  bool get sevennineisset => _sevennineisset;
  set sevennineisset(bool value) {
    _sevennineisset = value;
  }

  bool _tentwelveisset = false;
  bool get tentwelveisset => _tentwelveisset;
  set tentwelveisset(bool value) {
    _tentwelveisset = value;
  }

  bool _vseclassiisset = false;
  bool get vseclassiisset => _vseclassiisset;
  set vseclassiisset(bool value) {
    _vseclassiisset = value;
  }

  bool _offlineisset = false;
  bool get offlineisset => _offlineisset;
  set offlineisset(bool value) {
    _offlineisset = value;
  }

  bool _onlineisset = false;
  bool get onlineisset => _onlineisset;
  set onlineisset(bool value) {
    _onlineisset = value;
  }

  bool _vseformatiisset = false;
  bool get vseformatiisset => _vseformatiisset;
  set vseformatiisset(bool value) {
    _vseformatiisset = value;
  }

  bool _clubsearchactive = false;
  bool get clubsearchactive => _clubsearchactive;
  set clubsearchactive(bool value) {
    _clubsearchactive = value;
  }

  bool _teachersearchactive = false;
  bool get teachersearchactive => _teachersearchactive;
  set teachersearchactive(bool value) {
    _teachersearchactive = value;
  }

  bool _olympisset = false;
  bool get olympisset => _olympisset;
  set olympisset(bool value) {
    _olympisset = value;
  }

  bool _projectisset = false;
  bool get projectisset => _projectisset;
  set projectisset(bool value) {
    _projectisset = value;
  }

  bool _vsedeyatelnostiisset = false;
  bool get vsedeyatelnostiisset => _vsedeyatelnostiisset;
  set vsedeyatelnostiisset(bool value) {
    _vsedeyatelnostiisset = value;
  }

  bool _mathisset = false;
  bool get mathisset => _mathisset;
  set mathisset(bool value) {
    _mathisset = value;
  }

  bool _informatikaisset = false;
  bool get informatikaisset => _informatikaisset;
  set informatikaisset(bool value) {
    _informatikaisset = value;
  }

  bool _programmingisset = false;
  bool get programmingisset => _programmingisset;
  set programmingisset(bool value) {
    _programmingisset = value;
  }

  bool _vsetochnienaukiisset = false;
  bool get vsetochnienaukiisset => _vsetochnienaukiisset;
  set vsetochnienaukiisset(bool value) {
    _vsetochnienaukiisset = value;
  }

  bool _himiaisset = false;
  bool get himiaisset => _himiaisset;
  set himiaisset(bool value) {
    _himiaisset = value;
  }

  bool _fizikaisset = false;
  bool get fizikaisset => _fizikaisset;
  set fizikaisset(bool value) {
    _fizikaisset = value;
  }

  bool _biologia = false;
  bool get biologia => _biologia;
  set biologia(bool value) {
    _biologia = value;
  }

  bool _geografiaisset = false;
  bool get geografiaisset => _geografiaisset;
  set geografiaisset(bool value) {
    _geografiaisset = value;
  }

  bool _vseestestvennienaukiisset = false;
  bool get vseestestvennienaukiisset => _vseestestvennienaukiisset;
  set vseestestvennienaukiisset(bool value) {
    _vseestestvennienaukiisset = value;
  }

  bool _kazhistoryisset = false;
  bool get kazhistoryisset => _kazhistoryisset;
  set kazhistoryisset(bool value) {
    _kazhistoryisset = value;
  }

  bool _economikaisset = false;
  bool get economikaisset => _economikaisset;
  set economikaisset(bool value) {
    _economikaisset = value;
  }

  bool _pravoisset = false;
  bool get pravoisset => _pravoisset;
  set pravoisset(bool value) {
    _pravoisset = value;
  }

  bool _vsesocialnaukiisset = false;
  bool get vsesocialnaukiisset => _vsesocialnaukiisset;
  set vsesocialnaukiisset(bool value) {
    _vsesocialnaukiisset = value;
  }

  bool _worldhistoryisset = false;
  bool get worldhistoryisset => _worldhistoryisset;
  set worldhistoryisset(bool value) {
    _worldhistoryisset = value;
  }

  bool _robototehnikaisset = false;
  bool get robototehnikaisset => _robototehnikaisset;
  set robototehnikaisset(bool value) {
    _robototehnikaisset = value;
  }

  bool _cherchenieisset = false;
  bool get cherchenieisset => _cherchenieisset;
  set cherchenieisset(bool value) {
    _cherchenieisset = value;
  }

  bool _vsetechnaukiisset = false;
  bool get vsetechnaukiisset => _vsetechnaukiisset;
  set vsetechnaukiisset(bool value) {
    _vsetechnaukiisset = value;
  }

  bool _kazahskiisset = false;
  bool get kazahskiisset => _kazahskiisset;
  set kazahskiisset(bool value) {
    _kazahskiisset = value;
  }

  bool _anglisset = false;
  bool get anglisset => _anglisset;
  set anglisset(bool value) {
    _anglisset = value;
  }

  bool _russkiisset = false;
  bool get russkiisset => _russkiisset;
  set russkiisset(bool value) {
    _russkiisset = value;
  }

  bool _kitaiskiisset = false;
  bool get kitaiskiisset => _kitaiskiisset;
  set kitaiskiisset(bool value) {
    _kitaiskiisset = value;
  }

  bool _koreiskiisset = false;
  bool get koreiskiisset => _koreiskiisset;
  set koreiskiisset(bool value) {
    _koreiskiisset = value;
  }

  bool _nemeckiisset = false;
  bool get nemeckiisset => _nemeckiisset;
  set nemeckiisset(bool value) {
    _nemeckiisset = value;
  }

  bool _vselingvistikiisset = false;
  bool get vselingvistikiisset => _vselingvistikiisset;
  set vselingvistikiisset(bool value) {
    _vselingvistikiisset = value;
  }

  List<String> _TeacherListOfSubjects = [];
  List<String> get TeacherListOfSubjects => _TeacherListOfSubjects;
  set TeacherListOfSubjects(List<String> value) {
    _TeacherListOfSubjects = value;
  }

  void addToTeacherListOfSubjects(String value) {
    TeacherListOfSubjects.add(value);
  }

  void removeFromTeacherListOfSubjects(String value) {
    TeacherListOfSubjects.remove(value);
  }

  void removeAtIndexFromTeacherListOfSubjects(int index) {
    TeacherListOfSubjects.removeAt(index);
  }

  void updateTeacherListOfSubjectsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    TeacherListOfSubjects[index] = updateFn(_TeacherListOfSubjects[index]);
  }

  void insertAtIndexInTeacherListOfSubjects(int index, String value) {
    TeacherListOfSubjects.insert(index, value);
  }

  bool _tochnaukiisset = false;
  bool get tochnaukiisset => _tochnaukiisset;
  set tochnaukiisset(bool value) {
    _tochnaukiisset = value;
  }

  bool _estestnaukiisset = false;
  bool get estestnaukiisset => _estestnaukiisset;
  set estestnaukiisset(bool value) {
    _estestnaukiisset = value;
  }

  bool _socgumnaukiisset = false;
  bool get socgumnaukiisset => _socgumnaukiisset;
  set socgumnaukiisset(bool value) {
    _socgumnaukiisset = value;
  }

  bool _technaukiisset = false;
  bool get technaukiisset => _technaukiisset;
  set technaukiisset(bool value) {
    _technaukiisset = value;
  }

  bool _lingvistiknaukiisset = false;
  bool get lingvistiknaukiisset => _lingvistiknaukiisset;
  set lingvistiknaukiisset(bool value) {
    _lingvistiknaukiisset = value;
  }

  int _numberofteachersall = 0;
  int get numberofteachersall => _numberofteachersall;
  set numberofteachersall(int value) {
    _numberofteachersall = value;
    prefs.setInt('ff_numberofteachersall', value);
  }

  int _numberofteachersfav = 0;
  int get numberofteachersfav => _numberofteachersfav;
  set numberofteachersfav(int value) {
    _numberofteachersfav = value;
    prefs.setInt('ff_numberofteachersfav', value);
  }

  bool _predprenimatelstvoisset = false;
  bool get predprenimatelstvoisset => _predprenimatelstvoisset;
  set predprenimatelstvoisset(bool value) {
    _predprenimatelstvoisset = value;
  }

  bool _tipdeyatelnostiisset = false;
  bool get tipdeyatelnostiisset => _tipdeyatelnostiisset;
  set tipdeyatelnostiisset(bool value) {
    _tipdeyatelnostiisset = value;
  }

  List<String> _TeacherListTipDeyatelnosti = [];
  List<String> get TeacherListTipDeyatelnosti => _TeacherListTipDeyatelnosti;
  set TeacherListTipDeyatelnosti(List<String> value) {
    _TeacherListTipDeyatelnosti = value;
  }

  void addToTeacherListTipDeyatelnosti(String value) {
    TeacherListTipDeyatelnosti.add(value);
  }

  void removeFromTeacherListTipDeyatelnosti(String value) {
    TeacherListTipDeyatelnosti.remove(value);
  }

  void removeAtIndexFromTeacherListTipDeyatelnosti(int index) {
    TeacherListTipDeyatelnosti.removeAt(index);
  }

  void updateTeacherListTipDeyatelnostiAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    TeacherListTipDeyatelnosti[index] =
        updateFn(_TeacherListTipDeyatelnosti[index]);
  }

  void insertAtIndexInTeacherListTipDeyatelnosti(int index, String value) {
    TeacherListTipDeyatelnosti.insert(index, value);
  }

  List<String> _faketeacherlist = ['Олимпиада', 'Проект', 'Олимпиада и проект'];
  List<String> get faketeacherlist => _faketeacherlist;
  set faketeacherlist(List<String> value) {
    _faketeacherlist = value;
    prefs.setStringList('ff_faketeacherlist', value);
  }

  void addToFaketeacherlist(String value) {
    faketeacherlist.add(value);
    prefs.setStringList('ff_faketeacherlist', _faketeacherlist);
  }

  void removeFromFaketeacherlist(String value) {
    faketeacherlist.remove(value);
    prefs.setStringList('ff_faketeacherlist', _faketeacherlist);
  }

  void removeAtIndexFromFaketeacherlist(int index) {
    faketeacherlist.removeAt(index);
    prefs.setStringList('ff_faketeacherlist', _faketeacherlist);
  }

  void updateFaketeacherlistAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    faketeacherlist[index] = updateFn(_faketeacherlist[index]);
    prefs.setStringList('ff_faketeacherlist', _faketeacherlist);
  }

  void insertAtIndexInFaketeacherlist(int index, String value) {
    faketeacherlist.insert(index, value);
    prefs.setStringList('ff_faketeacherlist', _faketeacherlist);
  }

  int _SliderValueTeacher = 0;
  int get SliderValueTeacher => _SliderValueTeacher;
  set SliderValueTeacher(int value) {
    _SliderValueTeacher = value;
  }

  bool _eventsearchactive = false;
  bool get eventsearchactive => _eventsearchactive;
  set eventsearchactive(bool value) {
    _eventsearchactive = value;
  }

  String _teachertextfieldwords = '';
  String get teachertextfieldwords => _teachertextfieldwords;
  set teachertextfieldwords(String value) {
    _teachertextfieldwords = value;
  }

  int _testnumber = 0;
  int get testnumber => _testnumber;
  set testnumber(int value) {
    _testnumber = value;
    prefs.setInt('ff_testnumber', value);
  }

  String _clubaudience = '';
  String get clubaudience => _clubaudience;
  set clubaudience(String value) {
    _clubaudience = value;
  }

  String _clubsphere = '';
  String get clubsphere => _clubsphere;
  set clubsphere(String value) {
    _clubsphere = value;
  }

  String _clubformat = '';
  String get clubformat => _clubformat;
  set clubformat(String value) {
    _clubformat = value;
  }

  String _teachercontacts = '';
  String get teachercontacts => _teachercontacts;
  set teachercontacts(String value) {
    _teachercontacts = value;
  }

  int _numberofteachersCreated = 0;
  int get numberofteachersCreated => _numberofteachersCreated;
  set numberofteachersCreated(int value) {
    _numberofteachersCreated = value;
    prefs.setInt('ff_numberofteachersCreated', value);
  }

  int _numberofeventsMy = 0;
  int get numberofeventsMy => _numberofeventsMy;
  set numberofeventsMy(int value) {
    _numberofeventsMy = value;
    prefs.setInt('ff_numberofeventsMy', value);
  }

  int _NumberOfClubsAll = 0;
  int get NumberOfClubsAll => _NumberOfClubsAll;
  set NumberOfClubsAll(int value) {
    _NumberOfClubsAll = value;
    prefs.setInt('ff_NumberOfClubsAll', value);
  }

  int _NumberOfClubsFav = 0;
  int get NumberOfClubsFav => _NumberOfClubsFav;
  set NumberOfClubsFav(int value) {
    _NumberOfClubsFav = value;
    prefs.setInt('ff_NumberOfClubsFav', value);
  }

  int _NumberOfClubsCreated = 0;
  int get NumberOfClubsCreated => _NumberOfClubsCreated;
  set NumberOfClubsCreated(int value) {
    _NumberOfClubsCreated = value;
    prefs.setInt('ff_NumberOfClubsCreated', value);
  }

  int _progressbar = 0;
  int get progressbar => _progressbar;
  set progressbar(int value) {
    _progressbar = value;
  }

  bool _tipeventisset = false;
  bool get tipeventisset => _tipeventisset;
  set tipeventisset(bool value) {
    _tipeventisset = value;
  }

  bool _eventObrazovatelnieisset = false;
  bool get eventObrazovatelnieisset => _eventObrazovatelnieisset;
  set eventObrazovatelnieisset(bool value) {
    _eventObrazovatelnieisset = value;
  }

  bool _eventTvorcheskieisset = false;
  bool get eventTvorcheskieisset => _eventTvorcheskieisset;
  set eventTvorcheskieisset(bool value) {
    _eventTvorcheskieisset = value;
  }

  bool _eventSportivnieisset = false;
  bool get eventSportivnieisset => _eventSportivnieisset;
  set eventSportivnieisset(bool value) {
    _eventSportivnieisset = value;
  }

  bool _eventSocEcoisset = false;
  bool get eventSocEcoisset => _eventSocEcoisset;
  set eventSocEcoisset(bool value) {
    _eventSocEcoisset = value;
  }

  List<String> _EventListOfTypes = [];
  List<String> get EventListOfTypes => _EventListOfTypes;
  set EventListOfTypes(List<String> value) {
    _EventListOfTypes = value;
  }

  void addToEventListOfTypes(String value) {
    EventListOfTypes.add(value);
  }

  void removeFromEventListOfTypes(String value) {
    EventListOfTypes.remove(value);
  }

  void removeAtIndexFromEventListOfTypes(int index) {
    EventListOfTypes.removeAt(index);
  }

  void updateEventListOfTypesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    EventListOfTypes[index] = updateFn(_EventListOfTypes[index]);
  }

  void insertAtIndexInEventListOfTypes(int index, String value) {
    EventListOfTypes.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
