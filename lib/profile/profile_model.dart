import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getuserHFTA)] action in profile widget.
  ApiCallResponse? apiResult4hn;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;
  // State field(s) for FirstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;
  // State field(s) for MiddleName widget.
  FocusNode? middleNameFocusNode;
  TextEditingController? middleNameTextController;
  String? Function(BuildContext, String?)? middleNameTextControllerValidator;
  // State field(s) for LastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  // State field(s) for CurrentBelt widget.
  FocusNode? currentBeltFocusNode;
  TextEditingController? currentBeltTextController;
  String? Function(BuildContext, String?)? currentBeltTextControllerValidator;
  // State field(s) for EmailID widget.
  FocusNode? emailIDFocusNode;
  TextEditingController? emailIDTextController;
  String? Function(BuildContext, String?)? emailIDTextControllerValidator;
  // State field(s) for ContactNumber widget.
  FocusNode? contactNumberFocusNode;
  TextEditingController? contactNumberTextController;
  String? Function(BuildContext, String?)? contactNumberTextControllerValidator;
  // State field(s) for AlertnativeContactNumber widget.
  FocusNode? alertnativeContactNumberFocusNode;
  TextEditingController? alertnativeContactNumberTextController;
  String? Function(BuildContext, String?)?
      alertnativeContactNumberTextControllerValidator;
  // State field(s) for GuardianName widget.
  FocusNode? guardianNameFocusNode;
  TextEditingController? guardianNameTextController;
  String? Function(BuildContext, String?)? guardianNameTextControllerValidator;
  // State field(s) for Address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressTextController;
  String? Function(BuildContext, String?)? addressTextControllerValidator;
  // State field(s) for Gender widget.
  String? genderValue;
  FormFieldController<String>? genderValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    middleNameFocusNode?.dispose();
    middleNameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();

    currentBeltFocusNode?.dispose();
    currentBeltTextController?.dispose();

    emailIDFocusNode?.dispose();
    emailIDTextController?.dispose();

    contactNumberFocusNode?.dispose();
    contactNumberTextController?.dispose();

    alertnativeContactNumberFocusNode?.dispose();
    alertnativeContactNumberTextController?.dispose();

    guardianNameFocusNode?.dispose();
    guardianNameTextController?.dispose();

    addressFocusNode?.dispose();
    addressTextController?.dispose();
  }
}
