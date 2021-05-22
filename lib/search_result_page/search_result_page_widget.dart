import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchResultPageWidget extends StatefulWidget {
  SearchResultPageWidget({
    Key key,
    this.searchTerm,
  }) : super(key: key);

  final String searchTerm;

  @override
  _SearchResultPageWidgetState createState() => _SearchResultPageWidgetState();
}

class _SearchResultPageWidgetState extends State<SearchResultPageWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController(text: widget.searchTerm);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<dynamic>(
      future: newsSearchCall(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }
        final searchResultPageNewsSearchResponse = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.secondaryColor,
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 145,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 40, 10, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                              size: 24,
                            ),
                            iconSize: 24,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                            child: Text(
                              'search',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFFE4E4E4),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.search_rounded,
                                      color: FlutterFlowTheme.tertiaryColor,
                                      size: 24,
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(3, 0, 0, 2),
                                        child: TextFormField(
                                          controller: textController,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Search for advice...',
                                            labelStyle: FlutterFlowTheme
                                                .bodyText1
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: FlutterFlowTheme
                                                  .tertiaryColor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
