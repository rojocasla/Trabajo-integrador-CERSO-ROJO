<%-- 
    Document   : form-producto
    Created on : 05/10/2023, 18:59:11
    Author     : estudiante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario Productos</title>
        <style>
            body {
                font-family: "Lato", sans-serif;
                background-color: #222; /* Cambio del color de fondo a un tono oscuro */
                margin: 0;
                padding: 0;
                display: flex;
                flex-direction: column;
                align-items: center;
                height: 100vh;
            }

            h3 {
                font-size: 24px;
                background-color: #A43152;
                color: white;
                padding: 10px 0;
                width: 100%;
                text-align: center;
                margin: 0;
            }

            form {
                background-color: #222;
                width: 400px;
                border-radius: 8px;
                padding: 20px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                margin: 20px;
                border: 1px solid #555555;
                margin-bottom: 20px;
                margin-left: 20px;
                margin-right: 20px;
            }

            form p {
                color: white;
                margin-bottom: 15px;
                margin-right: 20px;
            }

            input[type="text"] {
                width: 100%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                font-size: 16px;
                outline: none;
            }

            input[type="hidden"] {
                display: none;
            }

            input[type="submit"] {
                display: block;
                width: 100%;
                padding: 15px 0;
                border: none;
                background-color: #A43152;
                color: white;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
                margin-top: 20px;
            }

            input[type="submit"]:hover {
                background-color: #FF6666;
                margin-left: auto;
                margin-right: auto;
            }

        </style>
    </head>
    <body>
        <h3>Formulario producto</h3>

        <form action="ProductoController" method="post">
            <p>
                Marca: 
                <input type="text" name="marca" value="<c:out value="${producto.marca}"></c:out>" required>
                </p>

                <p>
                    Nombre:
                    <input type="text" name="nombre" value="<c:out value="${producto.nombre}"></c:out>" required>
                </p>

                <p>
                    Precio:
                    <input type="text" name="precio" value="<c:out value="${producto.precio}"></c:out>" required>
                </p>

                <p>
                    Stock:
                    <input type="text" name="stock" value="<c:out value="${producto.stock}"></c:out>" required>
                </p>

                <p>
                    Vendidos:
                    <input type="text" name="vendidos" value="<c:out value="${producto.vendidos}"></c:out>" required>
                </p>

                <p>

                    <input type="hidden" name="id" value="<c:out value="${producto.id}"></c:out>">    
                <input type="submit" value="Guardar">
            </p>

        </form>


    </body>
</html>
