/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hp
 */
public class DAOCARGO extends Conexion {

    public List<cargo> ListaCargos() throws Exception {
        List<cargo> cargos;
        cargo car;
        ResultSet rs = null;
        String sql = "SELECT C.IDCARGO, C.NOMBRECARGO, C.ESTADO FROM CARGO C "
                + "ORDER BY C.IDCARGO";

        try {
            this.conectar(false);
            rs = this.ejecutarOrdenDatos(sql);
            cargos = new ArrayList<>();
            while (rs.next() == true) {
                car = new cargo();
                car.setCodigo(rs.getInt("IDCARGO"));
                car.setNombreCargo(rs.getString("NOMBRECARGO"));
                car.setEstado(rs.getBoolean("ESTADO"));
                cargos.add(car);
            }
            this.cerrar(true);
        } catch (Exception e) {
            throw e;
        } finally {

        }
        return cargos;
    }

}
