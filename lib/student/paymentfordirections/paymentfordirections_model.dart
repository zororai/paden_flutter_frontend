import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'paymentfordirections_widget.dart' show PaymentfordirectionsWidget;
import 'package:flutter/material.dart';

class PaymentfordirectionsModel
    extends FlutterFlowModel<PaymentfordirectionsWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ente Phone Number is required';
    }

    return null;
  }

  // Stores action output result for [Custom Action - checkInternet] action in Container widget.
  bool? inter;
  // Stores action output result for [Backend Call - API (directionpay)] action in Container widget.
  ApiCallResponse? apiResultdhh;

  @override
  void initState(BuildContext context) {
    textControllerValidator = _textControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
