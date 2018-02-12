
/*Función para que solo permita ingresar números*/
function allowOnlyNumbers(e){
    tecla = (document.all) ? e.keyCode : e.which;

    //Tecla de retroceso para borrar, siempre la permite
    if (tecla==8){
        return true;
    }

    // Patron de entrada, en este caso solo acepta numeros
    patron =/[0-9]/;
    tecla_final = String.fromCharCode(tecla);
    return patron.test(tecla_final);
};

/*Fúncion que permite formatear a 2 decimales el número ingresado*/
function formatDecimal_2(obj){

    if (obj.value.length > 0){
        var nro = obj.value;
        var result = Number(Math.round( nro + 'e2') + 'e-2').toFixed(2);
        document.getElementById(obj.id).value = result;
        return true;
    }

};

/***********************************************************************/
/****************MENSAJE DE VALIDACION**********************************/
/*Funcion que muestra el error*/
function fnShowMessageValidation(arrMessage){

    var resultado = '<UL type = "square">';
    for ( var i in  arrMessage ){
        resultado += '<LI>' + arrMessage[i] + '</LI>';
    }

    resultado += '</UL>';

    var panel = document.getElementById("divResultadoValidacion");
    panel.className = "messageValidation";
    panel.innerHTML = resultado;

};

/*Funcion que oculta el error*/
function fnHideMessageValidation(){
    var panel = document.getElementById("divResultadoValidacion");
    panel.className = "";
    panel.innerHTML = "";
};

/***********************************************************************/
/********************** PERSONA ****************************************/
/*Funcion que devuelve el tipo de persona en base al DoCUMENTO DE IDENTIDAD*/
function fnGetPersType(valor){
    /*Persona Juridica*/
    if ( valor.length == 11 && valor.substring(0,2) == '20' ){
        return "PJ";
    } else if ( valor.length == 11 && valor.substring(0,2) == '10' ){
        return "PJ";
    } else if ( valor.length == 8 ){
        return "PN";
    } else {
        return "ERROR";
    }
};

/*Funcion que valida el documento de identidad ingresado*/
function fnValidateDocuIden(val){

    alert("Valor: " + val);
    var arrMessages = [];

    if (val.trim.length == 0 ){

      arrMessages.push("Debe ingresar el Documento de Identidad.");
      fnShowMessageValidation(arrMessages);
      return false;

    }else {

        var resultado = fnGetPersType(val);

        if ( resultado == "ERROR" ){
            arrMessages.push("El formato del Documento de Identidad es inválido.");
            fnShowMessageValidation(arrMessages);
            return false;
        } else {
            fnHideMessageValidation();
            return true;
        }
    }
};


function fnCreateDialog(){

    var div1 = document.getElementById("origen");
    console.log("div1: " + div1.innerHTML);



    var cadena = 
    '<div id="principal" class="jconfirm jconfirm-supervan jconfirm-open" >' +
        
        '<div class="jconfirm-bg" style="transition-duration: 0.4s; transition-timing-function: cubic-bezier(0.36, 0.55, 0.19, 1);">' +

        '</div>' +

        '<div class="jconfirm-scrollpane"> ' +
            '<div class="jconfirm-row"> ' +
                '<div class="jconfirm-cell">' +
                    '<div class="jconfirm-holder" style="padding-top: 40px; padding-bottom: 40px;">' +
                        '<div class="jc-bs3-container container">' +
                            '<div class="jc-bs3-row row justify-content-md-center justify-content-sm-center justify-content-xs-center justify-content-lg-center">' +
                                '<div class="jconfirm-box-container col-md-4 col-md-offset-4 " style="transform: translate(0px, 0px); transition-duration: 0.4s; transition-timing-function: cubic-bezier(0.36, 0.55, 0.19, 1);">' +
                                    '<div class="jconfirm-content" style="background-color: white; border: 10px solid #C0C0C0; padding: 10px"  >' +

                                    '</div>' +                                    
                                '</div>' +
                            '</div>' +
                        '</div>' +
                    '</div>' +
                '</div>' +
            '</div>' +
        '</div>' +
    '</div> ';

    
    /*$("body").append(cadena);
    $("#origen").appendTo(".jconfirm-content");*/
    /*alert("hola");
    $(cadena).prependTo("#origen");*/
    
    alert("hola");    
    $(cadena).appendTo("#abc");
    alert("hola");
    $("#origen").appendTo(".jconfirm-content");
    console.log("div_2" + document.getElementById("abc").innerHTML);

}