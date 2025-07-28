import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'studentreg_widget.dart' show StudentregWidget;
import 'package:flutter/material.dart';

class StudentregModel extends FlutterFlowModel<StudentregWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode1;
  TextEditingController? yourNameTextController1;
  String? Function(BuildContext, String?)? yourNameTextController1Validator;
  String? _yourNameTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Your name is required';
    }

    return null;
  }

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode2;
  TextEditingController? yourNameTextController2;
  String? Function(BuildContext, String?)? yourNameTextController2Validator;
  String? _yourNameTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Your surname is required';
    }

    return null;
  }

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode3;
  TextEditingController? yourNameTextController3;
  String? Function(BuildContext, String?)? yourNameTextController3Validator;
  String? _yourNameTextController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Your Email is required';
    }

    return null;
  }

  // State field(s) for role widget.
  String? roleValue;
  FormFieldController<String>? roleValueController;
  // State field(s) for state widget.
  String? stateValue;
  FormFieldController<String>? stateValueController;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode4;
  TextEditingController? yourNameTextController4;
  late bool yourNameVisibility1;
  String? Function(BuildContext, String?)? yourNameTextController4Validator;
  String? _yourNameTextController4Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    if (val.length > 12) {
      return 'Maximum 12 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode5;
  TextEditingController? yourNameTextController5;
  late bool yourNameVisibility2;
  String? Function(BuildContext, String?)? yourNameTextController5Validator;
  String? _yourNameTextController5Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm password is required';
    }

    if (val.length > 12) {
      return 'Maximum 12 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in Container widget.
  bool? errormess;
  // Stores action output result for [Custom Action - checkInternet] action in Container widget.
  bool? result;
  // Stores action output result for [Backend Call - API (userreg)] action in Container widget.
  ApiCallResponse? apiResulthzm;

  @override
  void initState(BuildContext context) {
    yourNameTextController1Validator = _yourNameTextController1Validator;
    yourNameTextController2Validator = _yourNameTextController2Validator;
    yourNameTextController3Validator = _yourNameTextController3Validator;
    yourNameVisibility1 = false;
    yourNameTextController4Validator = _yourNameTextController4Validator;
    yourNameVisibility2 = false;
    yourNameTextController5Validator = _yourNameTextController5Validator;
  }

  @override
  void dispose() {
    yourNameFocusNode1?.dispose();
    yourNameTextController1?.dispose();

    yourNameFocusNode2?.dispose();
    yourNameTextController2?.dispose();

    yourNameFocusNode3?.dispose();
    yourNameTextController3?.dispose();

    yourNameFocusNode4?.dispose();
    yourNameTextController4?.dispose();

    yourNameFocusNode5?.dispose();
    yourNameTextController5?.dispose();
  }
}
