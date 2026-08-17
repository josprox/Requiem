// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a hi locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'hi';

  static String m0(count) => "${count} कार्यक्रम";

  static String m1(version) => "उपलब्ध संस्करण: ${version}";

  static String m2(firmware) => "वर्तमान समझौता: ${firmware}";

  static String m3(error) => "कनेक्ट नहीं हो सका: ${error}";

  static String m4(error) => "पुल की खोज नहीं की जा सकी: ${error}";

  static String m5(host) =>
      "${host}:1688 के साथ कनेक्टिविटी की जाँच की जा रही है...";

  static String m6(mode) => "समर्थित मोड: ${mode}";

  static String m7(name, edition) => "संपादन का पता चला: ${name} (${edition})";

  static String m8(error) => "एक त्रुटि उत्पन्न हुई: ${error}";

  static String m9(path) => "अमान्य मार्ग: ${path}";

  static String m10(error) => "KMS त्रुटि: ${error}";

  static String m11(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} बिट्स। नवीनीकरण ${status} रहता है।";

  static String m12(count) => "पता लगाए गए पैकेट: ${count}.";

  static String m13(file) => "चयनित: ${file}";

  static String m14(error) => "वाई-फ़ाई से कनेक्ट नहीं हो सका: ${error}";

  static String m15(network) => "${network} से जुड़ा।";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("रद्द करना"),
    "actionChange": MessageLookupByLibrary.simpleMessage("परिवर्तन"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("पुष्टि करना"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("जोड़ना"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("जारी रखना"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("स्थापित करना"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("अद्यतन"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "सिस्टम को रीबूट करें",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "ड्राइव को दोबारा स्कैन करें",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("देखो के लिए"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("चुनना"),
    "activate": MessageLookupByLibrary.simpleMessage("सक्रिय करें"),
    "activateKms": MessageLookupByLibrary.simpleMessage("KMS सक्रिय करें"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Requiem इंस्टालर",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage("Requiem उपकरण"),
    "applicationStack": MessageLookupByLibrary.simpleMessage("एप्लिकेशन स्टैक"),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "विंगेट का उपयोग करके विंडोज़ के लिए आवश्यक विकास उपकरण स्थापित और अद्यतन करें।",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage(
      "स्वचालित कार्यालय",
    ),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "पहले से स्थापित वॉल्यूम GVLK का उपयोग करें",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "स्वचालित नवीनीकरण",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "स्वचालित खिड़कियाँ",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "संस्करण और संगत GVLK का पता लगाता है",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "WIM को केवल एक बार तैयार करें और इसे सीधे उसी नेटवर्क पर Requiem क्लाइंट तक पहुंचाएं। ग्राहक WIM को इंस्टाल करने से पहले सेव नहीं करते हैं।",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("रिक्विम ब्रिज आईपी"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "HTTP पोर्ट 40124 · यूडीपी डिस्कवरी 40123। यदि विंडोज डिफेंडर पूछता है, तो निजी नेटवर्क पर पहुंच की अनुमति दें।",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("साफ लॉग"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "डेटा नष्ट होने की पुष्टि करें",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "स्थापना की पुष्टि करें",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "इंस्टॉलर को वाई-फ़ाई से कनेक्ट करें",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("वाई-फ़ाई कनेक्ट करें"),
    "copyLogs": MessageLookupByLibrary.simpleMessage("रिकार्ड कॉपी करें"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "तैनाती प्रगति पर है",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage(
      "जॉस द्वारा डिज़ाइन किया गया",
    ),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "वह भौतिक ड्राइव चुनें जहां विंडोज़ स्थापित की जाएगी।",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("पता लगाना"),
    "diskManagement": MessageLookupByLibrary.simpleMessage("नाइट क्लब प्रबंधन"),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "बिजली बंद न करें या इंस्टॉलेशन मीडिया को न हटाएं",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "डाउनलोड + सक्रिय करें",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "इंस्टॉलर डाउनलोड करें (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "पोर्टेबल डाउनलोड करें (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("इकाइयों"),
    "editionDetected": m7,
    "emptyFolder": MessageLookupByLibrary.simpleMessage("यह फ़ोल्डर खाली है"),
    "errorGeneric": m8,
    "filter": MessageLookupByLibrary.simpleMessage("फ़िल्टर करें..."),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "जीपीटी प्रारूप (अनुशंसित)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "डिस्को साफ़ करें और UEFI लेआउट बनाएं\nईएफआई (एस:) + विंडोज (डब्ल्यू:)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "प्रारूप एमबीआर (विरासत BIOS)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "डिस्क को वाइप करें और लीगेसी लेआउट बनाएं\nकेवल विंडोज़ (सी:)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "चयनित डिस्क पूरी तरह से स्वरूपित हो जाएगी. सारा डेटा नष्ट हो जाएगा.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("आईएसओ उत्पन्न करें"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "केवल इंस्टालेशन के लिए आईएसओ प्राप्त करें",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("एक स्तर ऊपर जाओ"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("छवि का पता चला"),
    "imageFound": MessageLookupByLibrary.simpleMessage("छवि मिली"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage("छवि नहीं मिली"),
    "imageSearching": MessageLookupByLibrary.simpleMessage(
      "छवि खोजी जा रही है...",
    ),
    "installAll": MessageLookupByLibrary.simpleMessage("सभी स्थापित करें"),
    "installOffice": MessageLookupByLibrary.simpleMessage("स्थापना कार्यालय"),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "स्थापना की प्रगति",
    ),
    "invalidPath": m9,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "बूट पर WIM का चयन करने के लिए आधार ISO प्राप्त करें, या एक स्व-निहित ISO बनाएं जिसमें पहले से ही आपकी Windows छवि शामिल हो।",
    ),
    "kmsError": m10,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "त्रुटि: KMS होस्ट खाली है.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("केएमएस सर्वर"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage("टास्क 160 दिन"),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "वॉल्यूम सक्रियण (KMS)",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "उच्च-प्रदर्शन वातावरण के लिए उच्च-परिशुद्धता विंडोज इंस्टॉलर। प्रत्यक्ष डीआईएसएम ऑर्केस्ट्रेशन और स्वचालित सिस्टम अनुकूलन के साथ तेजी से तैनाती का अनुभव करें।",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "लाइसेंस सक्रियण",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "रिकॉर्ड्स को क्लिपबोर्ड पर कॉपी किया गया।",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "यह अद्यतन अनिवार्य है और इसे छोड़ा नहीं जा सकता।",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "अपनी WIM फ़ाइल को मैन्युअल रूप से ढूंढने के लिए \"ब्राउज़ करें\" का उपयोग करें।",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "इंस्टालेशन मीडिया",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "इंस्टालेशन IPv4 ब्रिज",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "वाई-फाई/लैन आईपीवी4 इंटरफ़ेस",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "अगली पीढ़ी का OS परिनियोजन",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "कोई पुल नहीं मिला. आईपी ​​मैनुअल आज़माएं.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "विंडोज़ बिना फ़ॉर्मेटिंग के W:\\ पर तैनात होगी।",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "कोई छवि नहीं मिली",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "कोई KMS उत्पाद चयनित नहीं है.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "कोई भौतिक डिस्क नहीं मिली",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "कोई प्रोग्राम चयनित नहीं है.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "कोई उपलब्ध वाई-फ़ाई नेटवर्क नहीं मिला.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "विंगेट के साथ कोई ज्ञात पैकेज नहीं पाया गया।",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "ODT का उपयोग करके Microsoft Office LTSC या 365 को स्वचालित तरीके से परिनियोजित करें।",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "कार्यालय इंस्टॉलर",
    ),
    "officeRenewalStatus": m11,
    "officeVersion": MessageLookupByLibrary.simpleMessage("कार्यालय संस्करण"),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "यह सुविधा केवल विंडोज़ पर उपलब्ध है।",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "प्रोग्राम स्टैक (विंगेट)",
    ),
    "packagesDetected": m12,
    "partitionMode": MessageLookupByLibrary.simpleMessage("विभाजन मोड"),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "पुल तैयार करें और शुरू करें",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "विंडोज़ इंस्टॉलेशन छवि प्रदान करें (install.wim या install.swm)\nUSB ड्राइव या किसी माउंटेड मीडिया से।",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "या Windows के लिए Requiem से तैयार इंस्टॉलेशन प्राप्त करें",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("सक्रिय"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("अक्षम"),
    "searchingImage": MessageLookupByLibrary.simpleMessage(
      "छवि खोजी जा रही है...",
    ),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "सुरक्षित बूट समर्थित",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "गंतव्य डिस्क का चयन करें",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      ".wim या .swm फ़ाइल चुनें",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("WIM का चयन करें"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "एक WIM और एक निजी IPv4 इंटरफ़ेस चुनें।",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "विंडोज़ छवि का चयन करें",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "विंडोज़ इंस्टालेशन छवि का चयन करें",
    ),
    "selectedFile": m13,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "स्थिर संस्करण v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("शुरू"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "स्थापना प्रारंभ करें",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("पुल रुकना"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("सिस्टम कंसोल"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("प्रणाली"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("सिस्टम लॉग"),
    "unknown": MessageLookupByLibrary.simpleMessage("एक अजनबी"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "Requiem Tools का उपयोग जारी रखने के लिए नवीनतम संस्करण में अपडेट करना आवश्यक है।",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage("अद्यतन आवश्यक है"),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "मौजूदा विभाजनों का उपयोग करें",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "अस्वरूपित - W में प्रदर्शित होता है: जैसा है\nआप भागीदारी को मैन्युअल रूप से प्रबंधित करते हैं",
    ),
    "waitingAction": MessageLookupByLibrary.simpleMessage(
      "कार्रवाई की प्रतीक्षा में...",
    ),
    "waitingForWim": MessageLookupByLibrary.simpleMessage(
      "install.wim का पता चलने की प्रतीक्षा की जा रही है...",
    ),
    "wifiConnectError": m14,
    "wifiConnected": m15,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("वाईफ़ाई पासवर्ड"),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM को ISO में एकीकृत किया गया",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "विंगेट स्थापित नहीं है या PATH में नहीं है.",
    ),
  };
}
