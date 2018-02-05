/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pruebas.controller;

import com.pruebas.entity.Sic1idenpers;
import com.pruebas.entity.Sic1idenpersId;
import com.pruebas.entity.Sic1pers;
import com.pruebas.entity.Sic1persindi;
import com.pruebas.entity.Sic1persorga;
import com.sun.faces.action.RequestMapping;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

/**
 *
 * @author emoreno
 */
@ManagedBean
@ViewScoped
public class AutocompleteController {
    
    
    private Sic1pers sic1pers;
    private Sic1persindi sic1persindi;
    private Sic1persorga sic1persorga;
    private Sic1idenpers sic1idenpers;
    private Sic1idenpersId sic1idenpersId;
    
    private List<Sic1pers> listaPersonas;
    

    @PostConstruct
    public void init(){
        
        
        listaPersonas = new ArrayList<>();
        
        sic1pers = new Sic1pers();
        sic1persindi = new Sic1persindi();
        sic1persorga = new Sic1persorga();
        sic1idenpers = new Sic1idenpers();
        sic1idenpersId = new Sic1idenpersId();
        
    }
    
    
    public Sic1pers getSic1pers() {
        return sic1pers;
    }

    public void setSic1pers(Sic1pers sic1pers) {
        this.sic1pers = sic1pers;
    }

    public Sic1persindi getSic1persindi() {
        return sic1persindi;
    }

    public void setSic1persindi(Sic1persindi sic1persindi) {
        this.sic1persindi = sic1persindi;
    }

    public Sic1persorga getSic1persorga() {
        return sic1persorga;
    }

    public void setSic1persorga(Sic1persorga sic1persorga) {
        this.sic1persorga = sic1persorga;
    }

    public Sic1idenpers getSic1idenpers() {
        return sic1idenpers;
    }

    public void setSic1idenpers(Sic1idenpers sic1idenpers) {
        this.sic1idenpers = sic1idenpers;
    }

    public Sic1idenpersId getSic1idenpersId() {
        return sic1idenpersId;
    }

    public void setSic1idenpersId(Sic1idenpersId sic1idenpersId) {
        this.sic1idenpersId = sic1idenpersId;
    }    

    public List<Sic1pers> getListaPersonas() {
        return listaPersonas;
    }

    public void setListaPersonas(List<Sic1pers> listaPersonas) {
        this.listaPersonas = listaPersonas;
    }
    
    public void registrar() throws Exception{
        
        System.out.println("Registrando Persona!!");
        System.out.println("CodIden:" + sic1idenpersId.getCodIden());
        System.out.println("Razon Social:" + sic1persorga.getDesPersorga());
        
        //FacesContext request = FacesContext.getCurrentInstance();
        //JavascriptContext.addJavascriptCall(FacesContext.getCurrentInstance(), "alert('hello');");
         
         this.sic1persorga.setIdPersorga(new BigDecimal("20"));
        if (1==2) {
            throw new Exception("Error");
        }
    }
    
    public void buscarPersonas(){
        
        List<Sic1pers> lista = new ArrayList<>();
        
        Sic1pers obj = new Sic1pers();
        obj.setCodIden("4339215");
        obj.setDesPers("Juan");
        lista.add(obj);
        
        listaPersonas.add(obj);
        
        obj = new Sic1pers();
        obj.setCodIden("4448644");
        obj.setDesPers("Pedro");
        lista.add(obj);        
        
        listaPersonas.add(obj);
        
        System.out.println("Filas: " + listaPersonas.size());        
        
    }
}
