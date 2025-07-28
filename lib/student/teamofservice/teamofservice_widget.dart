import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'teamofservice_model.dart';
export 'teamofservice_model.dart';

class TeamofserviceWidget extends StatefulWidget {
  const TeamofserviceWidget({super.key});

  static String routeName = 'teamofservice';
  static String routePath = 'teamofservice';

  @override
  State<TeamofserviceWidget> createState() => _TeamofserviceWidgetState();
}

class _TeamofserviceWidgetState extends State<TeamofserviceWidget> {
  late TeamofserviceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TeamofserviceModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'teamofservice'});
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              logFirebaseEvent('TEAMOFSERVICE_arrow_back_rounded_ICN_ON_');
              logFirebaseEvent('IconButton_navigate_back');
              context.pop();
            },
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 30.0, 0.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/log.png',
                                  width: 198.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: Text(
                                'Paden is renting service mobile application that helps student to find the best accommodation off campus.This application will help students to find accommodation for both long term and short term purposes .\n\nIt also help\'s student to search for there desired accommodation at the comfort of there home safe and sound .Landlords of different apartments has the ablility to advertise thier places for students to rent\n\n',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.lato(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Text(
                          'Service Providers\n\nWe may disclose Personal Data to our third party service providers to provide you with the Services, including our third party payment processor. We share Aggregate Information with companies that provide public relations and marketing services for us. Such information will only be shared by us to customize, measure and improve our Site, Application and Services\n',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.lato(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ),
                      Text(
                        'Legal Processes\n\nWe may disclose information, including Personal Data, which we believe is appropriate to protect our rights, or to cooperate in investigations of fraud or other illegal or inappropriate activity or in response to a subpoena, court order or other comparable legal process. If a subpoena seeks information about an identified user or limited group of users, we’ll make reasonable business efforts, if permitted, to contact the user(s) before providing information to the party that requests it. We cannot guarantee that we will be able to contact the user(s) in all cases.\n\nWe may disclose Personal Data to your agent or legal representative (such as the holder of a power of attorney that you grant, or a guardian appointed for you) and may request identity verification before disclosing Personal Data in such a case.\n\n\nAs with any other business, it is possible that in the future we could merge with or be purchased by another company. If we are acquired, the company that acquires us would have access to the information maintained by us, including Personal Data, but would continue to be bound by this Privacy Policy unless and until it is amended.\n\n',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.lato(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                      Text(
                        'Aggregate Information\n\nWe are not limited in our use of Aggregate Information that does not permit direct association with any specific individual, or non-identifiable aggregate information about our users (such as the number of users of our Services, the geographic distribution of our users, the amount of information located and/or removed, etc.).\n\nHow do I change, delete or access my Personal Data?\n\n\nYou may view, change, or access your Personal Data at any time by logging into the Services and changing your account information. If you’d like to delete your Individual Information that you have provided in connection with the Services, please contact us at  and we will forward your request to padenhelp@lotusdreammaker.co.zw.\n\nHow do you protect my information?\nWe have implemented industry standard information security practices including administrative, physical, and technical measures to protect your Personal Data from loss, misuse, or unauthorized access, disclosure, alteration, or destruction. The security of your account relies on your protection of your password and mobile device(s). You are responsible for maintaining the security of your password. You are solely responsible for any \nand all activities that occur under your account or on your mobile device. You may not share your password or Services account with anyone. We will never ask you to send your password or other sensitive information to us in an email, though we may ask you to enter \n\nthis type of information on the Site or the Application interface. If you believe someone else has obtained access to your password, please change it immediately. If you believe that an unauthorized access has already occurred please report it immediately at padenhelp@lotusdreammaker.co.zw. You must promptly notify us if you become aware that any information provided by or submitted to in connection with the Services is lost, stolen, or used without permission.\n\nIf you have general concerns or questions regarding the security of information collected, processed or stored by the Site and/or Application, you can contact us at padenhelp@lotusdreammaker.co.zw.\n',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.lato(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                      Text(
                        'How do the Services use cookies or other technologies?\n\nWe collect certain information about your mobile device automatically, such as the type of mobile device you use, your mobile device’s unique device ID, the Internet Protocol (IP) address of your mobile device, your mobile device operating system, location, the type of mobile device Internet browser you use, and information about the way you use the Application. If you prefer, you can program your mobile device so that it does not store this information while utilizing the Applications. Certain Application features may only be available through the collection and use of this type of “cache data”. We may use cache data to assist in data collection and to track Application usage and trends to help us better serve you.\n\nWe may use third party analytics services on our website, such as Google Analytics.  The information collected through these means (including IP address) is disclosed to these service providers, who use the information to analyze use of our website.  To disable Google Analytics, please download the browser add-on for the deactivation of Google Analytics provided by Google at Google Analytics Guide. We use this information only to improve the Services, but do not combine it with personally identifiable information. See our Cookie Policy for further information on our use of cookies.\n\n\nEffective Date; Policy Changes\n\n\nEach time you use the Services, the current version of the Policy will apply. Accordingly, when you use the Services, you should check the date of this Policy (which appears at the top of the Policy) and review any changes since the last version. Our business changes frequently and this Policy is subject to change from time to time. Unless stated otherwise, our current Policy applies to all information that we have about you. We will not \nmaterially change our policies and practices to make them less protective of Personal Data collected in the past without the consent of affected customers.\n\n',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.lato(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                        child: Text(
                          'Last update 15 August 2023',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.lato(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
