void main() {
  List<Map<String, dynamic>> productos = [
    {'nombre': 'Silla', 'precio': 1200000,'descuento': 15.0, 'iva': 19.0},
    {'nombre': 'Closet', 'precio': 250000, 'descuento': 20.0, 'iva': 19.0},
    {'nombre': 'Televisor', 'precio': 3570000, 'descuento': 25.0, 'iva': 19.0},
    {'nombre': 'Cama', 'precio': 6700000, 'descuento': 30.0, 'iva': 19.0},
  ];

  for (var producto in productos) {
    double precioTotal = calcularPrecioTotal(
      producto['precio'],
      producto['descuento'],
      producto['iva'],
    );
    print('${producto['nombre']}: \$${precioTotal.toStringAsFixed(2)}');
  }
}

double calcularPrecioTotal(double precio, double descuento, double iva) {
  double precioDescuento = precio - (precio * descuento / 100);
  double precioTotal = precioDescuento + (precioDescuento * iva / 100);
  return precioTotal;
}
