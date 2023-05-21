<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Поиск слова</title>
    <style>
        h1
        {
            font-family: 'Calibri Light';
            font-size: 40px;
        }
        label{
            font-family: 'Calibri Light';
            font-size: 20px;
            font-weight: bold;
        }
    </style>
</head>
<body>
<center><h1> Поиск и определение частоты встречаемости слова.</h1>
<form method="post" action="counter">
    <label for="wordForSearch">Введите слово для поиска:</label>
    <input type="text" id="wordForSearch" name="wordForSearch" required>
    <button type="submit">Показать результат</button>
</center>
</form>
</body>
</html>
