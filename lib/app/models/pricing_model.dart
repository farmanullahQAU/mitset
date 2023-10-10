class PricingModel {
  final String? title;
  final String price;
  final String? subtitle;
  final String? icon;

  List<String>? features;

  PricingModel(
      {required this.price,
      this.subtitle,
      this.icon,
      this.features,
      this.title});
}
