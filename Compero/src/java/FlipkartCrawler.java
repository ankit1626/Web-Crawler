import org.jsoup.Jsoup; 
import org.jsoup.nodes.*;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
public class FlipkartCrawler 
{
    private String url="";
    private Document doc;
    private Elements Images;
    private Elements title;
    private Elements prices;
    private int pages=0;    
    public void setproduct(int x,String y)
    {
        
        url="http://127.0.0.1/Flipkart/index.php/page/"+x+"/?s="+y+"&post_type=product";
        
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
        prices=doc.getElementsByTag("ins");
        }
       catch(Exception e)
       {
           System.out.println(e);
       }
       return prices;
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
