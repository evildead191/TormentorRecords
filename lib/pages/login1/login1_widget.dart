import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login1_model.dart';
export 'login1_model.dart';

/// Create a Login Page with this structure and dark metal style:
///
/// Background #0D0D0D.
///
/// Title font Blacklettersh, text font BLACEB__. Main accent #6E0000.
///
/// Main Column centered:
/// 1. Text "Tormentor Records", size 32, white, Blacklettersh.
/// 2. Spacer 30.
/// 3. TextField "Correo electrónico", bg #1A1A1A, border #6E0000 radius 10,
/// white text.
/// 4. Spacer 15.
/// 5. TextField "Contraseña", password mode, same style.
/// 6. Spacer 15.
/// 7. Button "Iniciar Sesión", width 300, height 50, bg #6E0000, text white,
/// radius 12.
/// 8. Spacer 10.
/// 9. TextButton "¿No tienes cuenta? Regístrate aquí".
class Login1Widget extends StatefulWidget {
  const Login1Widget({super.key});

  static String routeName = 'login1';
  static String routePath = '/login1';

  @override
  State<Login1Widget> createState() => _Login1WidgetState();
}

class _Login1WidgetState extends State<Login1Widget> {
  late Login1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Login1Model());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF0D0D0D),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/Tormentor_Logo.png',
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 196.36,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 30.0,
                ),
                TextFormField(
                  controller: _model.textController1,
                  focusNode: _model.textFieldFocusNode1,
                  autofocus: false,
                  textInputAction: TextInputAction.next,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Correo electrónico',
                    hintStyle: GoogleFonts.roboto(
                      color: Color(0xFFCCCCCC),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF6E0000),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF6E0000),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF6E0000),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF6E0000),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: Color(0xFF1A1A1A),
                  ),
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.white,
                  validator:
                      _model.textController1Validator.asValidator(context),
                ),
                Container(
                  height: 15.0,
                ),
                TextFormField(
                  controller: _model.textController2,
                  focusNode: _model.textFieldFocusNode2,
                  autofocus: false,
                  textInputAction: TextInputAction.done,
                  obscureText: !_model.passwordVisibility,
                  decoration: InputDecoration(
                    hintText: 'Contraseña',
                    hintStyle: GoogleFonts.roboto(
                      color: Color(0xFFCCCCCC),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF6E0000),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF6E0000),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF6E0000),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF6E0000),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    fillColor: Color(0xFF1A1A1A),
                    suffixIcon: InkWell(
                      onTap: () => safeSetState(
                        () => _model.passwordVisibility =
                            !_model.passwordVisibility,
                      ),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        _model.passwordVisibility
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Color(0xFFCCCCCC),
                        size: 20.0,
                      ),
                    ),
                  ),
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                  ),
                  cursorColor: Colors.white,
                  validator:
                      _model.textController2Validator.asValidator(context),
                ),
                Container(
                  height: 15.0,
                ),
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Iniciar Sesión',
                  options: FFButtonOptions(
                    width: 300.0,
                    height: 50.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFF6E0000),
                    textStyle: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                Container(
                  height: 10.0,
                ),
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: '¿No tienes cuenta? Regístrate aquí',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Colors.transparent,
                    textStyle: GoogleFonts.roboto(
                      color: Color(0xFFCCCCCC),
                      fontWeight: FontWeight.normal,
                    ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
