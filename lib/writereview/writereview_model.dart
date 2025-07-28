import '/flutter_flow/flutter_flow_util.dart';
import 'writereview_widget.dart' show WritereviewWidget;
import 'package:flutter/material.dart';

class WritereviewModel extends FlutterFlowModel<WritereviewWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
