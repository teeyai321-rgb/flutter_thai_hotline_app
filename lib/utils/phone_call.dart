import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchPhoneCall(BuildContext context, String phoneNumber) async {
  final sanitizedPhoneNumber = phoneNumber.replaceAll(
    RegExp(r'[^0-9+]'),
    '',
  );
  final phoneUri = Uri(scheme: 'tel', path: sanitizedPhoneNumber);
  final launched = await launchUrl(
    phoneUri,
    mode: LaunchMode.externalApplication,
  );

  if (!launched && context.mounted) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('ไม่สามารถเปิดแอปโทรศัพท์ได้')),
    );
  }
}
