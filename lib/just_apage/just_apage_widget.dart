import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JustApageWidget extends StatefulWidget {
  JustApageWidget({
    Key key,
    this.description,
  }) : super(key: key);

  final String description;

  @override
  _JustApageWidgetState createState() => _JustApageWidgetState();
}

class _JustApageWidgetState extends State<JustApageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Text(
          widget.description,
          style: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
