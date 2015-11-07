<!DOCTYPE html>
<html>
<head>
<title>Calcula IMC</title>
</head>
<body>
  <h1>Calcula IMC</h1>
  <form>
    Nome: <input type="text" name="nome">
    <br>
    <br>
    Altura: <input type="text" name="Altura">
    <br>
    <br>
    Peso: <input type="text" name="Peso">
    <br>
    <br>
    <input type="submit">
    <br>
    <br>
  </form>
  <%
    String paramPeso = request.getParameter("Peso");
    paramPeso = paramPeso == null ? "0" : paramPeso;
    double peso = Double.parseDouble(paramPeso);
    String paramAltura = request.getParameter("Altura");
    paramAltura = paramAltura == null ? "0" : paramAltura;
    double altura = Double.parseDouble(paramAltura);
    double resultado = peso/(altura*altura);
  %>
  Resultado: <%
  if(resultado<=19){
    out.print("Abaixo do Peso");}
  if(resultado>19 && resultado<=26){
    out.print("Normal");}
  if(resultado>26 && resultado<=31){
    out.print("Acima do Peso");}
  if(resultado>31){
    out.print("Obeso");}
  %>
  <br>
  IMC:
  <%
  out.print(resultado);
  %>
</body>
</html>