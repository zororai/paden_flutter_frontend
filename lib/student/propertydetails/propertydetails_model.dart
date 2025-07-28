import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'propertydetails_widget.dart' show PropertydetailsWidget;
import 'package:flutter/material.dart';

class PropertydetailsModel extends FlutterFlowModel<PropertydetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // Stores action output result for [Backend Call - API (Propertydirections)] action in Container widget.
  ApiCallResponse? code;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
