import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TxtCorreo widget.
  TextEditingController? txtCorreoController;
  String? Function(BuildContext, String?)? txtCorreoControllerValidator;
  // State field(s) for TxtContrasea widget.
  TextEditingController? txtContraseaController;
  late bool txtContraseaVisibility;
  String? Function(BuildContext, String?)? txtContraseaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtContraseaVisibility = false;
  }

  void dispose() {
    txtCorreoController?.dispose();
    txtContraseaController?.dispose();
  }

  /// Additional helper methods are added here.

}
