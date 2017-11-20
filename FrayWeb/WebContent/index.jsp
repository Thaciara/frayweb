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

    <title>FrayWeb Informática</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    
    <link href="css/carousel.css" rel="stylesheet">
  </head>
<!-- NAVBAR
================================================== -->
  <body>
    <div class="navbar-wrapper">
      <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="index.html">FrayWeb Informática</a>
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


    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="imagens/informatica.jpg">
          <div class="container">
            <div class="carousel-caption">
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="imagens/produtos.png">
          <div class="container">
            <div class="carousel-caption">
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="imagens/produtos1.jpg">
          <div class="container">
            <div class="carousel-caption">
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    <!-- /.carousel -->
    
    <% if (Boolean.TRUE.equals(request.getSession().getAttribute("usuarioLogado"))) { %>
    	<h1>Usuário logado. Seja bem vindo!</h1>
    <% } else { %>
    	<h1>Efetue o login.</h1>
    <% } %>
    
    
      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">ASSISTÊNCIA TÉCNICA ESPECIALIZADA EM NOTEBOOKS <span class="text-muted"></span></h2>
          <p class="lead">Somos uma empresa especializada na área de assistência
técnica para notebooks, netbooks e ultrabooks.
Atendemos os principais fabricantes, Dell, Hp, Sony, Acer, Lg, Asus,
Lenovo, Toshiba, Cce, Ibm, Compaq, Samsung, Microboard, Lg, Positivo.</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" src="imagens/box.png">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7 col-md-push-5">
          <h2 class="featurette-heading"> <span class="text-muted">Assistência Técnica de Celular e Tablet Multi Marcas </span></h2>
          <p class="lead"> Rede Multi Assistência realiza manutenção em diversas marcas de celulares como: DL, GENESIS, NAVCITY, CCE, STI, MEU, SHARP, ONDA entre outros. Assistência Técnica especializada em celulares e tablets mais qualificada do Brasil.</p>
        </div>
        <div class="col-md-5 col-md-pull-7">
          <img class="featurette-image img-responsive center-block" src="imagens/assistenciacelulares.png">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">Adquira já a sua Impressora <span class="text-muted"></span></h2>
          <p class="lead">"Contamos com uma equipe técnica especializada, treinada diretamente pelos fabricantes. 
Buscando aperfeiçoamento sempre que um novo equipamento é lançado."</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" src="imagens/impressoras.jpg">
        </div>
      </div>
      <hr class="featurette-divider">
      <div class="span12 "><p><img class="alignnone size-full wp-image-2208" src="imagens/cartoes1.jpg" alt="cartoes" width="1170" height="55" />
      
      <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">Voltar ao topo</a></p>
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
    </div><!-- /.container -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
