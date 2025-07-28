import '/components/bottom_nav_bar2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - parseLatLngFromString] action in Container widget.
  LatLng? geo;
  // Stores action output result for [Custom Action - parseLatLngFromString] action in Column widget.
  LatLng? geoCopy;
  // Model for BottomNavBar2 component.
  late BottomNavBar2Model bottomNavBar2Model;

  @override
  void initState(BuildContext context) {
    bottomNavBar2Model = createModel(context, () => BottomNavBar2Model());
  }

  @override
  void dispose() {
    bottomNavBar2Model.dispose();
  }
}
