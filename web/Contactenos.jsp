<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RAEE Buenaventura</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <link rel="shortcut icon" href="" type="image/x-icon">
        <link rel="stylesheet" href="./dist/css/normalize.css">
        <link rel="stylesheet" href="./dist/css/estilos.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
        <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
    </head>
    
    
    <body>

    <header class="hero">
        <nav class="nav container">
            <div class="nav__logo">
                <h2 class="nav__title">RAEE Buenaventura</h2>
            </div>

            <ul class="nav__link nav__link--menu">
                <li class="nav__items">
                    <a href="index.jsp" class="nav__links">
                        <div style="justify-content: center;display: flex;">
                            <i class="fas fa-home fa-2x"></i> 
                        </div>
                    Inicio
                    </a>
                </li>
                
                <li class="nav__items">
                    <a class="nav__links dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <div style="justify-content: center;display: flex;">
                            <i class="fas fa-briefcase fa-2x"></i> 
                        </div>
                    Servicios
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <li><a class="dropdown-item" href="./Servicios/Capacitacion.jsp">Capacitaciónes</a></li>
                      <li><a class="dropdown-item" href="./Servicios/Asesoria.jsp">Asesorias</a></li>
                      <li><hr class="dropdown-divider"></li>
                      <li><a class="dropdown-item" href="./Servicios/Certificacion.jsp">Certificaciónes</a></li>
                      <li><a class="dropdown-item" href="#">Acopio de RAEE</a></li>
                    </ul>
                 </li>
                <li class="nav__items">
                    <a href="blog.jsp" class="nav__links">
                        <div style="justify-content: center;display: flex;">
                            <i class="fas fa-table fa-2x"></i> 
                        </div>
                    Blog
                    </a>
                </li>
                <li class="nav__items">
                    <a href="Contactenos.jsp" class="nav__links">
                        <div style="justify-content: center;display: flex;">
                            <i class="fas fa-location fa-2x"></i> 
                        </div>
                    Contacto
                    </a>
                </li>
                <li class="nav__items">
                    <a class="nav__links dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <div style="justify-content: center;display: flex;">
                            <i class="fas fa-briefcase fa-2x"></i> 
                        </div>
                    Normativas
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <li><a class="dropdown-item" href="#">Ley 1672 de 2013</a></li>
                      <li><a class="dropdown-item" href="#">Decreto 284 de 2018</a></li>
                      <li><a class="dropdown-item" href="#">Resolucion 0851 de 2022</a></li>
                    </ul>
                </li>
                <li class="nav__items">
                    <a href="acerca.jsp" class="nav__links">
                        <div style="justify-content: center;display: flex;">
                            <i class="fas fa-blog fa-2x"></i> 
                        </div>
                    Acerca de
                    </a>
                </li>
                <li class="nav__items">
                    <a href="login.jsp" class="nav__links">
                        <div style="justify-content: center;display: flex;">
                            <i class="fas fa-download fa-2x"></i> 
                        </div>
                    Descarga Certificado
                    </a>
                </li>
                <li class="nav__items">
                    <a href="login.jsp" class="nav__links">
                        <div style="justify-content: center;display: flex;">
                            <i class="fas fa-user fa-4x"></i> 
                        </div>
                    </a>
                </li>
                
                
                
                <img src="./dist/img/close.svg" class="nav__close">
            </ul>

            
            <div class="nav__menu">
                <img src="./dist/img/menu.svg" class="nav__img">
            </div>
        </nav>
        <section class="hero__container container">
            <h1 class="hero__title">Contactenos</h1>
            <p> <a href="index.jsp">Inicio >></a> Contactenos </p>
        </section>
        
    </header>
        
    <section class="contact">

        <div class="icons-container">

            <div class="icons">
                <i class="fas fa-phone"></i>
                <h3>Numero</h3>
                <p>+57 324-456-7890</p>
            </div>

            <div class="icons">
                <i class="fas fa-envelope"></i>
                <h3>Correo electronico</h3>
                <p>juniorsinisterra@gmail.com</p>
            </div>

            <div class="icons">
                <i class="fas fa-map-marker-alt"></i>
                <h3>Direción</h3>
                <p>Car16 1sur - la playita</p>
            </div>

        </div>

        <div class="row">

            <form action="">
                <h3>Pongase en contacto</h3>
                <input type="text" placeholder="Nombre" class="box">
                <input type="number" placeholder="Numero" class="box">
                <input type="email" placeholder="Correo electronico" class="box">
                <textarea name="" placeholder="Mensaje" id="" cols="30" rows="10"></textarea>
                <input type="submit" value="Enviar mensaje" class="btn">
            </form>

            <iframe class="map"src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3980.824157112295!2d-77.00138978577891!3d3.847893749533999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses!2sco!4v1665686186623!5m2!1ses!2sco" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>

    </section>

   


    
    <footer class="footer">
        <section class="footer__container container">
            <nav class="nav nav--footer">
                <h2 class="footer__title">RAEE Buenaventura</h2>

                <ul class="nav__link nav__link--footer">
                    <li class="nav__items">
                        <a href="#" class="nav__links">Inicio</a>
                    </li>
                    <li class="nav__items">
                        <a href="#" class="nav__links">Servicios</a>
                    </li>
                    <li class="nav__items">
                        <a href="#" class="nav__links">Blog</a>
                    </li>
                    <li class="nav__items">
                        <a href="#" class="nav__links">Contacto</a>
                    </li>
                    <li class="nav__items">
                        <a href="#" class="nav__links">Acerca de</a>
                    </li>
                    <li class="nav__items">
                        <a href="#" class="nav__links">Descargar Certificado</a>
                    </li>
                </ul>
            </nav>

        </section>
        

        <section class="footer__copy container">
            <div class="footer__social">
                <a href="#" class="footer__icons"><img src="./dist/img/facebook.svg" class="footer__img"></a>
                <a href="#" class="footer__icons"><img src="./dist/img/twitter.svg" class="footer__img"></a>
                <a href="#" class="footer__icons"><img src="./dist/img/youtube.svg" class="footer__img"></a>
            </div>

            <h3 class="footer__copyright">Derechos reservados &copy; RAEE Buenaventura</h3>
        </section>
    </footer>

    <script src="./dist/js/slider.js"></script>
    <script src="./dist/js/questions.js"></script>
    <script src="./dist/js/menu.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
        crossorigin="anonymous"></script>
  
        
</body>
    
</html>
