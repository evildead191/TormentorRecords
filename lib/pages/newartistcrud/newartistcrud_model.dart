import '/flutter_flow/flutter_flow_util.dart';
import 'newartistcrud_widget.dart' show NewartistcrudWidget;
import 'package:flutter/material.dart';

class NewartistcrudModel extends FlutterFlowModel<NewartistcrudWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtnombreArtista widget.
  FocusNode? txtnombreArtistaFocusNode;
  TextEditingController? txtnombreArtistaTextController;
  String? Function(BuildContext, String?)?
      txtnombreArtistaTextControllerValidator;
  // State field(s) for txtBiografia widget.
  FocusNode? txtBiografiaFocusNode;
  TextEditingController? txtBiografiaTextController;
  String? Function(BuildContext, String?)? txtBiografiaTextControllerValidator;
  bool isDataUploading_uploadData85q = false;
  FFUploadedFile uploadedLocalFile_uploadData85q =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData85q = '';

  // State field(s) for txtImagenUrl widget.
  FocusNode? txtImagenUrlFocusNode;
  TextEditingController? txtImagenUrlTextController;
  String? Function(BuildContext, String?)? txtImagenUrlTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtnombreArtistaFocusNode?.dispose();
    txtnombreArtistaTextController?.dispose();

    txtBiografiaFocusNode?.dispose();
    txtBiografiaTextController?.dispose();

    txtImagenUrlFocusNode?.dispose();
    txtImagenUrlTextController?.dispose();
  }
}
