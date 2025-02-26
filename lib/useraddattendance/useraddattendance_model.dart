import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'useraddattendance_widget.dart' show UseraddattendanceWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UseraddattendanceModel extends FlutterFlowModel<UseraddattendanceWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for Descrption widget.
  FocusNode? descrptionFocusNode;
  TextEditingController? descrptionTextController;
  String? Function(BuildContext, String?)? descrptionTextControllerValidator;
  // Stores action output result for [Backend Call - API (applyAttendance)] action in Button widget.
  ApiCallResponse? apiResultxvr;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    descrptionFocusNode?.dispose();
    descrptionTextController?.dispose();
  }
}
