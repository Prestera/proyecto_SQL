# proyecto_SQL Pipicucu
<h2>CREACION BASE DE UNA APP PARA OPTIMIZAR LA RESERVA DE TURNOS </h2>

<h3>Introducción y problemática:</h3>
 Somos una empresa dedicada a la limpieza y desinfección de tapizados, nacida en la ciudad de Rosario y brindando nuestro servicio en más de 15 ciudades del país. Uno de nuestros principales problemas es la reserva de turnos. Por ejemplo, cuando se carga un turno, no se sabe quién lo realizó, y hay que apelar a la memoria del personal encargado. Otro problema es que, al brindar el servicio en tantas ciudades, ha ocurrido que se confundan y asignen un turno de una localidad a un operario de otra

 
 <h3>Descripción de la Base de Datos - Gestión de Reservas de turnos Pipicucu </h3>
<p>Esta base de datos está diseñada para optimizar diversas problemáticas que se presentan en la gestión y operación de la empresa. A continuación se detallan los elementos principales de la base de datos:
</p>

 <h3>Tablas:</h3>
<ol>
        <li>Clientes
            <ol>
                <li>Almacena información de los clientes</li>
                <li>Atributos: id_cliente, nombre, apellido, id_localidad, teléfono, dirección, instagram y fidelidad</li>
            </ol>
        </li>
        <li>Administrativas
            <ol>
                <li>Contiene información de las empleadas encargadas de tomar turnos</li>
                <li>Atributos: id_administrativa, nombre, apellido</li>
            </ol>
        </li>
        <li>Turnos
            <ol>
                <li>Contiene información de turnos asignados</li>
                <li>Atributos: id_turno, fecha, horario, id_operario, id_cliente, id_localidad, id_administrativa y asignado</li>
            </ol>
        </li>
        <li>Localidades
            <ol>
                <li>Contiene información de las ciudades donde se brinda el servicio</li>
                <li>Atributos: id_localidad, provincia y ciudad</li>
            </ol>
        </li>
        <li>Operarios
            <ol>
                <li>Almacena información del personal de limpieza</li>
                <li>Atributos: id_operario, nombre, apellido y id_localidad</li>
            </ol>
        </li>
        <li>Servicios
            <ol>
                <li>Contiene información de los servicios ofrecidos</li>
                <li>Atributos: id_servicio, tipo_seervicio y precio</li>
            </ol>
        </li>
        <li>Turnos_servicios
            <ol>
                <li>Relaciona turnos con los servicios solicitados en ese turno</li>
                <li>Atributos: id_turno y id_servicio</li>
            </ol>
        </li>

</ol>




 
<h3>DER: </h3>
<img width="962" alt="der_captura" src="https://github.com/Prestera/proyecto_SQL/assets/121523848/d9258ef8-ed69-43cd-b7a7-5899ec0e26fc">
