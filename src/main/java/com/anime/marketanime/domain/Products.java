package com.anime.marketanime.domain;

import java.util.Date;

public class Products {
    private int IDAnime;
    private String Nombre;
    private int IDCategoria;
    private Integer IDEstado;
    private Date FechaInicio;
    private Date FechaFinalizacion;
    private Integer NumeroCapitulos;
    private Integer IDTipoAnime;
    private Integer Precio;
    private String Imagen;

    public int getIDAnime() {
        return IDAnime;
    }

    public void setIDAnime(int IDAnime) {
        this.IDAnime = IDAnime;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String nombre) {
        Nombre = nombre;
    }

    public int getIDCategoria() {
        return IDCategoria;
    }

    public void setIDCategoria(int IDCategoria) {
        this.IDCategoria = IDCategoria;
    }

    public Integer getIDEstado() {
        return IDEstado;
    }

    public void setIDEstado(Integer IDEstado) {
        this.IDEstado = IDEstado;
    }

    public Date getFechaInicio() {
        return FechaInicio;
    }

    public void setFechaInicio(Date fechaInicio) {
        FechaInicio = fechaInicio;
    }

    public Date getFechaFinalizacion() {
        return FechaFinalizacion;
    }

    public void setFechaFinalizacion(Date fechaFinalizacion) {
        FechaFinalizacion = fechaFinalizacion;
    }

    public Integer getNumeroCapitulos() {
        return NumeroCapitulos;
    }

    public void setNumeroCapitulos(Integer numeroCapitulos) {
        NumeroCapitulos = numeroCapitulos;
    }

    public Integer getIDTipoAnime() {
        return IDTipoAnime;
    }

    public void setIDTipoAnime(Integer IDTipoAnime) {
        this.IDTipoAnime = IDTipoAnime;
    }

    public Integer getPrecio() {
        return Precio;
    }

    public void setPrecio(Integer precio) {
        Precio = precio;
    }

    public String getImagen() {
        return Imagen;
    }

    public void setImagen(String imagen) {
        Imagen = imagen;
    }
}
