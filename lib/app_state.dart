import 'package:flutter/material.dart';
import '/backend/api_requests/api_manager.dart';
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
      _time = prefs.containsKey('ff_time')
          ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_time')!)
          : _time;
    });
    _safeInit(() {
      _location = latLngFromString(prefs.getString('ff_location')) ?? _location;
    });
    _safeInit(() {
      _Token = prefs.getString('ff_Token') ?? _Token;
    });
    _safeInit(() {
      _Days = prefs.getString('ff_Days') ?? _Days;
    });
    _safeInit(() {
      _AttendanceStatus =
          prefs.getString('ff_AttendanceStatus') ?? _AttendanceStatus;
    });
    _safeInit(() {
      _Role = prefs.getString('ff_Role') ?? _Role;
    });
    _safeInit(() {
      _Username = prefs.getString('ff_Username') ?? _Username;
    });
    _safeInit(() {
      _profiledetails = prefs.getString('ff_profiledetails') ?? _profiledetails;
    });
    _safeInit(() {
      _gender = prefs.getString('ff_gender') ?? _gender;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  DateTime? _time;
  DateTime? get time => _time;
  set time(DateTime? value) {
    _time = value;
    value != null
        ? prefs.setInt('ff_time', value.millisecondsSinceEpoch)
        : prefs.remove('ff_time');
  }

  LatLng? _location;
  LatLng? get location => _location;
  set location(LatLng? value) {
    _location = value;
    value != null
        ? prefs.setString('ff_location', value.serialize())
        : prefs.remove('ff_location');
  }

  String _Token = '';
  String get Token => _Token;
  set Token(String value) {
    _Token = value;
    prefs.setString('ff_Token', value);
  }

  String _Days = '';
  String get Days => _Days;
  set Days(String value) {
    _Days = value;
    prefs.setString('ff_Days', value);
  }

  String _AttendanceStatus = '';
  String get AttendanceStatus => _AttendanceStatus;
  set AttendanceStatus(String value) {
    _AttendanceStatus = value;
    prefs.setString('ff_AttendanceStatus', value);
  }

  String _Role = '';
  String get Role => _Role;
  set Role(String value) {
    _Role = value;
    prefs.setString('ff_Role', value);
  }

  String _Username = '';
  String get Username => _Username;
  set Username(String value) {
    _Username = value;
    prefs.setString('ff_Username', value);
  }

  String _profiledetails = '';
  String get profiledetails => _profiledetails;
  set profiledetails(String value) {
    _profiledetails = value;
    prefs.setString('ff_profiledetails', value);
  }

  String _gender = '';
  String get gender => _gender;
  set gender(String value) {
    _gender = value;
    prefs.setString('ff_gender', value);
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
