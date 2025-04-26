<%@ page import="dao.ProductoDAO,modelo.Producto,java.util.List" %>
<%
    ProductoDAO dao = new ProductoDAO();
    List<Producto> productos = dao.listarProductos();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Lista de Productos</title>
</head>
<body>
    <h1>Lista de Productos</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Precio</th>
            <th>Cantidad</th>
        </tr>
        <%
            for (Producto p : productos) {
        %>
        <tr>
            <td><%= p.getId() %></td>
            <td><%= p.getNombre() %></td>
            <td><%= p.getPrecio() %></td>
            <td><%= p.getCantidad() %></td>
        </tr>
        <%
            }
        %>
    </table>
    <br>
    <a href="index.html">Agregar otro producto</a>
</body>
</html>