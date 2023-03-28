<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RAEE Buenaventura</title>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <link rel="shortcut icon" href=" " type="image/x-icon">
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
            <h1 class="hero__title">Soluciones eficientes de reciclaje electrico y electronico</h1>
            <a href="#" class="cta" data-bs-toggle="modal" data-bs-target="#exampleModal">AGENDAR RECOLECCIÓN</a>
        </section>
        
    </header>
        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">AGENDAR RECOLECCIÓN</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                ...
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
              </div>
            </div>
          </div>
        </div>

    <main>
        <section class="container about">
            
            <div class="container-fluid">
                <h1 class="text-center mt-5 display-3 fw-bold">Nuestros <span class="theme-text">Servicios</span></h1>
                <p class="about__paragraph">Nuestro principal objetivo es brindar apoyo a las diferentes instituciones u organizaciones en el debido manejo de sus RAEE</p>

                <hr class="mx-auto mb-5 w-25">
                <div class="row mb-5">
                    <div class="col-12 col-sm-6 col-md-3 m-auto">
                        <!-- card starts here -->
                        <div class="card shadow">
                            <img src="images/app.svg" alt="" class="card-img-top">
                            <div class="card-body">
                                <h3 class="text-center">Capacitaciones</h3>
                                <hr class="mx-auto w-75">
                                <p>
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut eligendi soluta est veniam sequi
                                    nemo, quas delectus eveniet ducimus rem animi. Natus non earum deleniti aliquam
                                </p>
                            </div>
                        </div>
                        <!-- card ends here -->
                    </div>
                    <!-- col ends here -->
                    <div class="col-12 col-sm-6 col-md-3 m-auto">
                        <!-- card starts here -->
                        <div class="card shadow">
                            <img src="images/app.svg" alt="" class="card-img-top">
                            <div class="card-body">
                                <h3 class="text-center">Asesorias</h3>
                                <hr class="mx-auto w-75">
                                <p>
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut eligendi soluta est veniam sequi
                                    nemo, quas delectus eveniet ducimus rem animi. Natus non earum deleniti aliquam
                                </p>
                            </div>
                        </div>
                        <!-- card ends here -->
                    </div>
                    <!-- col ends here -->
                    <div class="col-12 col-sm-6 col-md-3 m-auto">
                        <!-- card starts here -->
                        <div class="card shadow">
                            <img src="images/dm.svg" alt="" class="card-img-top">
                            <div class="card-body">
                                <h3 class="text-center">Certificaciones</h3>
                                <hr class="mx-auto w-75">
                                <p>
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut eligendi soluta est veniam sequi
                                    nemo, quas delectus eveniet ducimus rem animi. Natus non earum deleniti aliquam
                                </p>
                            </div>
                        </div>
                        <!-- card ends here -->
                    </div>
                    <!-- col ends here -->
                    <div class="col-12 col-sm-6 col-md-3 m-auto">
                        <!-- card starts here -->
                        <div class="card shadow">
                            <img src="images/seo.svg" alt="" class="card-img-top">
                            <div class="card-body">
                                <h3 class="text-center">Recoleccion</h3>
                                <hr class="mx-auto w-75">
                                <p>
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut eligendi soluta est veniam sequi
                                    nemo, quas delectus eveniet ducimus rem animi. Natus non earum deleniti aliquam
                                </p>
                            </div>
                        </div>
                        <!-- card ends here -->
                    </div>
                    <!-- col ends here -->
                </div>
            </div>
            
        </section>

        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="./dist/img/computer.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>First slide label</h5>
                  <p>Some representative placeholder content for the first slide.</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="./dist/img/computer.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Second slide label</h5>
                  <p>Some representative placeholder content for the second slide.</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="./dist/img/computer.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Third slide label</h5>
                  <p>Some representative placeholder content for the third slide.</p>
                </div>
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>


        <section class="questions container">
            <h2 class="subtitle">Preguntas frecuentes</h2>
            <p class="questions__paragraph">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ea, porro
                doloribus neque perspiciatis sapiente fuga.</p>

            <section class="questions__container">
                <article class="questions__padding card shadow">
                    <div class="questions__answer">
                        <h3 class="questions__title">¿Qué son Residuos de aparatos eléctricos y electrónicos (RAEE)?
                            <span class="questions__arrow">
                                <img src="./dist/img/arrow.svg" class="questions__img">
                            </span>
                        </h3>

                        <p class="questions__show">RAEE puede ser considerado cualquier dispositivo o equipo que 
                            utilice suministro eléctrico para su funcionamiento, y que en el momento de quedar 
                            obsoleto o inoperativo, se convierte en lo que reconocemos como RAEE</p>
                    </div>
                </article>

                <article class="questions__padding card shadow">
                    <div class="questions__answer">
                        <h3 class="questions__title">¿En qué momento recibo mi certificado?
                            <span class="questions__arrow">
                                <img src="./dist/img/arrow.svg" class="questions__img">
                            </span>
                        </h3>

                        <p class="questions__show">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quos
                            facere, quidem eum id excepturi assumenda explicabo nam accusamus veritatis voluptates
                            eveniet adipisci, dicta nihil nemo modi possimus officiis quam atque? Lorem ipsum, dolor sit
                            amet consectetur adipisicing elit. Quos facere, quidem eum id excepturi assumenda explicabo
                            nam accusamus veritatis voluptates eveniet adipisci, dicta nihil nemo modi possimus officiis
                            quam atque?</p>
                    </div>
                </article>

                <article class="questions__padding card shadow">
                    <div class="questions__answer">
                        <h3 class="questions__title">¿Es necesario realizar un alistamiento previo a mis residuos?
                            <span class="questions__arrow">
                                <img src="./dist/img/arrow.svg" class="questions__img">
                            </span>
                        </h3>

                        <p class="questions__show">Si, es necesario que los materiales estén localizados en un espacio físico
                            que sea de fácil acceso para realizar el pesaje y cargue de los mismos.</p>
                    </div>
                </article>
            </section>
        </section>
    </main>

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
