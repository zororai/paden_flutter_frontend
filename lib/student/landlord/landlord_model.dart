import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'landlord_widget.dart' show LandlordWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class LandlordModel extends FlutterFlowModel<LandlordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
