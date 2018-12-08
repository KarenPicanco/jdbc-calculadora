<%-- 
    Document   : calculadora
    Created on : 08/12/2018, 00:36:16
    Author     : Diozefe Morais | Karen Picanço
--%>

<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Caululadora</title>
        <link rel="stylesheet" type="text/css" href="/WEB-INF/estilos/estilo.css">
    </head>
    <body>
        <h1> Calculadora</h1>
            <form method="get" action="TestCalcula">
                
                <div class="caixa-numero"><label for="n1">Número 1:</label>
			<!-- Campo n1 -->
			<input id="n1" type="text" name="n1"><br/>
		</div>
		<div class="caixa-numero">	
                    <label for="n2">Número 2:</label>
			<!-- Campo n2 -->
                        <input id="n2" type="text" name="n2">
                </div><br>
                <select name="opcao">
                    <option value="0">( + )</option>
                    <option value="1">( - )</option>
                    <option value="2">( * )</option>
                    <option value="3">( / )</option>
                </select>
		<div>
                    <button class="botao" id="calcular" type="submit">Calcular</button>
		</div>
            </form>
            <div class="caixa-numero resultado">
                        
			
            </div>
            
</body>

<script type="text/javascript">
	var n1 = document.querySelector('#n1');
	var n2 = document.querySelector('#n2');
        var tag_resultado = document.querySelector('#resultado');
	document.querySelectorAll('input').forEach(function(input_html){
		input_html.addEventListener('mousemove', function(evento){
			var entrada_usuario = parseInt(evento.target.value);
			if (isNaN(entrada_usuario) || !isFinite(entrada_usuario)) {
				evento.target.style.background= 'aqua';
			}
		});
		input_html.addEventListener('mouseleave', function(evento){
			var entrada_usuario = parseInt(evento.target.value);
			if (isNaN(entrada_usuario) || !isFinite(entrada_usuario)) {
				evento.target.style.background = '#eee';
			}
		});
	});
	document.querySelector('#calcular').addEventListener('click',function(){
		var analise = parseInt(n1.value) + parseInt(n2.value);
				if (isNaN(analise) || !isFinite(analise)){
				alert("O valor Não é Valido! \n Tente Outro Valor");
				return action = "DadosServlet";
				}
	});
  </script>
</html>
