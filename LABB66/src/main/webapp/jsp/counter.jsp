
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Частота слова</title>
    <style>
        h1
        {
            font-family: 'Calibri Light';
            font-size: 40px;
        }
        h5{
            font-family: 'Calibri Light';
            font-size: 20px;
            font-weight: bold;
        }
    </style>
</head>
<body>
<center><h1>Частота слова</h1>
<%
    if(request.getAttribute("count") != null){
        out.println("<h5>В данном тексте слово "+request.getAttribute("searchWord")+" встречается "+ request.getAttribute("count")+" раз </h5>");
    }
    else{
        out.println("<h5> В данном тексте нет этого слова");
    }
%>
<button onclick="location.href='index.jsp'">Назад</button>
</center>
</body>
</html>