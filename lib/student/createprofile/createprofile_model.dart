import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'createprofile_widget.dart' show CreateprofileWidget;
import 'package:flutter/material.dart';

class CreateprofileModel extends FlutterFlowModel<CreateprofileWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_uploadData9v5 = false;
  FFUploadedFile uploadedLocalFile_uploadData9v5 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  String? _yourNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Your Number is required';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in Container widget.
  bool? profilerror;
  // Stores action output result for [Custom Action - checkInternet] action in Container widget.
  bool? internet;
  // Stores action output result for [Backend Call - API (uploadpic)] action in Container widget.
  ApiCallResponse? userprofile;
  // Stores action output result for [Custom Action - navigateBasedOnStatusCode] action in Container widget.
  int? outputrusercreatepro;

  @override
  void initState(BuildContext context) {
    yourNameTextControllerValidator = _yourNameTextControllerValidator;
  }

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();
  }
}
