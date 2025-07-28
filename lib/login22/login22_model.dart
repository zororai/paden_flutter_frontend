import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login22_widget.dart' show Login22Widget;
import 'package:flutter/material.dart';

class Login22Model extends FlutterFlowModel<Login22Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  String? _emailAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Email is required';
    }
    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    if (!RegExp('').hasMatch(val)) {
      return 'Complex password is required';
    }
    return null;
  }

  // Stores action output result for [Custom Action - checkInternet] action in Container widget.
  bool? internet;
  // Stores action output result for [Backend Call - API (login)] action in Container widget.
  ApiCallResponse? loginresponse;
  // Stores action output result for [Backend Call - API (Homestatus)] action in Container widget.
  ApiCallResponse? home;
  // Stores action output result for [Custom Action - navigateBasedOnStatusCode] action in Container widget.
  int? re;
  // Stores action output result for [Backend Call - API (list)] action in Container widget.
  ApiCallResponse? list;

  @override
  void initState(BuildContext context) {
    emailAddressTextControllerValidator = _emailAddressTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
  }

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }

  /// Action blocks.
  Future network(BuildContext context) async {}
}
