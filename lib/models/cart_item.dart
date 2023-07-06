class CartItem{
  final String id;
  final double price;
  final String name;
  final int quantity;
  final String productId;

  CartItem({
    required this.id,
    required this.productId,
    required this.name,
    required this.quantity,
    required this.price,
  });
}