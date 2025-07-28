import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'regpayment_widget.dart' show RegpaymentWidget;
import 'package:flutter/material.dart';

class RegpaymentModel extends FlutterFlowModel<RegpaymentWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - checkInternet] action in Container widget.
  bool? inter;
  // Stores action output result for [Backend Call - API (regpayment)] action in Container widget.
  ApiCallResponse? regmoney;
  // Stores action output result for [Custom Action - navigateBasedOnStatusCode] action in Container widget.
  int? regresults;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
