import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'scroll_hint_dialog_model.dart';
export 'scroll_hint_dialog_model.dart';

class ScrollHintDialogWidget extends StatefulWidget {
  const ScrollHintDialogWidget({super.key});

  @override
  State<ScrollHintDialogWidget> createState() => _ScrollHintDialogWidgetState();
}

class _ScrollHintDialogWidgetState extends State<ScrollHintDialogWidget> {
  late ScrollHintDialogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScrollHintDialogModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        width: 300.0,
        decoration: BoxDecoration(
          color: Color(0xFF0D0D0D),
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            color: Color(0xFF6E0000),
            width: 2.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.swap_horiz,
                color: Colors.white,
                size: 32.0,
              ),
              Text(
                'Deslizá a la derecha o izquierda para ver más secciones.',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'texto',
                      color: Colors.white,
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ].divide(SizedBox(height: 12.0)),
          ),
        ),
      ),
    );
  }
}
