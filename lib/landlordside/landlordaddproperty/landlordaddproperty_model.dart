import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'landlordaddproperty_widget.dart' show LandlordaddpropertyWidget;
import 'package:flutter/material.dart';

class LandlordaddpropertyModel
    extends FlutterFlowModel<LandlordaddpropertyWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_landpic = false;
  FFUploadedFile uploadedLocalFile_landpic =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for tilte widget.
  String? tilteValue;
  FormFieldController<String>? tilteValueController;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter an age .';
    }

    return null;
  }

  // State field(s) for Phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  String? _phoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Landlord Phone Number is required';
    }

    return null;
  }

  // State field(s) for Location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;
  String? _locationTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Property Area location is required';
    }

    return null;
  }

  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  String? _descriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  String? _priceTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Property Price is required';
    }

    return null;
  }

  // State field(s) for protype widget.
  String? protypeValue;
  FormFieldController<String>? protypeValueController;
  // State field(s) for sellingpro widget.
  String? sellingproValue;
  FormFieldController<String>? sellingproValueController;
  // State field(s) for bathroom widget.
  String? bathroomValue;
  FormFieldController<String>? bathroomValueController;
  // State field(s) for stove widget.
  String? stoveValue;
  FormFieldController<String>? stoveValueController;
  // State field(s) for fridge widget.
  String? fridgeValue;
  FormFieldController<String>? fridgeValueController;
  // State field(s) for tank widget.
  String? tankValue;
  FormFieldController<String>? tankValueController;
  // State field(s) for so widget.
  String? soValue;
  FormFieldController<String>? soValueController;
  // State field(s) for availablerooms widget.
  String? availableroomsValue;
  FormFieldController<String>? availableroomsValueController;
  // State field(s) for roommate widget.
  String? roommateValue;
  FormFieldController<String>? roommateValueController;
  // State field(s) for wifi widget.
  String? wifiValue;
  FormFieldController<String>? wifiValueController;
  // State field(s) for giza widget.
  String? gizaValue;
  FormFieldController<String>? gizaValueController;
  // State field(s) for parking widget.
  String? parkingValue;
  FormFieldController<String>? parkingValueController;
  // State field(s) for gender widget.
  FormFieldController<List<String>>? genderValueController;
  String? get genderValue => genderValueController?.value?.firstOrNull;
  set genderValue(String? val) =>
      genderValueController?.value = val != null ? [val] : [];
  // State field(s) for university widget.
  String? universityValue;
  FormFieldController<String>? universityValueController;
  bool isDataUploading_roompic = false;
  FFUploadedFile uploadedLocalFile_roompic =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_kitchen = false;
  FFUploadedFile uploadedLocalFile_kitchen =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_toila = false;
  FFUploadedFile uploadedLocalFile_toila =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_outside = false;
  FFUploadedFile uploadedLocalFile_outside =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Validate Form] action in Button widget.
  bool? saveproperty;
  // Stores action output result for [Backend Call - API (Landlordaddproperty)] action in Button widget.
  ApiCallResponse? apiResultdfu;

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
    phoneTextControllerValidator = _phoneTextControllerValidator;
    locationTextControllerValidator = _locationTextControllerValidator;
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
    priceTextControllerValidator = _priceTextControllerValidator;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    locationFocusNode?.dispose();
    locationTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();
  }
}
