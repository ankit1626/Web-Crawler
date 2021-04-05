import org.jsoup.Jsoup; 
import org.jsoup.nodes.*;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
public class CromaCrawler 
{
   
    private String url="";
    private Document doc;
    private Elements Images;
    private Document[] docs;
    private Elements title;
    private int pages=0;
    
    public boolean connect()
    {
        boolean flag=true;
        try
        {
            
        }
        catch(Exception e)
        {
            flag=false;
        }
        return flag;
    }
    public void setproduct(int x,String y)
    {
        
        url="http://127.0.0.1/Amazon/page/"+x+"/?s="+y+"&product_cat=0&post_type=product";
        
    }
    public Elements collectImages()
    {
       try
       {
        doc = Jsoup.connect(url).maxBodySize(0).timeout(0).get();
        Images=doc.getElementsByClass("primary_image");
        }
       catch(Exception e)
       {
           System.out.println(e);
       }
       return Images;
    }
    public Elements collectTitle()
    {
         try
       {
        doc = Jsoup.connect(url).maxBodySize(0).timeout(0).get();
        title=doc.getElementsByClass("product-title");
        }
       catch(Exception e)
       {
           System.out.println(e);
       }
       return title;
    }
    public Elements collectPrices()
    {
         try
       {
        doc = Jsoup.connect(url).maxBodySize(0).timeout(0).get();
        title=doc.getElementsByTag("ins");
        }
       catch(Exception e)
       {
           System.out.println(e);
       }
       return title;
    }
    public int sizeofelements()
    {
        return Images.size();
    }
    public int pagenumbers()
    {
        
       try
       {
        doc = Jsoup.connect(url).maxBodySize(0).timeout(0).get();
        if(doc.getElementsByClass("page-numbers")!=null)
        {
            pages=doc.getElementsByClass("page-numbers").get(0).childrenSize();
        }
        }
       catch(Exception e)
       {
           System.out.println(e);
       }
       return pages;
    }

}
