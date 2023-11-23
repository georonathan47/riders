import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

/// A String value to show error message to user
/// When null thus validation passed, then execute onLoadingDone()
class LoadingPage extends StatelessWidget {
  /// Constructor
  const LoadingPage({
    super.key,
    this.title,
    this.onLoadingDone,
    required this.errorText,
  });

  /// Starts with an initial value of an empty string
  /// A string text for error message, and null value for validation passed
  final Future<String?> errorText;

  /// Function called when loading has completed
  final VoidCallback? onLoadingDone;

  // final String? message;
  final String? title;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return FutureBuilder<String?>(
      initialData: '', // Empty data string to initiate a loading screen
      future: errorText,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            title: snapshot.data!.isNotEmpty
                ? Center(
                    child: Text(
                      title!.isNotEmpty ? title! : 'ERROR‼',
                      style: textTheme.titleLarge!.copyWith(color: title!.isNotEmpty ? Colors.teal : Colors.red),
                    ),
                  )
                : null,
            content: snapshot.data!.isNotEmpty
                ? Text(
                    snapshot.data!,
                    style: GoogleFonts.raleway(
                      textStyle: textTheme.titleMedium,
                    ),
                  )
                : Row(
                    children: [
                      const CircularProgressIndicator.adaptive(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Loading...',
                          style: GoogleFonts.raleway(),
                        ),
                      ),
                    ],
                  ),
            actions: snapshot.data!.isNotEmpty
                ? [
                    TextButton.icon(
                      icon: title!.contains('Success') ? const SizedBox.shrink() : const Icon(Icons.refresh),
                      // Closes the loading screen and returns false
                      onPressed: () => Navigator.of(context).pop<bool>(false),
                      label: title!.contains('Success') ? const SizedBox.shrink() : const Text('RETRY'),
                    ),
                  ]
                : null,
          );
        }
        return Builder(
          builder: (context) {
            SchedulerBinding.instance.addPostFrameCallback(
              (_) {
                Navigator.of(context).pop<bool>(true); // Closes the Loading Screen and returns true
                final call = onLoadingDone ?? () {};
                call();
              },
            );
            return const SizedBox();
          },
        );
      },
    );
  }
}
