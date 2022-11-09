<%@page import="java.util.ArrayList" %>
<%@page import="com.emergentes.modelo.Persona"%>
<%
  ArrayList<Persona> lista = (ArrayList<Persona>) session.getAttribute("listaper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="2">
            <thead>
                <tr>
                    <th>SEGUNDO PARCIAL TEM-742</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                       Nombre: Marcelo Fernando Puña Tarqui 
                       <br>
                       Carnet:8281212
                    </td>
                </tr>
            </tbody>
        </table>

        <h1>Productos</h1>
        <a href="MainController?op=nuevo">Nuevo Producto</a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th>Editar</th>
                <th>Eliminar</th>
            </tr>
            <%
            if (lista !=null){
                for(Persona item:lista){    
            %>
            <tr>
                <td><%=item.getId()%></td>
                <td><%=item.getDescripcion()%></td>
                <td><%=item.getCantidad()%></td>
                 <td><%=item.getPrecio()%></td>
                <td><%=item.getCategoria()%></td>
               
                <td><a href="MainController?op=editar&id=<%=item.getId()%>">Editar</a></td>
                <td><a href="MainController?op=eliminar&id=<%=item.getId()%>"
                       onclick='return confirm ("Esta seguro de eliminar el registro ?");'>Eliminar </a></td>
            </tr>
            <%
                }
              }
             %>
        </table>
    </body>
</html>
