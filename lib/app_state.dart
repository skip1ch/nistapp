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

  bool _isOlympiads = false;
  bool get isOlympiads => _isOlympiads;
  set isOlympiads(bool value) {
    _isOlympiads = value;
  }

  bool _isEvents = false;
  bool get isEvents => _isEvents;
  set isEvents(bool value) {
    _isEvents = value;
  }

  bool _isProjects = false;
  bool get isProjects => _isProjects;
  set isProjects(bool value) {
    _isProjects = value;
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

  String _teachersurname = '';
  String get teachersurname => _teachersurname;
  set teachersurname(String value) {
    _teachersurname = value;
  }

  String _teacherimage = '';
  String get teacherimage => _teacherimage;
  set teacherimage(String value) {
    _teacherimage = value;
  }

  String _teacherachievments = '';
  String get teacherachievments => _teacherachievments;
  set teacherachievments(String value) {
    _teacherachievments = value;
  }

  String _teachersubject = '';
  String get teachersubject => _teachersubject;
  set teachersubject(String value) {
    _teachersubject = value;
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
