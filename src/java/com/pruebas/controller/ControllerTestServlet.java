/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pruebas.controller;

import java.io.IOException;
import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;


/**
 *
 * @author emoreno
 */
@ManagedBean
@ViewScoped
public class ControllerTestServlet {
    
    private String nombre;
    
    public ControllerTestServlet(){
        System.out.println("CONTRUCTOR");
    }
    
    @PostConstruct
    public void init(){
        System.out.println("INIT");
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    
    public String send() throws IOException{
//        FaceConte
//        return null;
//        return "/pageFaces2.xhtml";

    FacesContext context = FacesContext.getCurrentInstance();    
    FacesContext.getCurrentInstance().getExternalContext().redirect("../PrimerServlet");
    return null;
    }
    
    
}
