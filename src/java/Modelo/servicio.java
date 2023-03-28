/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.io.InputStream;

/**
 *
 * @author Hp
 */
public class servicio {

    int id;
    InputStream Foto;
    String itemFas;
    String Titulo;
    String Descripcion;
    private boolean estado;

    public servicio() {

    }

    public servicio(int id, InputStream Foto, String itemFas, String Titulo, String Descripcion, boolean estado) {
        this.id = id;
        this.Foto = Foto;
        this.itemFas = itemFas;
        this.Titulo = Titulo;
        this.Descripcion = Descripcion;
        this.estado = estado;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public InputStream getFoto() {
        return Foto;
    }

    public void setFoto(InputStream foto) {
        this.Foto = Foto;
    }

    public String getItemFas() {
        return itemFas;
    }

    public void setItemFas(String itemFas) {
        this.itemFas = itemFas;
    }

    public String getTitulo() {
        return Titulo;
    }

    public void setTitulo(String Titulo) {
        this.Titulo = Titulo;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }
    
    
}
