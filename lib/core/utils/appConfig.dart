import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig extends ChangeNotifier {
  String? env;
  String? version;
  String? baseUrl;
  String? loginUrl;
  String? logoutUrl;
  String? registerUrl;
  String? ridersUrl;
  String? approvalUrl;
  String? ticketingUrl;
  String? fetchRecentRides;
  String? fetchTransactionsUrl;

  AppConfig({
    this.env,
    this.version,
    this.baseUrl,
    this.loginUrl,
    this.logoutUrl,
    this.registerUrl,
    this.approvalUrl,
    this.ridersUrl,
    this.ticketingUrl,
    this.fetchRecentRides,
    this.fetchTransactionsUrl,
  });

  static Future<AppConfig> forEnvironment(String env) async {
    // set default to prod if nothing was passed
    env = env.isEmpty ? 'prod' : env;

    // load the dotenv file
    await dotenv.load(
      fileName: 'assets/configs/$env.env',
    );

    // convert our .ENV into an instance of our AppConfig class
    return AppConfig(
      env: dotenv.env['ENV'],
      version: dotenv.env["VERSION"],
      baseUrl: dotenv.env["BASE_URL"],
      loginUrl: dotenv.env['LoginUrl'],
      logoutUrl: dotenv.env["LogoutUrl"],
      approvalUrl: dotenv.env["ApprovalUrl"],
      ridersUrl: dotenv.env["RidersUrl"],
      ticketingUrl: dotenv.env["TicketingUrl"],
      fetchRecentRides: dotenv.env["FetchRecentRidesUrl"],
      fetchTransactionsUrl: dotenv.env["FetchTransactionsUrl"],
    );
  }
}
