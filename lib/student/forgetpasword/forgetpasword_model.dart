import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'forgetpasword_widget.dart' show ForgetpaswordWidget;
import 'package:flutter/material.dart';

class ForgetpaswordModel extends FlutterFlowModel<ForgetpaswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // Stores action output result for [Backend Call - API (resetpasswordemail)] action in Container widget.
  ApiCallResponse? apiResultx6j;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
