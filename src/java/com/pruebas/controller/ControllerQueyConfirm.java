/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pruebas.controller;

import com.pruebas.entity.Sic1docu;
import com.pruebas.entity.Sic1pers;
import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

/**
 *
 * @author Edgard
 */
@ManagedBean
@ViewScoped
public class ControllerQueyConfirm {
    
    private Sic1pers sic1pers;
    private Sic1docu sic1docu;
    
    @PostConstruct
    public void init(){
        sic1pers = new Sic1pers();
        //sic1docu = new Sic1docu();
    }

    public Sic1pers getSic1pers() {
        return sic1pers;
    }

    public void setSic1pers(Sic1pers sic1pers) {
        this.sic1pers = sic1pers;
    }

    public Sic1docu getSic1docu() {
        return sic1docu;
    }

    public void setSic1docu(Sic1docu sic1docu) {
        this.sic1docu = sic1docu;
    }
    
    
    
    public void grabar(){
        
        
        /*System.out.println("CodIden:" + sic1docu.getCodSerie());
        System.out.println("Nombre:" + sic1docu.getNumDocu());*/
        System.out.println("CodIden:" + sic1pers.getCodIden());
        System.out.println("Nombre:" + sic1pers.getDesPers());
    }
    
}
