import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'form_reports_widget.dart' show FormReportsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class FormReportsModel extends FlutterFlowModel<FormReportsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nombreSoli1 widget.
  FocusNode? nombreSoli1FocusNode;
  TextEditingController? nombreSoli1Controller;
  String? Function(BuildContext, String?)? nombreSoli1ControllerValidator;
  // State field(s) for Area2 widget.
  String? area2Value;
  FormFieldController<String>? area2ValueController;
  // State field(s) for cargo3 widget.
  String? cargo3Value;
  FormFieldController<String>? cargo3ValueController;
  // State field(s) for Calendar4 widget.
  DateTimeRange? calendar4SelectedDay;
  // State field(s) for ubicacion5 widget.
  String? ubicacion5Value;
  FormFieldController<String>? ubicacion5ValueController;
  // State field(s) for asistencia6 widget.
  String? asistencia6Value;
  FormFieldController<String>? asistencia6ValueController;
  // State field(s) for revision7 widget.
  String? revision7Value;
  FormFieldController<String>? revision7ValueController;
  // State field(s) for estado8 widget.
  String? estado8Value;
  FormFieldController<String>? estado8ValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  FormulariosRecord? apiResult93w;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    calendar4SelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  void dispose() {
    unfocusNode.dispose();
    nombreSoli1FocusNode?.dispose();
    nombreSoli1Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
