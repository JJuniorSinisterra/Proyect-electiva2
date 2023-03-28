/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Hp
 */
public class DAOSERVICIO extends Conexion {
    
    public List<servicio> listaServicios() throws Exception {
        List<servicio> servicios;
        servicio ser;
        ResultSet rs = null;
        String sql = "SELECT * FROM servicio";

        try {
            this.conectar(false);
            rs = this.ejecutarOrdenDatos(sql);
            servicios = new ArrayList<>();
            while (rs.next() == true) {
                ser = new servicio();
                ser.setId(rs.getInt("ID"));
                ser.setFoto(rs.getBinaryStream("FOTO"));
                ser.setItemFas(rs.getString("ITEMFAS"));
                ser.setTitulo(rs.getString("TITULO"));
                ser.setDescripcion(rs.getString("DESCRIPCION"));
                ser.setEstado(rs.getBoolean("ESTADO"));

                servicios.add(ser);
            }
            this.cerrar(true);
        } catch (Exception e) {
            throw e;
        } finally {

        }
        return servicios;
    }
    
    public void  listarImg(int id, HttpServletResponse response){
        String sql = "SELECT * FROM servicio WHERE  ID = " + id;
        InputStream inputStream = null;
        OutputStream outputStream = null;
        BufferedInputStream bufferedInputStream = null;
        BufferedOutputStream bufferedOutputStream=null;
        List<servicio> servicios;
        servicio ser;
        ResultSet rs = null;
         
         
         response.setContentType("image/*");
         try{
            outputStream = response.getOutputStream();
             this.conectar(false);
            rs = this.ejecutarOrdenDatos(sql);
            servicios = new ArrayList<>();
            if(rs.next()){
                inputStream = rs.getBinaryStream("FOTO");
            }
            bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedOutputStream = new BufferedOutputStream(outputStream);
            int i=0;
            while((i=bufferedInputStream.read())!=-1){
                bufferedOutputStream.write(i);
            }
         }catch(Exception e){
             
         }
    }
    
}
