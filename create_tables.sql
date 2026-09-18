Table customers {
  id integer [primary key]
  full_name varchar
  email varchar [unique, not null]
  phone varchar
  shipping_address varchar
  city varchar
  postal_code varchar
  created_at timestamp
}

Table products {
  id integer [primary key]
  name varchar
  description text
  category varchar [note: 'Tops, Bottoms, Footwear, Accessories, etc.']
  brand varchar
  wear_type varchar [note: 'hoodie, tee, jacket, joggers, shorts, footwear, accessory']
  material varchar [note: 'e.g. cotton, fleece, denim, polyester blend']
  fit varchar [note: 'slim, regular, oversized, relaxed']
  gender varchar [note: 'men, women, unisex, kids']
  base_price decimal
  status varchar [note: 'active, draft, discontinued']
  created_at timestamp
}

Table product_variants {
  id integer [primary key]
  product_id integer [not null]
  sku varchar [unique, not null]
  size varchar [note: 'e.g. S, M, L, XL, or shoe size']
  color varchar
  price decimal [note: 'overrides base_price if set']
  stock_quantity integer [default: 100]
}

Table orders {
  id integer [primary key]
  customer_id integer [not null]
  status varchar [note: 'pending, paid, fulfilled, shipped, delivered, cancelled, returned']
  subtotal decimal
  tax decimal
  shipping_fee decimal
  total decimal
  payment_method varchar [note: 'card, paypal, cod, etc.']
  payment_status varchar [note: 'pending, completed, failed, refunded']
  placed_at timestamp
}

Table order_items {
  id integer [primary key]
  order_id integer [not null]
  variant_id integer [not null]
  quantity integer [not null]
  unit_price decimal [note: 'price at time of purchase']
}

Ref: product_variants.product_id > products.id
Ref: orders.customer_id > customers.id
Ref: order_items.order_id > orders.id
Ref: order_items.variant_id > product_variants.id
