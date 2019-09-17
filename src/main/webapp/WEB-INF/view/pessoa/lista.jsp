<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>

<tags:pageTemplate titulo="Gerenciamento Educacional!">
		
	<h2>Lista de Pessoas</h2>
	
	<table class="table table-hover table-condensed table-striped table-borderless table-sm">
		<thead class="thead-light">
			<tr class="text-center">
				<th scope="col">#</th>
				<th scope="col">C�digo</th>
				<th scope="col">Nome</th>
				<th scope="col">Idade</th>
				<th scope="col">Endere�o</th>
				<th scope="col">A��es</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${pessoa}" var="p" varStatus="status">
				<tr class="text-center">
					<th scope="row">${status.index +1}</th>
					<td>${p.id}</td>
					<td>${p.nome}</td>
					<td>${p.idade}</td>
					<td>${p.endereco}</td>
					<td>
						<a href="/siseduca/pessoas/lista/${p.id}">
							<i class="fas fa-pen"></i>
						</a>
						<a href="/siseduca/pessoas/delete/${p.id}">
							<i class="fas fa-trash-alt"></i>
						</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</tags:pageTemplate>