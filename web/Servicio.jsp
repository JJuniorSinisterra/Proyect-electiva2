<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RAEE Buenaventura</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="shortcut icon" href=" " type="image/x-icon">
        <link rel="stylesheet" href="./css/normalize.css">
        <link rel="stylesheet" href="./css/estilos.css">
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
                    <a href="Servicio.jsp" class="nav__links dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"  aria-expanded="true">
                        <div style="justify-content: center;display: flex;">
                            <i class="fas fa-briefcase fa-2x"></i> 
                        </div>
                    Servicios
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <a class="dropdown-item" href="#">Capacitación</a>
                      <a class="dropdown-item" href="#">Asesorias</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">Certificación</a>
                      <a class="dropdown-item" href="#">Acopio de RAEE</a>
                    </div>
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
                    <a href="Contactenos.jsp" class="nav__links">
                        <div style="justify-content: center;display: flex;">
                            <i class="fas fa-gavel fa-2x"></i> 
                        </div>
                    Normativas
                    </a>
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
                
                <img src="./images/close.svg" class="nav__close">
            </ul>


            <div class="nav__menu">
                <img src="./images/menu.svg" class="nav__img">
            </div>
        </nav>
        <section class="hero__container container">
            <h1 class="hero__title">Servicios</h1>
            <p> <a href="index.jsp">Inicio >></a> Servicio </p>
        </section>
        
    </header>
   


    
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
                <a href="#" class="footer__icons"><img src="image/facebook.svg" class="footer__img"></a>
                <a href="#" class="footer__icons"><img src="image/twitter.svg" class="footer__img"></a>
                <a href="#" class="footer__icons"><img src="image/youtube.svg" class="footer__img"></a>
            </div>

            <h3 class="footer__copyright">Derechos reservados &copy; RAEE Buenaventura</h3>
        </section>
    </footer>

    <script src="./js/slider.js"></script>
    <script src="./js/questions.js"></script>
    <script src="./js/menu.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
  
        
</body>
    
</html>
