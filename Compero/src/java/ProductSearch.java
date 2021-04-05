import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jsoup.Jsoup; 
import org.jsoup.nodes.*;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
public class ProductSearch extends HttpServlet 
{                        
    
    Elements[] imgs=new Elements[3];
    Elements[] title=new Elements[3];
    Elements[] price=new Elements[3];
    

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html;charset=UTF-8");
        try 
        {
            boolean logflag=false;
            Cookie[] c=request.getCookies();
            if(c==null)
            {
                out.println("<script>alert('please login first');window.location.href='index.html'</script>");
            }
            else
            {
            for(Cookie x:c)
            {
                if(x.getName().equals("Compero") && x.getValue().equals("true"))
                {
                    logflag=true;
                    break;
                }
            }
            }
            if(!logflag)
            {
                out.println("<script>alert('please login first');window.location.href='index.html'</script>");
            }
            
            
            
            /*Code for Amazon*/
            try
            {
            CromaCrawler c1=new CromaCrawler();
            c1.setproduct(1, request.getParameter("pname"));
            if(c1.pagenumbers()>0)
            {
                
                for(int i=1;i<c1.pagenumbers();i++)
                {
                    c1.setproduct(i,request.getParameter("pname"));
                    imgs[0].addAll(c1.collectImages());
                    title[0].addAll(c1.collectTitle());
                    price[0].addAll(c1.collectPrices());
                }
            }
            else
            {
               imgs[0]=c1.collectImages();
               title[0]=c1.collectTitle();
               price[0]=c1.collectPrices(); 
            }
            
            out.println("<!doctype html><html lang='en'><head><title>Compero</title><link rel='icon' href='Images/favicon.ico' type='image/x-icon'><script src='http://localhost:8080/Compero/index.js'></script><meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'><link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css' integrity='sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm' crossorigin='anonymous'></head><body onload='rupeesymbol()'><div class='row'><div class='col-md-8'><div class='container'><div class='text-center'><div class='btn-group' role='group' aria-label='Basic example'><button type='button' class='btn btn-secondary' onclick='fun(\"Amazon\");'>Amazon</button><button type='button' class='btn btn-secondary' onclick='fun(\"Flipkart\");'>Flipkart</button><button type='button' class='btn btn-secondary' onclick='fun(\"Croma\");'>Croma</button><button type='button' class='btn btn-secondary' onclick='fun2()'>ShowAll</button></div></div>");
            for(int i=0;i<imgs[0].size();i++)
            {
                out.println("<div class='card h-25 mx-4 my-1 w-25' style='display:inline-block;'><div class='card-header text-center bg-dark text-white'>Amazon</div><img class='card-img-top p-1' src='"+imgs[0].get(i).attr("src")+"' Height='300px' Width='200px'></img><div class='text-center'>"+title[0].get(i)+"</div><p class='text-center' name='pr'>"+price[0].get(i)+"</p><div class='card-body'></div></div>");
            }
            
            imgs[0].clear();
            title[0].clear();
            price[0].clear();
            }
            catch(Exception e)
            {
                out.println("Amazon"+e);
            }
            /*Code for croma*/
            try
            {
            OrigCromaCrawler c2=new OrigCromaCrawler();
            c2.setproduct(1, request.getParameter("pname"));           
            if(c2.pagenumbers()>0)
            {
                
                for(int i=1;i<c2.pagenumbers();i++)
                {
                    c2.setproduct(i,request.getParameter("pname"));
                    imgs[2].addAll(c2.getimgs());
                    title[2].addAll(c2.gettitle());
                    price[2].addAll(c2.getprice());
                }
            }
            else
            {
               imgs[2]=c2.getimgs();
               title[2]=c2.gettitle();
               price[2]=c2.getprice();
            }
            
            for(int i=0;i<imgs[2].size();i++)
            {
                out.println("<div class='card h-25 mx-4 my-1 w-25' style='display:inline-block;'><div class='card-header text-center bg-dark text-white'>Croma</div><img class='card-img-top p-1' src='"+imgs[2].get(i).attr("src")+"' Height='300px' Width='200px'></img><div class='text-center'>"+title[2].get(i)+"</div><p class='text-center' name='pr'>"+price[2].get(i)+"</p><div class='card-body'></div></div>");
            }
            imgs[2].clear();
            title[2].clear();
            price[2].clear();
            }
            catch(Exception e)
            {
                out.println("Croma"+e);
            }
            /*Code for flipkart*/
            try
            {
            FlipkartCrawler c3=new FlipkartCrawler();
            c3.setproduct(1, request.getParameter("pname"));
            if(c3.pagenumbers()>0)
            {
                
                for(int i=1;i<c3.pagenumbers();i++)
                {
                    c3.setproduct(i,request.getParameter("pname"));
                    imgs[1].addAll(c3.collectImages());
                    title[1].addAll(c3.collectTitle());
                    price[1].addAll(c3.collectPrices());
                }
            }
            else
            {
               imgs[1]=c3.collectImages();
               title[1]=c3.collectTitle();
               price[1]=c3.collectPrices(); 
            }
            
            for(int i=0;i<imgs[1].size();i++)
            {
                out.println("<div class='card h-25 mx-4 my-1 w-25' style='display:inline-block;'><div class='card-header text-center bg-dark text-white'>Flipkart</div><img class='card-img-top p-1' src='"+imgs[1].get(i).attr("src")+"' Height='300px' Width='200px'></img><div class='text-center'>"+title[1].get(i)+"</div><p class='text-center' name='pr'>"+price[1].get(i)+"</p><div class='card-body'></div></div>");
            }
            
            imgs[1].clear();
            title[1].clear();
            price[1].clear();
            out.println("</div></div><div class='col-md-4'><div class='w-75 my-5'><div class='card-header text-center'>Price Filter</div><div class='card-body'><div class='row'><div class='col-md-6'><input type='text' id='n1' placeholder='min' class='form-control'/></div><div class='col-md-6'><input type='text' id='n2' placeholder='max' class='form-control'/></div></div><div class='text-center my-4'><button type='button' class='btn btn-primary' onclick='fx();'>Filter</button></div></div></div></div></div></div></body></html>");

            }
            catch(Exception e)
            {
                out.println("Croma"+e);
            }
           
        }
        catch(Exception e)
        {
            out.println(e);

            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
