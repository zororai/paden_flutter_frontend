import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'bottom_nav_bar2_model.dart';
export 'bottom_nav_bar2_model.dart';

class BottomNavBar2Widget extends StatefulWidget {
  const BottomNavBar2Widget({super.key});

  @override
  State<BottomNavBar2Widget> createState() => _BottomNavBar2WidgetState();
}

class _BottomNavBar2WidgetState extends State<BottomNavBar2Widget> {
  late BottomNavBar2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomNavBar2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: double.infinity,
        height: 70.0,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
              child: Container(
                height: 70.0,
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.5,
                        height: 62.0,
                        decoration: BoxDecoration(
                          color: Color(0xD8FFFFFF),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x3D363535),
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              3.0, 0.0, 3.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 2.0, 0.0, 2.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 40.0,
                                  buttonSize: 56.0,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  icon: Icon(
                                    Icons.home,
                                    color: Color(0xFF574977),
                                    size: 30.0,
                                  ),
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'BOTTOM_NAV_BAR2_COMP_IconButton_1_ON_TAP');
                                    logFirebaseEvent(
                                        'IconButton_1_navigate_to');

                                    context.pushNamed(HomePageWidget.routeName);
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 2.0, 0.0, 2.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 40.0,
                                  buttonSize: 56.0,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  icon: Icon(
                                    Icons.people_sharp,
                                    color: Color(0xFF574977),
                                    size: 30.0,
                                  ),
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'BOTTOM_NAV_BAR2_COMP_IconButton_2_ON_TAP');
                                    logFirebaseEvent(
                                        'IconButton_2_navigate_to');

                                    context
                                        .pushNamed(UserprofileWidget.routeName);
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 2.0, 0.0, 2.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 40.0,
                                  buttonSize: 56.0,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  icon: Icon(
                                    Icons.chat_sharp,
                                    color: Color(0xFF574977),
                                    size: 30.0,
                                  ),
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'BOTTOM_NAV_BAR2_COMP_IconButton_3_ON_TAP');
                                    logFirebaseEvent(
                                        'IconButton_3_navigate_to');

                                    context.pushNamed(SupportWidget.routeName);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
