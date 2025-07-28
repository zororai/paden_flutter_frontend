import '/components/loading_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'errorpag_model.dart';
export 'errorpag_model.dart';

class ErrorpagWidget extends StatefulWidget {
  const ErrorpagWidget({super.key});

  static String routeName = 'errorpag';
  static String routePath = 'errorpag';

  @override
  State<ErrorpagWidget> createState() => _ErrorpagWidgetState();
}

class _ErrorpagWidgetState extends State<ErrorpagWidget> {
  late ErrorpagModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ErrorpagModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'errorpag'});
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: wrapWithModel(
                  model: _model.loadingModel,
                  updateCallback: () => safeSetState(() {}),
                  child: LoadingWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
