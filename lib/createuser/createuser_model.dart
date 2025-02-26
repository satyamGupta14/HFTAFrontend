import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'createuser_widget.dart' show CreateuserWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateuserModel extends FlutterFlowModel<CreateuserWidget> {
  ///  State fields for stateful widgets in this page.

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
  // State field(s) for Username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;
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
  FocusNode? guardianNameFocusNode1;
  TextEditingController? guardianNameTextController1;
  String? Function(BuildContext, String?)? guardianNameTextController1Validator;
  // State field(s) for Address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressTextController;
  String? Function(BuildContext, String?)? addressTextControllerValidator;
  // State field(s) for Gender widget.
  String? genderValue;
  FormFieldController<String>? genderValueController;
  DateTime? datePicked;
  // State field(s) for GuardianName widget.
  FocusNode? guardianNameFocusNode2;
  TextEditingController? guardianNameTextController2;
  String? Function(BuildContext, String?)? guardianNameTextController2Validator;
  // State field(s) for ConfirmPassword widget.
  FocusNode? confirmPasswordFocusNode;
  TextEditingController? confirmPasswordTextController;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextControllerValidator;
  // State field(s) for Role widget.
  String? roleValue;
  FormFieldController<String>? roleValueController;
  // Stores action output result for [Backend Call - API (Create User)] action in Submit widget.
  ApiCallResponse? apiResult6c8;

  @override
  void initState(BuildContext context) {
    confirmPasswordVisibility = false;
  }

  @override
  void dispose() {
    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    middleNameFocusNode?.dispose();
    middleNameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();

    usernameFocusNode?.dispose();
    usernameTextController?.dispose();

    currentBeltFocusNode?.dispose();
    currentBeltTextController?.dispose();

    emailIDFocusNode?.dispose();
    emailIDTextController?.dispose();

    contactNumberFocusNode?.dispose();
    contactNumberTextController?.dispose();

    alertnativeContactNumberFocusNode?.dispose();
    alertnativeContactNumberTextController?.dispose();

    guardianNameFocusNode1?.dispose();
    guardianNameTextController1?.dispose();

    addressFocusNode?.dispose();
    addressTextController?.dispose();

    guardianNameFocusNode2?.dispose();
    guardianNameTextController2?.dispose();

    confirmPasswordFocusNode?.dispose();
    confirmPasswordTextController?.dispose();
  }
}
