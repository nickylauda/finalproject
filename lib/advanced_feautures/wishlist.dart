class WishlistService {
  static final WishlistService _instance = WishlistService._internal();
  final List<Map<String, dynamic>> _wishlistItems = [];

  factory WishlistService() {
    return _instance;
  }

  WishlistService._internal();

  void addToWishlist(Map<String, dynamic> product) {
    _wishlistItems.add(product);
  }

  List<Map<String, dynamic>> get wishlistItems => _wishlistItems;
}