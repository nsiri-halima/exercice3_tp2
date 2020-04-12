<%@ page language="java"
contentType="text/html; charset=windows-1256"
pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML
4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Form Example</title>
</head>
<body>
  <%!  int N=10;
String couleur="";
String noir="black";
String blanc="white";

%>
<h3> Damier de  $N  lignes par $N  </h3>
<table border="2">
    <%
        for(int ligne=1; ligne<= N; ligne++  )
        {
            %>
        <tr>
            <%
          if ((ligne%2)==0) couleur=noir; else couleur=blanc;
          for (int colonne=1; colonne<=N; colonne++)
          {
              %>
          <td bgcolor="$couleur" width="30px" height="30px"></td>
          <%
          if (couleur.equals(blanc)) couleur=noir; else couleur=blanc;
          }
          }
%>
        </tr>
</table>
       
</body>
</html>
