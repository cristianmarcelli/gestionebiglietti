<!doctype html>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="it.prova.gestionebiglietti.model.Biglietto"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html lang="it" class="h-100" >
	 <head>
	 
	 	<!-- Common imports in pages -->
	 	<jsp:include page="../header.jsp" />
	   
	   <title>Elimina Elemento</title>
	 </head>
	   <body class="d-flex flex-column h-100">
	   
	   		<!-- Fixed navbar -->
	   		<jsp:include page="../navbar.jsp"></jsp:include>
	    
			
			<!-- Begin page content -->
			<main class="flex-shrink-0">
			  <div class="container">
			  
			  		<div class='card'>
					    <div class='card-header'>
					        <h5>Elimina biglietto</h5>
					    </div>
					     <% Biglietto bigliettoInPagina = (Biglietto)request.getAttribute("biglietto_eliminare_attr"); %>
					    
					
					    <div class='card-body'>
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Provenienza</dt>
							  <dd class="col-sm-9"><%=bigliettoInPagina.getProvenienza() %></dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Destinazione:</dt>
							  <dd class="col-sm-9"><%=bigliettoInPagina.getDestinazione() %></dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Prezzo:</dt>
							  <dd class="col-sm-9"><%=bigliettoInPagina.getPrezzo() %></dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Data:</dt>
							  <dd class="col-sm-9"><%=bigliettoInPagina.getData()!=null? new SimpleDateFormat("dd/MM/yyyy").format(bigliettoInPagina.getData()):"N.D."  %></dd>
					    	</dl>
					
					    	
					    </div>
					    
					    <div class='card-footer'>
					        
					        <form method="post" action="ExecuteDeleteBigliettoServlet">
								<input type="hidden" name="idBiglietto" value="<%= bigliettoInPagina.getId() %>"> 
						        <a href="ExecuteListBigliettiServlet" class='btn btn-outline-secondary' style='width:80px'>
					           		 <i class='fa fa-chevron-left'></i> Back
					        	</a>
					        	
						        <button type="submit" name="deleteSubmit" value="deleteSubmit" id="deleteSubmit" class="btn btn-primary">Conferma</button>
						        
					        </form>
					        
					    </div>
					<!-- end card -->
					</div>	
			  
			    
			  <!-- end container -->  
			  </div>
			  
			</main>
			
			<!-- Footer -->
			<jsp:include page="../footer.jsp" />
	  </body>
</html>