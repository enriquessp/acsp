<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="../../includes/header.jsp"/>

	<table class="table table-striped table-hover">
        <thead>
          	<th>Data de agendamento</th>
			<th>Nome do Aluno</th>
			<th>Instrutor</th>
			<th>Aeronave</th>
			<th></th>
        </thead>
        <tbody>
		<c:forEach var="agenda" items="${listaDeAgendas}">
			<tr id="<c:out value="${agenda.id}"/>">
            	<td><fmt:formatDate value="${agenda.dataReserva}" pattern="dd/MM/yyyy" /></td> 
				<td>${agenda.aluno.nome }</td>
				<td>${agenda.instrutor.nome }</td>
				<td>${agenda.aeronave.modelo }</td>
                <td>
                    <div class="btn-group btn-custom-block">
                        <span class="icon-edit icon-2x editaAction"></span>
                        <span class="icon-remove-circle icon-2x apagaAction"></span>
                    </div>
                </td>
			</tr>
		</c:forEach>
        </tbody>
	</table>

<!-- Button trigger modal -->
<a id="agendaModalBtn" data-toggle="modal" href="#myModal" class="btn btn-primary btn-lg">Novo Agendamento</a>

<c:import url="formulario.jsp"/>

<c:import url="../../includes/footer.jsp"/>