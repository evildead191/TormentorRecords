import '/flutter_flow/flutter_flow_util.dart';
import 'new_news_widget.dart' show NewNewsWidget;
import 'package:flutter/material.dart';

class NewNewsModel extends FlutterFlowModel<NewNewsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txttitulonoticia widget.
  FocusNode? txttitulonoticiaFocusNode;
  TextEditingController? txttitulonoticiaTextController;
  String? Function(BuildContext, String?)?
      txttitulonoticiaTextControllerValidator;
  // State field(s) for txtdescripcion widget.
  FocusNode? txtdescripcionFocusNode;
  TextEditingController? txtdescripcionTextController;
  String? Function(BuildContext, String?)?
      txtdescripcionTextControllerValidator;
  bool isDataUploading_uploadDataL3j = false;
  FFUploadedFile uploadedLocalFile_uploadDataL3j =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataL3j = '';

  // State field(s) for txtImagenUrl widget.
  FocusNode? txtImagenUrlFocusNode;
  TextEditingController? txtImagenUrlTextController;
  String? Function(BuildContext, String?)? txtImagenUrlTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txttitulonoticiaFocusNode?.dispose();
    txttitulonoticiaTextController?.dispose();

    txtdescripcionFocusNode?.dispose();
    txtdescripcionTextController?.dispose();

    txtImagenUrlFocusNode?.dispose();
    txtImagenUrlTextController?.dispose();
  }
}
