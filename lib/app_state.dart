import 'package:flutter/material.dart';
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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _proid = 0;
  int get proid => _proid;
  set proid(int value) {
    _proid = value;
  }

  int _popular = 0;
  int get popular => _popular;
  set popular(int value) {
    _popular = value;
  }

  bool _search = false;
  bool get search => _search;
  set search(bool value) {
    _search = value;
  }

  int _homecode = 200;
  int get homecode => _homecode;
  set homecode(int value) {
    _homecode = value;
  }

  int _profilecode = 403;
  int get profilecode => _profilecode;
  set profilecode(int value) {
    _profilecode = value;
  }

  int _reguser = 402;
  int get reguser => _reguser;
  set reguser(int value) {
    _reguser = value;
  }

  int _payment = 1;
  int get payment => _payment;
  set payment(int value) {
    _payment = value;
  }

  String _network = 'ecocash';
  String get network => _network;
  set network(String value) {
    _network = value;
  }

  int _picupload = 400;
  int get picupload => _picupload;
  set picupload(int value) {
    _picupload = value;
  }

  int _landlordlogin = 404;
  int get landlordlogin => _landlordlogin;
  set landlordlogin(int value) {
    _landlordlogin = value;
  }

  int _directioncode = 403;
  int get directioncode => _directioncode;
  set directioncode(int value) {
    _directioncode = value;
  }

  LatLng? _geo = LatLng(16.5782, 31.043);
  LatLng? get geo => _geo;
  set geo(LatLng? value) {
    _geo = value;
  }

  LatLng? _geolocation = LatLng(16.5782, 31.043);
  LatLng? get geolocation => _geolocation;
  set geolocation(LatLng? value) {
    _geolocation = value;
  }

  String _username = '0';
  String get username => _username;
  set username(String value) {
    _username = value;
  }

  String _useremail = '0';
  String get useremail => _useremail;
  set useremail(String value) {
    _useremail = value;
  }

  String _profileimage = '';
  String get profileimage => _profileimage;
  set profileimage(String value) {
    _profileimage = value;
  }

  String _userrole = '';
  String get userrole => _userrole;
  set userrole(String value) {
    _userrole = value;
    notifyListeners(); // So widgets listening to state get updated
  }

  bool _loading = false;
  bool get loading => _loading;
  set loading(bool value) {
    _loading = value;
  }

  List<String> _title = [];
  List<String> get title => _title;
  set title(List<String> value) {
    _title = value;
  }

  void addToTitle(String value) {
    title.add(value);
  }

  void removeFromTitle(String value) {
    title.remove(value);
  }

  void removeAtIndexFromTitle(int index) {
    title.removeAt(index);
  }

  void updateTitleAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    title[index] = updateFn(_title[index]);
  }

  void insertAtIndexInTitle(int index, String value) {
    title.insert(index, value);
  }

  String _type = '0';
  String get type => _type;
  set type(String value) {
    _type = value;
  }

  String _university = '0';
  String get university => _university;
  set university(String value) {
    _university = value;
  }

  bool _errormess = false;
  bool get errormess => _errormess;
  set errormess(bool value) {
    _errormess = value;
  }

  bool _propertytype = false;
  bool get propertytype => _propertytype;
  set propertytype(bool value) {
    _propertytype = value;
  }
}
