<link rel="stylesheet" href="style.css">
/* Основни настройки */
body {
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
    color: #333;
    margin: 0;
    padding: 0;
}

/* Централен контейнер за съдържанието */
.container {
    max-width: 600px;
    margin: 50px auto;
    padding: 20px;
    background: #ffffff;
    border-radius: 10px;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    text-align: center;
}

/* Заглавие */
h1 {
    color: #333;
    font-size: 2em;
    margin-bottom: 20px;
}

/* Формулярен стил */
input[type="url"] {
    width: 80%;
    max-width: 500px;
    padding: 10px;
    margin-bottom: 15px;
    font-size: 1em;
    border-radius: 5px;
    border: 1px solid #ccc;
}

input[type="submit"] {
    font-size: 16px;
    padding: 10px 20px;
    color: #fff;
    background-color: #007bff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}

/* Стил за съкратения URL */
.shortened-url {
    font-size: 1.1em;
    color: #007bff;
    margin-top: 10px;
    text-decoration: none;
    display: inline-block;
}

/* Стил за QR кода */
.qr-code img {
    margin-top: 10px;
    border: 2px solid #ddd;
    padding: 5px;
    border-radius: 8px;
}

/* Бутон за връщане към Home */
.home-button {
    font-size: 16px;
    padding: 10px 20px;
    color: #fff;
    background-color: #007bff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    text-decoration: none;
    display: inline-block;
    margin-top: 10px;
    transition: background-color 0.3s ease;
}

.home-button:hover {
    background-color: #0056b3;
}

/* Анимации */
@keyframes fadeIn {
    from {
        opacity: 0;
        transform: translateY(-10px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

/* Анимация за съдържанието */
.container {
    animation: fadeIn 0.8s ease-in-out;
}
