# proyecto_SQL Pipicucu
<h2>CREACION BASE DE UNA APP PARA OPTIMIZAR LA RESERVA DE TURNOS </h2>

<h3>Introducción y problemática:</h3>
 Somos una empresa dedicada a la limpieza y desinfección de tapizados, nacida en la ciudad de Rosario y brindando nuestro servicio en más de 15 ciudades del país. Uno de nuestros principales problemas es la reserva de turnos. Por ejemplo, cuando se carga un turno, no se sabe quién lo realizó, y hay que apelar a la memoria del personal encargado. Otro problema es que, al brindar el servicio en tantas ciudades, ha ocurrido que se confundan y asignen un turno de una localidad a un operario de otra

 <h3>Descripción del Problema: </h3>


 <h3>Objetivo:</h3>  

 <h3>Descripción de la Base de Datos - Gestión de Reservas de turnos Pipicucu </h3>


 <h3>Tablas:</h3>
<ol>
    Clientes:  
   
       <li> Almacena información de los clientes</li>
       <li> Atributos: id_cliente, nombre, apellido, id_localidad, teléfono, dirección, instagram y fidelidad </li>
    


    Administrativas:  
  
       <li> Contiene información empleadas encargadas de tomar turnos</li>
       <li> Atributos: id_administrativa, nombre, apellido</li>
    


    Turnos:  
   
       <li>Contiene información de turnos asignados</li>
       <li> Atributos: id_turno, fecha, horario, id_operario, id_cliente, id_localidad, id_administrativa y asignado</li>
    


    Localidades:  
    
       <li> Contiene información de las ciudades donde se brinda el servicio</li>
       <li> Atributos: id_localidad, provincia y ciudad </li>
    


    Operarios :  
    
       <li> Almacena información del personal de limpieza</li>
       <li> Atributos: id_operario, nombre, apellido y id_localidad</li>
    





 
<h3>DER: </h3>
<img width="962" alt="der_captura" src="https://github.com/Prestera/proyecto_SQL/assets/121523848/d9258ef8-ed69-43cd-b7a7-5899ec0e26fc">
