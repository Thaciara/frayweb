<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
     <link rel="icon" href="imagens/favicon.ico">
     <script src="js/angular.min.js"></script>
    <title>Cadastro de Clientes</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/carousel.css" rel="stylesheet">
    <script src="controller/clientesjson.js"></script>
  </head>
<!-- NAVBAR
================================================== -->
  <body>
    <div class="navbar-default">
      <div class="container-fluid">
        <nav class="navbar navbar-inverse navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#">FrayWeb Informática</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="active"><a href="index.jsp">Home</a></li>
                <li><a href="sobre.jsp">Quem Somos</a></li>
                <li><a href="servicos.jsp">Serviços</a></li>
                <li><a href="contato.jsp">Contato</a></li>
                <li><a href="clientes.jsp">Entrar</a></li>
                  </ul>
                  </li>
            </div>
          </div>
        </nav>
      </div>
    </div>
<div>

<% if (Boolean.TRUE.equals(request.getSession().getAttribute("usuarioLogado"))) { %>
<% }else { %>
  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#entrar" aria-controls="entrar" role="tab" data-toggle="tab">Entrar</a></li>
    <li role="presentation"><a href="#cadastro" aria-controls="cadastro" role="tab" data-toggle="tab">Registrar</a></li>
  </ul>
  <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="entrar">
<h1 align="center">Login</h1>
<form class="form-horizontal" action="login">
  <div align="center" class="form-group">
  <label for="email" class="col-sm-2 control-label">Email*:</label>
    <div class="col-sm-9">
    <input type="email" required class="form-control" id="email" placeholder="Email" name="email">
  </div>
  </div>
  <div align="center" class="form-group">
  <label for="senha" class="col-sm-2 control-label">Senha*:</label>
  <div class="col-sm-9">
    <input type="password" required class="form-control" id="senha" placeholder="Senha" name="senha">
  </div>
  </div>
<div align="center" class="form-group">
        <input type="submit" value="ENTRAR">
  </div>
</form>
    </div>
    <div role="tabpanel" class="tab-pane" id="cadastro">
<h1 align="center">Cadastro de Clientes</h1>
<form class="form-horizontal" action="clientes" method="POST">
  <div class="form-group">
  <label for="nome" class="col-sm-2 control-label">Nome*:</label>
  <div class="col-sm-9">
    <input type="text" required class="form-control" id="nome"  name="nome" placeholder="Nome">
  </div>
  </div>
  <div class="form-group">
  <label for="email" class="col-sm-2 control-label">Email*:</label>
    <div class="col-sm-9">
    <input type="email" required class="form-control" id="email" name="email" placeholder="Email">
  </div>
  </div>
  <div class="form-group">
  <label for="telefone" class="col-sm-2 control-label">Senha*:</label>
  <div class="col-sm-9">
    <input type="password" required class="form-control" id="senha" name="senha" placeholder="Senha">
  </div>
  </div>
  <div class="form-group">
  <label for="telefone" class="col-sm-2 control-label">Repita a Senha*:</label>
  <div class="col-sm-9">
    <input type="password" required class="form-control" id="repitasenha" name="repitasenha" placeholder="Senha">
  </div>
  </div>
<div align="center" class="form-group">
  <button type="submit" class="btn btn-primary">Cadastrar</button>
  </div>
</form>
    </div>
  </div>
  <% } %>
</div>
      <footer>
         <div id="footer">
					<div id="footer-meio">
						<ul class="vcard">
						<br>
						<br>
							<li><span class="fn org">Frayweb Informática</span></li>
							<li class="adr"><span class="street-address">Rua Cruz e Souza, 100  Centro</span> CEP: <span  class="postal-code">89580-000</span> 
							 <span class="locality">Fraiburgo</span>/<abbr class="region" title="Santa Catarina">SC</abbr>
							</li>
							<li><span class="tel">(49) 3246-7070</span></li>
						</ul>
					</div>
					<br>
					<br>
					<p align="center">&copy; 2008 -Todos os direitos reservados - Frayweb Informática</p>
					<br class="ie6" />	
				</div>
				
				<div id="faixa">
				</div>				
			</div>
		</div>
      </footer>
    <!-- /.container -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>