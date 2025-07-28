import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'loading_model.dart';
export 'loading_model.dart';

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({super.key});

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {
  late LoadingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadingModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
        child: Container(
          width: 194.1,
          height: 173.2,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF9A577E), Color(0xFF574977)],
              stops: [0.0, 1.0],
              begin: AlignmentDirectional(-0.34, 1.0),
              end: AlignmentDirectional(0.34, -1.0),
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/icegif-1260.gif',
              width: 217.3,
              height: 210.1,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
