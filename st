{% comment %} Minimal Shopify Theme: White Space & Luxury {% endcomment %}

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ shop.name }} - Minimal Luxury</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;500&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Montserrat', sans-serif;
            font-weight: 300;
            background-color: #fff;
            color: #222;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        header {
            padding: 40px 20px;
            text-align: center;
            border-bottom: 1px solid #eaeaea;
        }

        header h1 {
            font-weight: 500;
            letter-spacing: 2px;
        }

        nav ul {
            list-style: none;
            padding: 0;
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        nav ul li {
            text-transform: uppercase;
            font-weight: 300;
            font-size: 14px;
        }

        nav ul li a {
            text-decoration: none;
            color: #222;
            transition: color 0.3s ease;
        }

        nav ul li a:hover {
            color: #999;
        }

        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 40px;
            margin: 40px 0;
        }

        .product {
            text-align: center;
        }

        .product img {
            max-width: 100%;
            height: auto;
            margin-bottom: 15px;
            transition: transform 0.3s ease;
        }

        .product img:hover {
            transform: scale(1.05);
        }

        .product-title {
            font-weight: 500;
            margin-bottom: 10px;
        }

        .product-price {
            color: #777;
        }

        footer {
            padding: 20px;
            text-align: center;
            border-top: 1px solid #eaeaea;
            font-size: 14px;
            color: #999;
        }
    </style>
</head>
<body>
    <header>
        <h1>{{ shop.name }}</h1>
        <nav>
            <ul>
                <li><a href="/">Home</a></li>
                <li><a href="/collections/all">Shop</a></li>
                <li><a href="/pages/about">About Us</a></li>
                <li><a href="/pages/contact">Contact</a></li>
            </ul>
        </nav>
    </header>

    <div class="container">
        <div class="product-grid">
            {% for product in collections.all.products %}
            <div class="product">
                <a href="{{ product.url }}">
                    <img src="{{ product.featured_image | img_url: '600x600' }}" alt="{{ product.title }}">
                    <div class="product-title">{{ product.title }}</div>
                    <div class="product-price">{{ product.price | money }}</div>
                </a>
            </div>
            {% endfor %}
        </div>
    </div>

    <footer>
        &copy; {{ shop.name }} {{ "now" | date: "%Y" }}. All rights reserved.
    </footer>
</body>
</html>
