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
  List<Product> products = new ArrayList<>();
  products.add(new Product(1, "사과", 1000, "../img/common/1.jpg"));
  products.add(new Product(2, "바나나", 1200, "../img/common/2.jpg"));
  products.add(new Product(3, "딸기", 1500, "../img/common/3.jpg"));
%>
<!DOCTYPE html>
<html>
<head>
  <title>상품 목록</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
  <style>
    .product-img {
      width: 200px;
      height: 200px;
      object-fit: contain; /* 비율 유지하면서 잘림 방지 */
      margin: 0 auto;
      display: block;
    }
  </style>
</head>
<body>
<div class="container mt-5">
  <h2 class="mb-4">상품 목록</h2>
  <div class="row">
    <% for (Product p : products) { %>
    <div class="col-md-4">
      <div class="card mb-4">
        <img src="../img/<%=p.getImage()%>" class="product-img mt-3" alt="<%=p.getName()%>">
        <div class="card-body text-center">
          <h5 class="card-title"><%=p.getName()%></h5>
          <p class="card-text"><%=p.getPrice()%> 원</p>
          <a href="<%=request.getContextPath()%>/CartServlet?action=add&id=<%=p.getId()%>" class="btn btn-primary">장바구니 담기</a>
        </div>
      </div>
    </div>
    <% } %>
  </div>
  <div class="text-center">
    <a href="cart.jsp" class="btn btn-success">장바구니 보기</a>
  </div>
</div>
</body>
</html>
