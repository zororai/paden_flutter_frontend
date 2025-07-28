import '/components/bottom_nav_bar2_widget.dart';
import '/components/pricerange_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'prices_widget.dart' show PricesWidget;
import 'package:flutter/material.dart';

class PricesModel extends FlutterFlowModel<PricesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for pricerange component.
  late PricerangeModel pricerangeModel;
  // Model for BottomNavBar2 component.
  late BottomNavBar2Model bottomNavBar2Model;

  @override
  void initState(BuildContext context) {
    pricerangeModel = createModel(context, () => PricerangeModel());
    bottomNavBar2Model = createModel(context, () => BottomNavBar2Model());
  }

  @override
  void dispose() {
    pricerangeModel.dispose();
    bottomNavBar2Model.dispose();
  }
}
