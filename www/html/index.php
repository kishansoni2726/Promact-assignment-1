<!DOCTYPE html>  
     <head>  
      <title>PHP mysqli!</title>
     </head>   

     <body>  
      <h1>Hello World!</h1>  
      <p><?php 
        $mysqli = new mysqli("mysql", "myuser", "password", "mydb"); 
            if ($mysqli->connect_error) { 
                exit('Error connecting to database'); 
            } 
            echo 'Successfully connected to MySQL database!'; 
        ?>
    </body>
</html> 
