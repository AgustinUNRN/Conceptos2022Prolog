/*Ejercicio 4
La siguiente es la nómina de personal de una empresa:
Departamento de ventas: empleada María, cadetes Juan y Roque
Departamento de compras: empleada Nora, cadete Pedro
Departamento de administración: empleados Felipe y Hugo, cadeta Ana.
Escribir un programa Prolog que modele a esta empresa, tal que puedan responderse las siguientes consultas:
• ¿Quiénes trabajan en el departamento de compras? ¿y en el de ventas?
• Dadas dos personas, ¿trabajan en el mismo departamento?
• Dadas dos personas a y b, ¿puede a darle órdenes a b?
• Decimos que a puede darle órdenes a b si y sólo si trabajan en el mismo departamento y a tiene un cargo
superior a b. Se considera que “empleado” es un cargo superior a “cadete”.
*/

empleado(maria,ventas).
empleado(nora,compras).
empleado(felipe,administracion).
empleado(hugo,administracion).
cadete(juan,ventas).
cadete(roque,ventas).
cadete(pedro,compras).
cadete(ana,administracion).

departamento(X,Depto):-empleado(X,Depto);cadete(X,Depto).
trabajanEn(X,Y,Depto):-departamento(X,Depto),departamento(Y,Depto).
daOrdenes(X,Y,Depto):-trabajanEn(X,Y,Depto),empleado(X,Depto),cadete(Y,Depto).