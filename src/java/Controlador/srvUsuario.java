/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.DAOCARGO;
import Modelo.DAOUSUARIO;
import Modelo.cargo;
import Modelo.usuario;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "srvUsuario", urlPatterns = {"/srvUsuario"})

public class srvUsuario extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String accion = request.getParameter("accion");
        try {
            if (accion != null) {
                switch (accion) {
                    case "verificar":
                        verificar(request, response);
                        break;
                    case "cerrar":
                        cerrarsession(request, response);
                        break;
                    case "listaUsuarios":
                        listaUsuarios(request, response);
                        break;
                    case "nuevo":
                        mostrarFormulario(request, response);
                        break;
                    case "registrar":
                        registrarUsuario(request, response);
                        break;
                    case "leerUsuario":
                        mostrarUsuario(request, response);
                        break;
                    case "actualizarUsuario":
                        actualizarUsuario(request, response);
                        break;
                        
                    default:
                        response.sendRedirect("login.jsp");
                        break;
                }
            } else {
                response.sendRedirect("login.jsp");
            }
        } catch (Exception e) {
            try {

                this.getServletConfig().getServletContext().getRequestDispatcher("/mensaje.jsp").forward(request, response);

            } catch (Exception ex) {
                System.out.println("Error" + e.getMessage());
            }

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

    private void verificar(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession sesion;
        DAOUSUARIO dao;
        usuario usuario;
        usuario = this.obtenerUsuario(request);
        dao = new DAOUSUARIO();
        usuario = dao.identificar(usuario);
        if (usuario != null && usuario.getCargo().getNombreCargo().equals("ADMINISTRADOR")) {
            sesion = request.getSession();
            sesion.setAttribute("usuario", usuario);
            request.setAttribute("maje", "Bienvenido al sistema");
            this.getServletConfig().getServletContext().getRequestDispatcher("/vistasadmin/index.jsp").forward(request, response);

        } else if (usuario != null && usuario.getCargo().getNombreCargo().equals("ASESOR")) {
            sesion = request.getSession();
            sesion.setAttribute("asesor", usuario);
            this.getServletConfig().getServletContext().getRequestDispatcher("/vistasadmin/asesor.jsp").forward(request, response);
        } else {
            request.setAttribute("maje", "Credenciales erroneas");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    private void cerrarsession(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession sesion = request.getSession();
        sesion.setAttribute("usuario", null);
        sesion.invalidate();
        response.sendRedirect("login.jsp");
    }

    private usuario obtenerUsuario(HttpServletRequest request) {
        usuario u = new usuario();
        u.setNombreUsuario(request.getParameter("txtUsu"));
        u.setClave(request.getParameter("txtPass"));
        return u;
    }

    private void listaUsuarios(HttpServletRequest request, HttpServletResponse response) {
        DAOUSUARIO dao = new DAOUSUARIO();
        List<usuario> usus = null;
        try {
            usus = dao.ListaUsuarios();
            request.setAttribute("usuarios", usus);
        } catch (Exception e) {
            request.setAttribute("maje", "No se pudo listar los usuarios" + e.getMessage());
        } finally {
            dao = null;
        }
        try {
            this.getServletConfig().getServletContext().getRequestDispatcher("/vistasadmin/usuarios.jsp").forward(request, response);
        } catch (Exception ex) {
            request.setAttribute("maje", "No se pudo realizarsu peticion" + ex.getMessage());
        }
    }

    private void mostrarFormulario(HttpServletRequest request, HttpServletResponse response) {
        try {
            this.cargarCargos(request);
            this.getServletConfig().getServletContext()
                    .getRequestDispatcher("/vistasadmin/nuevoUsuario.jsp").forward(request, response);
        } catch (Exception e) {
            request.setAttribute("maje", "Error al cargar la vista" + e.getMessage());
        }
    }

    private void cargarCargos(HttpServletRequest request) {
        DAOCARGO dao = new DAOCARGO();
        List<cargo> car = null;
        try {
            car = dao.ListaCargos();
            request.setAttribute("cargos", car);
        } catch (Exception e) {
            request.setAttribute("maje", "error al cargar los cargos" + e.getMessage());

        } finally {
            car = null;
            dao = null;
        }
    }

    private void registrarUsuario(HttpServletRequest request, HttpServletResponse response) {
        DAOUSUARIO daoUsu;
        usuario usu = null; 
        cargo carg;
        if (request.getParameter("txtNombre") != null
                && request.getParameter("txtClave") != null
                && request.getParameter("cboCargo") != null) {

            usu = new usuario();
            usu.setNombreUsuario(request.getParameter("txtNombre"));
            usu.setClave(request.getParameter("txtClave"));
            carg = new cargo();
            carg.setCodigo(Integer.parseInt(request.getParameter("cboCargo")));
            usu.setCargo(carg);
            if (request.getParameter("chkEstado") != null) {
                usu.setEstado(true);
            } else {
                usu.setEstado(false);
            }
            daoUsu = new DAOUSUARIO();
            try {
                daoUsu.registrarUsuarios(usu);
                response.sendRedirect("srvUsuario?accion=listaUsuarios");

            } catch (Exception e) {
                request.setAttribute("maje", "Error al registar usuario" + e.getMessage());
                request.setAttribute("usuario", usu);
                this.mostrarFormulario(request, response);
            } finally {

            }
        }
        else{
            request.setAttribute("maje", "llenar campos");
        }
    }

    private void mostrarUsuario(HttpServletRequest request, HttpServletResponse response) {
        DAOUSUARIO dao;
        usuario usus;
        if(request.getParameter("cod") != null){
            usus = new usuario();
            usus.setId_usuario(Integer.parseInt(request.getParameter("cod")));
            
            dao = new DAOUSUARIO();
            try{
                usus = dao.leerUsuario(usus);
                if(usus != null){
                    request.setAttribute("usuario", usus);
                }else{
                    request.setAttribute("maje", "Usuario no encontrado");
                }
                        
            }catch (Exception e) {
                request.setAttribute("maje", "Error al acceder a la base de datos" + e.getMessage());
            }
        }
        else{
            request.setAttribute("maje", "Parametro erroneo");
        }
        try{
            this.cargarCargos(request);
            this.getServletConfig().getServletContext().getRequestDispatcher("/vistasadmin/actualizarUsuario.jsp").forward(request, response);
        }catch(Exception e){
            request.setAttribute("maje", "Error al realizar la operacion" + e.getMessage());
        }
    }

    private void actualizarUsuario(HttpServletRequest request, HttpServletResponse response) {
           DAOUSUARIO daoUsu;
           usuario usus = null;
           cargo car;
           
           if(request.getParameter("hCodigo") != null
                   && request.getParameter("txtNombre") != null
                   && request.getParameter("txtClave") != null
                   && request.getParameter("cboCargo") != null){
               
               usus = new usuario();
               usus.setId_usuario(Integer.parseInt(request.getParameter("hCodigo")));
               usus.setNombreUsuario(request.getParameter("txtNombre"));
               usus.setClave(request.getParameter("txtClave"));
               car = new cargo();
               car.setCodigo(Integer.parseInt(request.getParameter("cboCargo")));
               usus.setCargo(car);
               if(request.getParameter("chkEstado") != null){
                   usus.setEstado(true);
               }else{
                   usus.setEstado(false);
               }
               daoUsu = new DAOUSUARIO();
               try {
                   daoUsu.actualizarUsuarios(usus);
                   response.sendRedirect("srvUsuario?accion=listaUsuarios");
               }catch(Exception e){
                   request.setAttribute("maje", "No se pudo actualizar el usuario" + e.getMessage());
                   request.setAttribute("usuario", usus);
                   
               }
               try{
                   this.cargarCargos(request);
                   this.getServletConfig().getServletContext().getRequestDispatcher("/vistasadmin/actualizarUsuario.jsp").forward(request, response);
                   
               }catch(Exception ex) {
                   request.setAttribute("maje", "Error al realizar la operacion" + ex.getMessage());
               }
           }
    }

    

}
