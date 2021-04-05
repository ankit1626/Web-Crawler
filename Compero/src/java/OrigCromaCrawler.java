import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.jsoup.Jsoup; 
import org.jsoup.nodes.*;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class OrigCromaCrawler {
    private Elements imgs;
    private Elements title;
    private Elements price;
    private int pages;
    private Document doc;
    private String url="";
    public void setproduct(int x,String y)
    {
        
        url="http://127.0.0.1/Croma/index.php/page/"+x+"/?s="+y+"&post_type=product";
        
    }
    public Elements getimgs()
    {
        try 
        {
            doc=Jsoup.connect(url).maxBodySize(0).timeout(0).get();
            imgs=doc.getElementsByClass("attachment-woocommerce_thumbnail");
            imgs.removeAttr("class");
       
        } 
        catch (IOException ex) 
        {
            Logger.getLogger(OrigCromaCrawler.class.getName()).log(Level.SEVERE, null, ex);
        }
        return imgs;
    }
    public Elements gettitle()
    {
        Elements x=null;
        try
        {
            doc=Jsoup.connect(url).maxBodySize(0).timeout(0).get();
            title=doc.getElementsByClass("woocommerce-loop-product__title");
            title.removeAttr("class");
            x=doc.getElementsByClass("woocommerce-LoopProduct-link woocommerce-loop-product__link");
            x.removeAttr("class");
            for(int i=0;i<x.size();i++)
            {
                x.get(i).html(title.get(i).html());
            }
        }
        catch(Exception e)
        {
            
        }
        return x;
    }
    public Elements getprice()
    {
        try
        {
            doc=Jsoup.connect(url).maxBodySize(0).timeout(0).get();
            price=doc.getElementsByTag("ins");
            price.removeAttr("class");
        }
        catch(Exception e)
        {
            
        }
        return price;
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
