import '/components/loading_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'errorpag_widget.dart' show ErrorpagWidget;
import 'package:flutter/material.dart';

class ErrorpagModel extends FlutterFlowModel<ErrorpagWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for loading component.
  late LoadingModel loadingModel;

  @override
  void initState(BuildContext context) {
    loadingModel = createModel(context, () => LoadingModel());
  }

  @override
  void dispose() {
    loadingModel.dispose();
  }
}
