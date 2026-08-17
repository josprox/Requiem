// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a id locale. All the
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
  String get localeName => 'id';

  static String m0(count) => "${count} program";

  static String m1(version) => "Versi yang tersedia: ${version}";

  static String m2(firmware) => "Arranque sebenarnya: ${firmware}";

  static String m3(error) =>
      "Tidak ada koneksi yang dapat Anda lakukan: ${error}";

  static String m4(error) => "Tidak ada buscar el puente: ${error}";

  static String m5(host) => "Sambungan yang disetujui dengan ${host}:1688...";

  static String m6(mode) => "Kompatibel dengan Modo: ${mode}";

  static String m7(name, edition) => "Edisi terdeteksi: ${name} (${edition})";

  static String m8(error) => "Terjadi kesalahan: ${error}";

  static String m9(path) => "Rute tidak valid: ${path}";

  static String m10(error) => "Kesalahan KMS: ${error}";

  static String m11(product, channel, edition, status) =>
      "${product} / ${channel} / ${edition} bit. Renovasi itu ${status}.";

  static String m12(count) => "Paket yang terdeteksi: ${count}.";

  static String m13(file) => "Dipilih: ${file}";

  static String m14(error) => "Anda tidak dapat menyambungkan Wi-Fi: ${error}";

  static String m15(network) => "Hubungkan ke ${network}.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "actionCancel": MessageLookupByLibrary.simpleMessage("Pembatalan"),
    "actionChange": MessageLookupByLibrary.simpleMessage("Kambiar"),
    "actionConfirm": MessageLookupByLibrary.simpleMessage("Konfirmasi"),
    "actionConnect": MessageLookupByLibrary.simpleMessage("Hubungkan"),
    "actionContinue": MessageLookupByLibrary.simpleMessage("Lanjutkan"),
    "actionInstall": MessageLookupByLibrary.simpleMessage("Instal"),
    "actionRefresh": MessageLookupByLibrary.simpleMessage("Memperbarui"),
    "actionRestartSystem": MessageLookupByLibrary.simpleMessage(
      "Memulai kembali sistem",
    ),
    "actionScanAgain": MessageLookupByLibrary.simpleMessage(
      "Temukan unit baru",
    ),
    "actionSearch": MessageLookupByLibrary.simpleMessage("Buscar"),
    "actionSelect": MessageLookupByLibrary.simpleMessage("Pilih"),
    "activate": MessageLookupByLibrary.simpleMessage("Aktivasi"),
    "activateKms": MessageLookupByLibrary.simpleMessage("Aktivasi KMS"),
    "appTitleInstaller": MessageLookupByLibrary.simpleMessage(
      "Pemasang Requiem",
    ),
    "appTitleTools": MessageLookupByLibrary.simpleMessage("Alat Requiem"),
    "applicationStack": MessageLookupByLibrary.simpleMessage(
      "Tumpukan aplikasi",
    ),
    "applicationStackDescription": MessageLookupByLibrary.simpleMessage(
      "Instal dan perbarui perangkat desarrollo penting untuk Windows di tengah jendela.",
    ),
    "applicationsCount": m0,
    "automaticOffice": MessageLookupByLibrary.simpleMessage("Otomatis kantor"),
    "automaticOfficeDescription": MessageLookupByLibrary.simpleMessage(
      "Gunakan GVLK untuk volume yang sudah diinstal",
    ),
    "automaticRenewal": MessageLookupByLibrary.simpleMessage(
      "Renovasi otomatis",
    ),
    "automaticWindows": MessageLookupByLibrary.simpleMessage(
      "Windows otomatis",
    ),
    "automaticWindowsDescription": MessageLookupByLibrary.simpleMessage(
      "Deteksi edisi dan kompatibel dengan GVLK",
    ),
    "availableVersion": m1,
    "bootCurrent": m2,
    "bridgeConnectError": m3,
    "bridgeDescription": MessageLookupByLibrary.simpleMessage(
      "Siapkan WIM sekali saja dan kirimkan langsung ke klien Requiem de la misma red. Klien tidak perlu menjaga WIM sebelum menginstal.",
    ),
    "bridgeIp": MessageLookupByLibrary.simpleMessage("IP dari puente Requiem"),
    "bridgePorts": MessageLookupByLibrary.simpleMessage(
      "Puerto HTTP 40124 · unduh UDP 40123. Jika Windows Defender membutuhkannya, izinkan akses dan privasi tambahan.",
    ),
    "bridgeSearchError": m4,
    "checkingKms": m5,
    "clearLogs": MessageLookupByLibrary.simpleMessage("Log limpiar"),
    "compatibleMode": m6,
    "confirmDataDestruction": MessageLookupByLibrary.simpleMessage(
      "Konfirmasikan penghancuran data",
    ),
    "confirmInstallation": MessageLookupByLibrary.simpleMessage(
      "Konfirmasikan instalasi",
    ),
    "connectInstallerWifi": MessageLookupByLibrary.simpleMessage(
      "Hubungkan penginstal ke Wi-Fi",
    ),
    "connectWifi": MessageLookupByLibrary.simpleMessage("Hubungkan Wi-Fi"),
    "copyLogs": MessageLookupByLibrary.simpleMessage("Salin log"),
    "deploymentInProgress": MessageLookupByLibrary.simpleMessage(
      "Hapus secara langsung",
    ),
    "designedBy": MessageLookupByLibrary.simpleMessage("Diseñado oleh Joss"),
    "destinationDiskDescription": MessageLookupByLibrary.simpleMessage(
      "Hilangkan perangkat fisik setelah menginstal Windows.",
    ),
    "detect": MessageLookupByLibrary.simpleMessage("Deteksi"),
    "diskManagement": MessageLookupByLibrary.simpleMessage(
      "Administrasi diskotik",
    ),
    "doNotDisconnect": MessageLookupByLibrary.simpleMessage(
      "Energi tidak terputus atau alat instalasi dimatikan",
    ),
    "downloadAndActivate": MessageLookupByLibrary.simpleMessage(
      "Unduh + aktivar",
    ),
    "downloadInstaller": MessageLookupByLibrary.simpleMessage(
      "Unduh penginstal (.exe)",
    ),
    "downloadPortable": MessageLookupByLibrary.simpleMessage(
      "Unduh portabel (.zip)",
    ),
    "drives": MessageLookupByLibrary.simpleMessage("Unidades"),
    "editionDetected": m7,
    "emptyFolder": MessageLookupByLibrary.simpleMessage(
      "Karpet ini adalah ruang kosong",
    ),
    "errorGeneric": m8,
    "filter": MessageLookupByLibrary.simpleMessage("Filter…"),
    "formatGpt": MessageLookupByLibrary.simpleMessage(
      "Format GPT (disarankan)",
    ),
    "formatGptDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco dan ciptakan diseño UEFI\nEFI (S :) + Jendela (W :)",
    ),
    "formatMbr": MessageLookupByLibrary.simpleMessage(
      "Format MBR (BIOS sudah ada)",
    ),
    "formatMbrDescription": MessageLookupByLibrary.simpleMessage(
      "Limpia el disco dan crea diseño heredado\nJendela Tunggal (C :)",
    ),
    "formatWarning": MessageLookupByLibrary.simpleMessage(
      "Disk yang dipilih akan diformat sepenuhnya. Jika Anda melakukan kesalahan pada semua data.",
    ),
    "generateIso": MessageLookupByLibrary.simpleMessage("ISO Umum"),
    "getInstallOnlyIso": MessageLookupByLibrary.simpleMessage(
      "Dapatkan ISO untuk instalasi dengan tenang",
    ),
    "goUpOneLevel": MessageLookupByLibrary.simpleMessage("Subir un level"),
    "imageDetected": MessageLookupByLibrary.simpleMessage("Deteksi gambar"),
    "imageFound": MessageLookupByLibrary.simpleMessage("Gambar ditemukan"),
    "imageNotFound": MessageLookupByLibrary.simpleMessage(
      "Gambar tidak ditemukan",
    ),
    "imageSearching": MessageLookupByLibrary.simpleMessage(
      "Gambar Buscando...",
    ),
    "installAll": MessageLookupByLibrary.simpleMessage(
      "Instal semua yang harus dilakukan",
    ),
    "installOffice": MessageLookupByLibrary.simpleMessage("Instal Office"),
    "installationProgress": MessageLookupByLibrary.simpleMessage(
      "Kemajuan instalasi",
    ),
    "invalidPath": m9,
    "isoDescription": MessageLookupByLibrary.simpleMessage(
      "Dapatkan basis ISO untuk memilih WIM pada pengaturan, atau pilih ISO otonom yang Anda sertakan pada gambar Windows.",
    ),
    "kmsError": m10,
    "kmsHostEmpty": MessageLookupByLibrary.simpleMessage(
      "Kesalahan: host KMS sedang kosong.",
    ),
    "kmsServer": MessageLookupByLibrary.simpleMessage("Server KMS"),
    "kmsTask160Days": MessageLookupByLibrary.simpleMessage(
      "Batas waktu 160 hari",
    ),
    "kmsVolumeActivation": MessageLookupByLibrary.simpleMessage(
      "Aktivasi volume (KMS)",
    ),
    "landingDescription": MessageLookupByLibrary.simpleMessage(
      "Instal Windows dengan presisi tinggi untuk seluruh kinerja. Bereksperimenlah dengan cepat dengan menanyakan langsung DISM dan mengoptimalkan sistem secara otomatis.",
    ),
    "licenseActivation": MessageLookupByLibrary.simpleMessage(
      "Aktivasi Lisensi",
    ),
    "logsCopied": MessageLookupByLibrary.simpleMessage(
      "Log disalin ke portapel.",
    ),
    "mandatoryUpdate": MessageLookupByLibrary.simpleMessage(
      "Pembaruan ini wajib dan tidak dapat dihilangkan.",
    ),
    "manualWimHint": MessageLookupByLibrary.simpleMessage(
      "Gunakan \"Buscar\" untuk melokalkan arsip WIM secara manual.",
    ),
    "mediaInstallation": MessageLookupByLibrary.simpleMessage(
      "Instalasi sedang",
    ),
    "networkBridge": MessageLookupByLibrary.simpleMessage(
      "Anda dapat menginstal IPv4",
    ),
    "networkInterface": MessageLookupByLibrary.simpleMessage(
      "Antarmuka Wi‑Fi/LAN IPv4",
    ),
    "nextGenerationDeployment": MessageLookupByLibrary.simpleMessage(
      "Despliegue de SO de proxima generación",
    ),
    "noBridgeFound": MessageLookupByLibrary.simpleMessage(
      "Anda tidak akan bertemu lagi. Gunakan panduan IP.",
    ),
    "noFormatWarning": MessageLookupByLibrary.simpleMessage(
      "Windows akan dihapus dan W:\\ tidak diformat.",
    ),
    "noImageDetected": MessageLookupByLibrary.simpleMessage(
      "Tidak ada gambar yang terdeteksi",
    ),
    "noKmsProducts": MessageLookupByLibrary.simpleMessage(
      "Tidak ada produk KMS yang dipilih.",
    ),
    "noPhysicalDisks": MessageLookupByLibrary.simpleMessage(
      "Tidak terdeteksi pada disk fisik",
    ),
    "noProgramsSelected": MessageLookupByLibrary.simpleMessage(
      "Tidak ada program yang dipilih.",
    ),
    "noWifiNetworks": MessageLookupByLibrary.simpleMessage(
      "Tidak ada pertemuan dengan perangkat Wi-Fi.",
    ),
    "noWingetPackages": MessageLookupByLibrary.simpleMessage(
      "Tidak ada paket yang terdeteksi di sayap.",
    ),
    "officeInstallDescription": MessageLookupByLibrary.simpleMessage(
      "Unduh Microsoft Office LTSC atau 365 dengan cara otomatis menggunakan ODT.",
    ),
    "officeInstaller": MessageLookupByLibrary.simpleMessage(
      "Penginstal Office",
    ),
    "officeRenewalStatus": m11,
    "officeVersion": MessageLookupByLibrary.simpleMessage("Versi Office"),
    "onlyWindows": MessageLookupByLibrary.simpleMessage(
      "Fungsi ini hanya tersedia di Windows.",
    ),
    "packageStack": MessageLookupByLibrary.simpleMessage(
      "Tumpukan program (Winget)",
    ),
    "packagesDetected": m12,
    "partitionMode": MessageLookupByLibrary.simpleMessage("Modus partisi"),
    "prepareBridge": MessageLookupByLibrary.simpleMessage(
      "Bersiaplah dan mulai",
    ),
    "provideWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Proporsi gambar instalasi Windows (install.wim atau install.swm)\ndari satu unit USB atau yang lainnya.",
    ),
    "receiveInstallation": MessageLookupByLibrary.simpleMessage(
      "Anda menerima instalasi yang disiapkan dari Requiem untuk Windows",
    ),
    "renewalActive": MessageLookupByLibrary.simpleMessage("Aktifkan"),
    "renewalDisabled": MessageLookupByLibrary.simpleMessage("Nonaktifkan"),
    "searchingImage": MessageLookupByLibrary.simpleMessage("Gambar Buscando…"),
    "secureBootCompatible": MessageLookupByLibrary.simpleMessage(
      "Kompatibel dengan Boot Aman",
    ),
    "selectDestinationDisk": MessageLookupByLibrary.simpleMessage(
      "Pilih disko tujuan",
    ),
    "selectFileHint": MessageLookupByLibrary.simpleMessage(
      "Pilih arsip .wim atau .swm",
    ),
    "selectWim": MessageLookupByLibrary.simpleMessage("WIM yang dipilih"),
    "selectWimFirst": MessageLookupByLibrary.simpleMessage(
      "Pilih WIM dan privasi antarmuka IPv4.",
    ),
    "selectWindowsImage": MessageLookupByLibrary.simpleMessage(
      "Pilih gambar Windows",
    ),
    "selectWindowsImageFull": MessageLookupByLibrary.simpleMessage(
      "Pilih gambar instalasi Windows",
    ),
    "selectedFile": m13,
    "stableVersion": MessageLookupByLibrary.simpleMessage(
      "Versi stabil v1.0.0",
    ),
    "start": MessageLookupByLibrary.simpleMessage("Kaisar"),
    "startInstallation": MessageLookupByLibrary.simpleMessage(
      "Memulai instalasi",
    ),
    "stopBridge": MessageLookupByLibrary.simpleMessage("Detener bisa"),
    "systemConsole": MessageLookupByLibrary.simpleMessage("Konsol sistem"),
    "systemDisk": MessageLookupByLibrary.simpleMessage("Sistema"),
    "systemLogs": MessageLookupByLibrary.simpleMessage("Log dari sistem"),
    "unknown": MessageLookupByLibrary.simpleMessage("Desconocido"),
    "updateDescription": MessageLookupByLibrary.simpleMessage(
      "Untuk melanjutkan menggunakan Requiem Tools, Anda perlu memperbarui versi yang lebih baru.",
    ),
    "updateRequired": MessageLookupByLibrary.simpleMessage(
      "Pembaruan yang diperlukan",
    ),
    "useExistingPartitions": MessageLookupByLibrary.simpleMessage(
      "Gunakan partisi yang ada",
    ),
    "useExistingPartitionsDescription": MessageLookupByLibrary.simpleMessage(
      "Sin formatear — despliega en W: tal cual\nKami menggunakan panduan partisipan",
    ),
    "waitingAction": MessageLookupByLibrary.simpleMessage(
      "Esperando sebuah tindakan...",
    ),
    "waitingForWim": MessageLookupByLibrary.simpleMessage(
      "Esperando deteksi install.wim...",
    ),
    "wifiConnectError": m14,
    "wifiConnected": m15,
    "wifiPassword": MessageLookupByLibrary.simpleMessage("Koneksi Wi-Fi"),
    "wimIntegrated": MessageLookupByLibrary.simpleMessage(
      "WIM terintegrasi dengan ISO",
    ),
    "wingetUnavailable": MessageLookupByLibrary.simpleMessage(
      "tidak ada yang terinstal atau tidak ada di PATH.",
    ),
  };
}
