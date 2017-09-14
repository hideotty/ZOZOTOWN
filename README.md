ZOZOTOWN DB設計

## usersテーブル
|Column|Type|Opitions|
|------|----|--------|
|id|integer|null: false|
|nickname|string|null: false|
|email|string|null: false,unique: true|
|name|string|null: false unique: true|
|postal_code|integer|null: false|
|address|string|null:false|
|phone_number|integer|null:false|
|card_infomation|integer|null:false|

### Asociation
has_one : cart



## cartsテーブル
|Column|Type|Opitions|
|------|----|--------|
|user-id|integer|null: false|
|product_id|integer|null:false|
|number|integer|null:false|
|price_sum|integer|null:false|
|fee_type|string|null:false|

### asociation
has_one : user
has_many : products


## productsテーブル
|Column|Type|Opitions|
|------|----|--------|
|id|integer|null:false|
|name|sritng|null: false|
|body|text|
|price|integer|null:false|
|coler|string|null:false|
|size|string|null:false|
|brand|string|

### asociation
belongs_to : cart
belongs_to : shop
has_many : images

## imagesテーブル
|Column|Type|Opitions|
|------|----|--------|
|image|string|null:false|
|product_id|integer|null:false|

### asociation
belongs_to : product

## shopsテーブル
|Column|Type|Opitions|
|------|----|--------|
|id|integer|null: false|
|shopname|string|null:false|

### association
has_many : products
