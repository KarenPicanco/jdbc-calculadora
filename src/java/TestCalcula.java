/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jdk.nashorn.internal.runtime.JSType;
import org.eclipse.jdt.internal.compiler.ast.NullAnnotationMatching;

/**
 *
 * @author Diozefe Morais
 */
@WebServlet(urlPatterns = {"/TestCalcula"})
public class TestCalcula extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          response.setContentType("text/html");
        try (PrintWriter out = response.getWriter()) {
           String num1 = request.getParameter("n1");
           String num2 = request.getParameter("n2");
           String opcao = request.getParameter("opcao");
           
           int op = Integer.parseInt(opcao);// 0 = + | 1 = - | 2 = * | 3 = /
           double valor1 = Double.parseDouble(num1);
           double valor2 = Double.parseDouble(num2);
           double resultado=0;
           
           switch(op){
               case 0:
                    resultado = valor1 + valor2;
               break;
               case 1:
                    resultado = valor1 - valor2;
               break;
               case 2:
                    resultado = valor1 * valor2;
               break;
               case 3:
                    resultado = valor1 / valor2;
               break;
           }
          
           out.print("<h1>Resultado: "+resultado+"</h1>");
           out.print("<br><br> <a href='DadosServlet'>Calcular Mais</a> ");
          
           
        }
    }

}
