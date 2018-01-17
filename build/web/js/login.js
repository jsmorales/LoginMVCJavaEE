/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function saludar (){
    console.log("Saludando al login!");
}

saludar();

function saludaAlert(){
    alert("Hola boton!");
}

var btn = window.document.getElementById('btn01');

btn.onclick = function(){
    saludaAlert();
};

