ZOZOTOWN DB設計

## usersテーブル
|Column|Type|Opitions|
|------|----|--------|
|id|integer|null: false|
|email|string|null: false,unique: true|
|name|string|null: false|
|kana_name|string|null: false|
|postal_code|integer|null: false|
|address|string|null:false|
|phone_number|integer|null: false|

### Asociation
has_many : carts

## cartsテーブル
|Column|Type|Opitions|
|------|----|--------|
|id|integer|null: false|
|user_id|integer|null: false|
|product_id|integer|null:false|
|status|string|null: false|

### asociation
belongs_to :product
belongs_to :user
has_one :payment

## paymentsテーブル
|Column|Type|Opitions|
|------|----|--------|
|id|integer|null: false|
|user-id|integer|null: false|
|amount|integer|null:false|
|status|integer|null:false|

### asociation
has_one : cart

## productsテーブル
|Column|Type|Opitions|
|------|----|--------|
|id|integer|null:false|
|name|sritng|null: false|
|cloth_group|string|null: false|
|cloth_category|string|null: false|
|cloth_type|string|null: false|
|body|text|
|price|integer|null:false|
|coler|string|null:false|
|size|string|null:false|

### asociation
has_many : carts
belongs_to : shop
has_many : images

## imagesテーブル
|Column|Type|Opitions|
|------|----|--------|
|image|string|null:false|
|product_id|integer|null:false|
|status|integer|null:false|

### asociation
belongs_to : product

## shopsテーブル
|Column|Type|Opitions|
|------|----|--------|
|id|integer|null: false|
|name|string|null:false|
|representative|string|null:false|
|email|string|null: false|

### association
has_many : products
