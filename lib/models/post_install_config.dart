class PostInstallPackage {
  final String id;
  final String name;
  final String description;
  final String wingetId;

  const PostInstallPackage({
    required this.id,
    required this.name,
    required this.description,
    required this.wingetId,
  });
}

class KmsProduct {
  final String id;
  final String name;
  final String key;

  const KmsProduct({required this.id, required this.name, required this.key});
}

class OfficeDeploymentOption {
  final String id;
  final String name;
  final String description;
  final String channel;
  final String productId;
  final String clientEdition;
  final KmsProduct kmsProduct;
  final List<String> languages;

  const OfficeDeploymentOption({
    required this.id,
    required this.name,
    required this.description,
    required this.channel,
    required this.productId,
    required this.clientEdition,
    required this.kmsProduct,
    required this.languages,
  });
}

class PostInstallConfig {
  final String kmsHost;
  final bool windowsKms;
  final bool officeKms;
  final bool kmsRenewalTask;
  final Set<String> packageIds;

  const PostInstallConfig({
    required this.kmsHost,
    required this.windowsKms,
    required this.officeKms,
    required this.kmsRenewalTask,
    required this.packageIds,
  });

  bool get enabled => windowsKms || officeKms || packageIds.isNotEmpty;
}

const List<KmsProduct> windowsKmsProducts = [
  KmsProduct(
    id: 'win10_11_pro',
    name: 'Windows 10/11 Pro',
    key: 'W269N-WFGWX-YVC9B-4J6C9-T83GX',
  ),
  KmsProduct(
    id: 'win10_11_enterprise',
    name: 'Windows 10/11 Enterprise',
    key: 'NPPR9-FWDCX-D2C8J-H872K-2YT43',
  ),
  KmsProduct(
    id: 'win10_11_education',
    name: 'Windows 10/11 Education',
    key: 'NW6C2-QMPVW-D7KKK-3GKT6-VCFB2',
  ),
  KmsProduct(
    id: 'win10_11_workstations',
    name: 'Windows 10/11 Pro Workstations',
    key: 'NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J',
  ),
  KmsProduct(
    id: 'win81_pro',
    name: 'Windows 8.1 Pro',
    key: 'GCRJD-8NW9H-F2CDX-CCM8D-9D6T9',
  ),
  KmsProduct(
    id: 'win81_enterprise',
    name: 'Windows 8.1 Enterprise',
    key: 'MHF9N-XY6XB-WVXMC-BTDCT-MKKG7',
  ),
  KmsProduct(
    id: 'win8_pro',
    name: 'Windows 8 Pro',
    key: 'NG4HW-VH26C-733KW-K6F98-J8CK4',
  ),
  KmsProduct(
    id: 'win8_enterprise',
    name: 'Windows 8 Enterprise',
    key: '32JNW-9KQ84-P47T8-D8GGY-CWCK7',
  ),
];

const List<KmsProduct> officeKmsProducts = [
  KmsProduct(
    id: 'office2024_proplus',
    name: 'Office LTSC Professional Plus 2024',
    key: 'XJ2XN-FW8RK-P4HMP-DKDBV-GCVGB',
  ),
  KmsProduct(
    id: 'office2021_proplus',
    name: 'Office LTSC Professional Plus 2021',
    key: 'FXYTK-NJJ8C-GB6DW-3DYQT-6F7TH',
  ),
  KmsProduct(
    id: 'office2019_proplus',
    name: 'Office Professional Plus 2019',
    key: 'NMMKJ-6RK4F-KMJVX-8D9MJ-6MWKP',
  ),
  KmsProduct(
    id: 'office2016_proplus',
    name: 'Office Professional Plus 2016',
    key: 'XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99',
  ),
  KmsProduct(
    id: 'office2013_proplus',
    name: 'Office Professional Plus 2013',
    key: 'YC7DK-G2NP3-2QQC3-J6H88-GVGXT',
  ),
  KmsProduct(
    id: 'office2013_standard',
    name: 'Office Standard 2013',
    key: 'KBKQT-2NMXY-JJWGP-M62JB-92CD4',
  ),
];

final List<OfficeDeploymentOption> officeDeploymentOptions = [
  OfficeDeploymentOption(
    id: 'office2024_proplus',
    name: 'Office LTSC Pro Plus 2024',
    description: 'Click-to-Run de volumen con canal PerpetualVL2024',
    channel: 'PerpetualVL2024',
    productId: 'ProPlus2024Volume',
    clientEdition: '64',
    kmsProduct: officeKmsProducts[0],
    languages: ['es-es', 'en-us'],
  ),
  OfficeDeploymentOption(
    id: 'office2021_proplus',
    name: 'Office LTSC Pro Plus 2021',
    description: 'Click-to-Run de volumen con canal PerpetualVL2021',
    channel: 'PerpetualVL2021',
    productId: 'ProPlus2021Volume',
    clientEdition: '64',
    kmsProduct: officeKmsProducts[1],
    languages: ['es-es', 'en-us'],
  ),
  OfficeDeploymentOption(
    id: 'office2019_proplus',
    name: 'Office Pro Plus 2019',
    description: 'Click-to-Run de volumen con canal PerpetualVL2019',
    channel: 'PerpetualVL2019',
    productId: 'ProPlus2019Volume',
    clientEdition: '64',
    kmsProduct: officeKmsProducts[2],
    languages: ['es-es', 'en-us'],
  ),
];

const List<PostInstallPackage> defaultPostInstallPackages = [
  PostInstallPackage(
    id: 'vscode',
    name: 'VS Code',
    description: 'Editor',
    wingetId: 'Microsoft.VisualStudioCode',
  ),
  PostInstallPackage(
    id: 'git',
    name: 'Git',
    description: 'Control de versiones',
    wingetId: 'Git.Git',
  ),
  PostInstallPackage(
    id: 'nodejs',
    name: 'Node.js LTS',
    description: 'JavaScript',
    wingetId: 'OpenJS.NodeJS.LTS',
  ),
  PostInstallPackage(
    id: 'python',
    name: 'Python',
    description: 'Python 3',
    wingetId: 'Python.Python.3.12',
  ),
  PostInstallPackage(
    id: 'php',
    name: 'PHP',
    description: 'Runtime PHP',
    wingetId: 'PHP.PHP.8.3',
  ),
  PostInstallPackage(
    id: 'mysql',
    name: 'MySQL',
    description: 'Servidor DB',
    wingetId: 'Oracle.MySQL',
  ),
  PostInstallPackage(
    id: 'go',
    name: 'Go',
    description: 'Golang',
    wingetId: 'GoLang.Go',
  ),
  PostInstallPackage(
    id: 'rust',
    name: 'Rust',
    description: 'Rustup',
    wingetId: 'Rustlang.Rustup',
  ),
  PostInstallPackage(
    id: 'java',
    name: 'Java JDK',
    description: 'Temurin 21',
    wingetId: 'EclipseAdoptium.Temurin.21.JDK',
  ),
  PostInstallPackage(
    id: 'docker',
    name: 'Docker',
    description: 'Desktop',
    wingetId: 'Docker.DockerDesktop',
  ),
];

PostInstallPackage? postInstallPackageById(String id) {
  for (final package in defaultPostInstallPackages) {
    if (package.id == id) return package;
  }
  return null;
}
