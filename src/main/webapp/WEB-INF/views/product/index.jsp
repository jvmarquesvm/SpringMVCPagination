<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Paginação com Spring Data JPA no SpringMVC</title>
	</head>
	<body>
		<div class="container" style="margin-top: 20px;">
			<jsp:useBean id="pagedListHolder" scope="request" type="org.springframework.beans.support.PagedListHolder" />
			<c:url value="/product" var="pagedLink">
				<c:param name="p" value="~"/>
			</c:url>
			<tg:paging pagedListHolder="${pagedListHolder }" pagedLink="${pagedLink }"/>
			<table class="table table-bordered">
				<tr>
					<th width="20px">Id</th>
					<th>Name</th>
					<th>Price</th>
					<th>Quantidade</th>
					<th>Descricao</th>
					<th>Status</th>
				</tr>
				<c:forEach items="${pagedListHolder.pageList }" var="item" >
					<tr>
						<td>${item.id }</td>
						<td>${item.name }</td>
						<td>${item.price }</td>
						<td>${item.quantidade }</td>
						<td>${item.descricao }</td>
						<td>${item.status }</td>
					</tr>
				</c:forEach>
			</table>
			<tg:paging pagedListHolder="${pagedListHolder }" pagedLink="${pagedLink }" />
		</div>
	</body>
</html>
