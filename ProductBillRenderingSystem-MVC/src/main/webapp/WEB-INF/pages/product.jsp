<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <title>Product Bill</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f9;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 50%;
            margin: 50px auto;
            background: white;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            color: #2c3e50;
        }

        .row {
            display: flex;
            justify-content: space-between;
            padding: 8px 0;
            border-bottom: 1px solid #eee;
        }

        .label {
            font-weight: bold;
            color: #555;
        }

        .value {
            color: #222;
        }

        .highlight {
            background: #eafaf1;
            padding: 10px;
            border-radius: 8px;
            font-size: 18px;
            font-weight: bold;
            text-align: center;
            margin-top: 15px;
            color: #1e8449;
        }

        .header {
            text-align: center;
            margin-bottom: 20px;
            color: #2980b9;
        }
    </style>

</head>

<body>

<div class="container">

    <h2 class="header">Product Bill Summary</h2>

    <div class="row">
        <span class="label">Product ID</span>
        <span class="value">${product.pid}</span>
    </div>

    <div class="row">
        <span class="label">Product Name</span>
        <span class="value">${product.pname}</span>
    </div>

    <div class="row">
        <span class="label">Quantity</span>
        <span class="value">${product.qunty}</span>
    </div>

    <div class="row">
        <span class="label">Price</span>
        <span class="value">${product.price}</span>
    </div>

    <hr>

    <div class="row">
        <span class="label">Subtotal</span>
        <span class="value">${subTotal}</span>
    </div>

    <div class="row">
        <span class="label">GST (18%)</span>
        <span class="value">${GST}</span>
    </div>

    <div class="row">
        <span class="label">Discount</span>
        <span class="value">${Discount}</span>
    </div>

    <div class="highlight">
        Final Bill:  ${FinalBill}
    </div>

</div>

</body>
</html>