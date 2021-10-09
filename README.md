# Web-Crawler
> This Project was made by me in second year of MCA this project got its inspiration from the Trivago Website which helps the user to compare the prices of hotels at diffrent websites similarly this project helps the users to search and compare products from various e-commerce websites at once 
To make this project i had done the following
- Created 3 demo e-commerce websites using wordpress 
- I created a various servlets in java which will crawl the 3 demo websites created above using the library *JSOUP* 
- This servlets fetched all the product images and their prices and their individual links so that the user can just directly click and go to the site from which he wants to purchase the product
- The only reason i was not able to do this on the actual e-commerce websites is because all those webpages of actual e-commerce websites were protected by robots.txt due to which the crawler was not able to crawl the pages

## To run this project
### Software Required
1. NetBeans 8.2
2. Mysql connector
3. JSOUP library
4. Xampp Server

### Steps
1. Copy and Paste folders namely Flipkart,Amazon,Croma in the htdocs folder of the Xampp server
2. Create 4 databases namely flipkart,amazon,croma,compero all after that import the sql files given in the respective folders
3. You are ready to run the project

### Below are the screenshots of the project
> This is the Home Screen
![](https://drive.google.com/uc?export=view&id=1-lfQUUAGIKByMvfa3qWAg4JeHuqayvb7)

> User first need to register himself using the registration modal
![](https://drive.google.com/uc?export=view&id=1ZRseP88yMqKotXB-Hc3Ccsp-qUxUv9Ax)

> Once you have registered Sucessfully you can see the following alertbox
![](https://drive.google.com/uc?export=view&id=17VOGbKt_x9SAwWTX5YFFU8DjHgRswmMl)

> The user need to be logged in to search for the product hence login using the login modal
![](https://drive.google.com/uc?export=view&id=1oTqTK5lqn0aoXGdjedVvvuZpyiw8jo8x)

>As you can see now the user is logged in and the link to login is changed to logout in the navbar
![](https://drive.google.com/uc?export=view&id=1pObNk0AutUdWJJSjo9zwU1YLlElzSa9G)

> After login the user can search for any product he wants for example here i am searching for samsung
![](https://drive.google.com/uc?export=view&id=17SGiFN7935wmtwGyfCvaxlvD8DC0KwDV)

> Please allow it some time to load as crawling takes time once loaded you can see all the samsung phones from all the three websites and you can compare and buy it hence the need of manually going to individual websites and checking for the product price is not required anymore.
![](https://drive.google.com/uc?export=view&id=1jyBSZOryvUEFwZo98OqCSElvPgmX8_Ao)

### Scopes for improvements
- As of now i have not used threading hence the process of crawling takes time which can be reduced by using Threads

