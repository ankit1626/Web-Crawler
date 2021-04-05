function rupeesymbol()
{
    var y=document.getElementsByClassName("woocommerce-Price-currencySymbol");
    for(var i=0;i<y.length;i++)
    {
        y[i].innerHTML="&#8377";
    }
}
function fun(abc)
{
    
    var y=document.getElementsByClassName("card");
    for(var i=0;i<y.length;i++)
    {
        y[i].hidden=false;
    }
    var x=document.getElementsByClassName("card-header");
    for(var i=0;i<x.length;i++)
    {
        if(x[i].outerText!==abc)
        {
            y[i].hidden=true;
        }
    }

}
function fx()
{
    var max=Number(document.getElementById("n2").value);
    var min=Number(document.getElementById("n1").value);
    var x=document.getElementsByTagName("bdi");
    var y=document.getElementsByClassName("card");
    for(var i=0;i<x.length;i++)
    {
        var b=x[i].outerText.slice(1).replace(",","");
        if(Number(b)>max)
        {
            y[i].hidden=true;
        }
        if(min>Number(b))
        {
            y[i].hidden=true;
        }
    }
    
}


function fun2()
{
    var y=document.getElementsByClassName("card");
    for(var i=0;i<y.length;i++)
    {
        y[i].hidden=false;
    }
}
