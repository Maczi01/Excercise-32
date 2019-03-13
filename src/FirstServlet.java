import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/bmi")
public class FirstServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");

        String waga = request.getParameter("waga");
        String wzrost = request.getParameter("wzrost");

        PrintWriter out = response.getWriter();
        out.print("Dla osoby o wadze " + waga + " kg" + " i wzroscie " + wzrost + " cm, współczynnik BMI wynosi "
                + wspolczynnikBMI(waga,wzrost)+ " jest to: " + diagnozaBMI(waga,wzrost));
    }

    private String diagnozaBMI(String wagaString, String wzrostString) throws IOException{

        double bmi = wspolczynnikBMI(wagaString, wzrostString);

        if(bmi<=18.5){
            return "Niedowaga !";
        }if(bmi>18.5 && bmi <=24.9){
            return "Waga prawidłowa !";
        }if(bmi>24.9 && bmi <=30){
            return "Nadwaga !";
        }
        return "Otyłość";
    }

    private double wspolczynnikBMI(String wagaString, String wzrostString){
        int waga = Integer.parseInt(wagaString);
        int wzrost = Integer.parseInt(wzrostString);
        double bmi =waga/(Math.pow(wzrost,2));

        return bmi;
    }

}
