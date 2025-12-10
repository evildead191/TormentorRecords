import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'login1_model.dart';
export 'login1_model.dart';

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

    _model.txtcorreoTextController ??= TextEditingController();
    _model.txtcorreoFocusNode ??= FocusNode();

    _model.txtcontraTextController ??= TextEditingController();
    _model.txtcontraFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 337.8,
                    height: 500.95,
                    decoration: BoxDecoration(
                      color: Color(0xFF0D0D0D),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        'assets/images/Tormentor_Logo.png',
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 30.0,
                  ),
                  TextFormField(
                    controller: _model.txtcorreoTextController,
                    focusNode: _model.txtcorreoFocusNode,
                    autofocus: false,
                    textInputAction: TextInputAction.next,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Correo electrónico',
                      hintStyle: TextStyle(
                        fontFamily: 'blaceb',
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
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    style: TextStyle(
                      fontFamily: 'texto',
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.white,
                    validator: _model.txtcorreoTextControllerValidator
                        .asValidator(context),
                  ),
                  Container(
                    height: 15.0,
                  ),
                  TextFormField(
                    controller: _model.txtcontraTextController,
                    focusNode: _model.txtcontraFocusNode,
                    autofocus: false,
                    textInputAction: TextInputAction.done,
                    obscureText: !_model.txtcontraVisibility,
                    decoration: InputDecoration(
                      hintText: 'Contraseña',
                      hintStyle: TextStyle(
                        fontFamily: 'blaceb',
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
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.white,
                      ),
                      suffixIcon: InkWell(
                        onTap: () => safeSetState(
                          () => _model.txtcontraVisibility =
                              !_model.txtcontraVisibility,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          _model.txtcontraVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Color(0xFFCCCCCC),
                          size: 20.0,
                        ),
                      ),
                    ),
                    style: TextStyle(
                      fontFamily: 'texto',
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                    cursorColor: Colors.white,
                    validator: _model.txtcontraTextControllerValidator
                        .asValidator(context),
                  ),
                  Container(
                    height: 15.0,
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      GoRouter.of(context).prepareAuthEvent();

                      final user = await authManager.signInWithEmail(
                        context,
                        _model.txtcorreoTextController.text,
                        _model.txtcontraTextController.text,
                      );
                      if (user == null) {
                        return;
                      }

                      context.goNamedAuth(
                          HomeWidget.routeName, context.mounted);
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
                      textStyle: TextStyle(
                        fontFamily: 'blaceb',
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
                    onPressed: () async {
                      context.pushNamed(RegisterWidget.routeName);
                    },
                    text: '¿No tienes cuenta? Regístrate aquí',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Colors.transparent,
                      textStyle: TextStyle(
                        fontFamily: 'texto',
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
      ),
    );
  }
}
