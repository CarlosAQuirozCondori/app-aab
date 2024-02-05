import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emaillogin widget.
  FocusNode? emailloginFocusNode;
  TextEditingController? emailloginController;
  String? Function(BuildContext, String?)? emailloginControllerValidator;
  // State field(s) for contrasenalogin widget.
  FocusNode? contrasenaloginFocusNode;
  TextEditingController? contrasenaloginController;
  late bool contrasenaloginVisibility;
  String? Function(BuildContext, String?)? contrasenaloginControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contrasenaloginVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    emailloginFocusNode?.dispose();
    emailloginController?.dispose();

    contrasenaloginFocusNode?.dispose();
    contrasenaloginController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
