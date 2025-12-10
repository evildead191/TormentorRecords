import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login1_widget.dart' show Login1Widget;
import 'package:flutter/material.dart';

class Login1Model extends FlutterFlowModel<Login1Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtcorreo widget.
  FocusNode? txtcorreoFocusNode;
  TextEditingController? txtcorreoTextController;
  String? Function(BuildContext, String?)? txtcorreoTextControllerValidator;
  // State field(s) for txtcontra widget.
  FocusNode? txtcontraFocusNode;
  TextEditingController? txtcontraTextController;
  late bool txtcontraVisibility;
  String? Function(BuildContext, String?)? txtcontraTextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtcontraVisibility = false;
  }

  @override
  void dispose() {
    txtcorreoFocusNode?.dispose();
    txtcorreoTextController?.dispose();

    txtcontraFocusNode?.dispose();
    txtcontraTextController?.dispose();
  }
}
