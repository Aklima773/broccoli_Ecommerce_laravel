<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

<h1>Order Details</h1>
Customer Name : <h3>{{$order->name}}</h3>
Customer Email : <h3>{{$order->email}}</h3>
Customer ID : <h3>{{$order->user_id}}</h3>
Customer Contact : <h3>{{$order->phone}}</h3>
Customer Address : <h3>{{$order->address}}</h3>
Product Title : <h3>{{$order->product_title}}</h3>
Product Quantity : <h3>{{$order->product_quantity}}</h3>
Product Price : <h3>{{$order->product_price}}</h3>
Product ID : <h3>{{$order->product_id}}</h3>
payment_status : <h3>{{$order->payment_status}}</h3>
<br>
<img width="250px" height="450px"  src="product/{{$order->product_image}}">



</body>
</html>
