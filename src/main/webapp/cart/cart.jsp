<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 25. 8. 28.
  Time: 오전 10:41
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*, com.prisma77.dto.Product" %>
<%
  //HttpSession session = request.getSession();
  List<Product> cart = (List<Product>) session.getAttribute("cart");
  if (cart == null) cart = new ArrayList<>();
%>
<!DOCTYPE html>
<html>
<head>
  <title>장바구니</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
  <h2>🛒 장바구니</h2>
  <% if (cart.isEmpty()) { %>
  <p>장바구니가 비어 있습니다.</p>
  <% } else { %>
  <table class="table table-bordered">
    <thead>
    <tr>
      <th>상품명</th>
      <th>가격</th>
      <th>삭제</th>
    </tr>
    </thead>
    <tbody>
    <% for (Product p : cart) { %>
    <tr>
      <td><%=p.getName()%></td>
      <td><%=p.getPrice()%> 원</td>
      <td><a href="../CartServlet?action=remove&id=<%=p.getId()%>" class="btn btn-danger">삭제</a></td>
    </tr>
    <% } %>
    </tbody>
  </table>
  <% } %>
  <a href="productList.jsp" class="btn btn-secondary">← 상품 목록</a>
</div>
</body>
</html>
