import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'suma_cambio_model.dart';
export 'suma_cambio_model.dart';

class SumaCambioWidget extends StatefulWidget {
  const SumaCambioWidget({Key? key}) : super(key: key);

  @override
  _SumaCambioWidgetState createState() => _SumaCambioWidgetState();
}

class _SumaCambioWidgetState extends State<SumaCambioWidget> {
  late SumaCambioModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SumaCambioModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed('Menu');
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24.0, 4.0, 24.0, 24.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Total',
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Outfit',
                          color: Color(0xFF7C8791),
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              ),
              FutureBuilder<ApiCallResponse>(
                future: TipodecambioCall.call(),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    );
                  }
                  final textTipodecambioResponse = snapshot.data!;
                  return Text(
                    '0',
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Outfit',
                          color: Color(0xFF090F13),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                        ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
