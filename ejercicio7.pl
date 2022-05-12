/*Ejercicio 7
Armar un programa Prolog que le indique a una casa de venta de bebidas a qué precio vender sus productos, a partir
del precio de costo de cada uno. Las ventas se realizan a comerciantes y a particulares.
Para los comerciantes, el cálculo del precio es así:
• A las bebidas sin alcohol se les recarga un 25%.
• A los vinos nacionales se les recarga un 30% más un peso (p.ej. De 10 se va a 14).
• A los vinos importados se les recarga el máximo entre un 20% y 3 pesos (p.ej. De 10 se va a 13, de 20 se va a
24).
• A los whiskies se les recarga un 50%
Para los particulares, el cálculo del precio es así:
• A las aguas minerales se les recarga un 30% .
• A las gaseosas se les recarga un 40%.
• A las bebidas alcohólicas nacionales se les recarga un 60%.
• A las bebidas alcohólicas importadas se les recarga un 70%.
• Las bebidas sin alcohol son aguas y gaseosas; las bebidas alcohólicas son vinos y whiskies.
Tener en cuenta estos productos:
• Villavicencio, que es un agua mineral, costo $50.
• Glaciar, que es un agua mineral, costo $30.
• CocaCola, gaseosa, costo $40
• Goliat, gaseosa, costo $25.
• Bianchi, vino nacional, costo $70.
• Trapiche, vino nacional, costo $120.
• Richelieu, vino importado, costo $130.
• Cucagna, vino importado, costo $180.
• Criadores, whisky nacional, costo $2000.
• Grants, whisky importado, costo $3000.
y estos clientes
• Luisa y Rubén, que son particulares.
• Zoraida y Ramón, que son comerciantes.*/

producto(aguaMineral,nacional,sinAlcohol,glaciar,50).%• Villavicencio, que es un agua mineral, costo $50.
producto(aguaMineral,nacional,sinAlcohol,villavicencio,30).%• Glaciar, que es un agua mineral, costo $30.
producto(gaseosa,importado,sinAlcohol,cocacola,40).%• CocaCola, gaseosa, costo $40
producto(gaseosa,nacional,sinAlcohol,goliat,25).%• Goliat, gaseosa, costo $25.
producto(vino,nacional,conAlcohol,bianchi,70).%• Bianchi, vino nacional, costo $70.
producto(vino,nacional,conAlcohol,trapiche,120).%• Trapiche, vino nacional, costo $120.
producto(vino,importado,conAlcohol,richelieu,130).%• Richelieu, vino importado, costo $130.
producto(vino,importado,conAlcohol,cucagna,180).%• Cucagna, vino importado, costo $180.
producto(whisky,nacional,conAlcohol,criadores,2000).%• Criadores, whisky nacional, costo $2000.
producto(whisky,importado,conAlcohol,grants,3000).%• Grants, whisky importado, costo $3000.

%• Luisa y Rubén, que son particulares.
cliente(luisa,particular).
cliente(ruben,particular).
%• Zoraida y Ramón, que son comerciantes.
cliente(zoraida,comerciante).
cliente(ramon,comerciante).

%Para los comerciantes, el cálculo del precio es así:
%• A las bebidas sin alcohol se les recarga un 25%.
venta(Cliente,Producto,Precio):-cliente(Cliente,comerciante),producto(_,_,sinAlcohol,Producto,X), Precio is (X*1.25).
%• A los vinos nacionales se les recarga un 30% más un peso (p.ej. De 10 se va a 14).
venta(Cliente,Producto,Precio):-cliente(Cliente,comerciante),producto(vino,nacional,_,Producto,X), Precio is (X*1.30+1).
%• A los vinos importados se les recarga el máximo entre un 20% y 3 pesos (p.ej. De 10 se va a 13, de 20 se va a 24).
venta(Cliente,Producto,Precio):-cliente(Cliente,comerciante),producto(vino,importado,_,Producto,X), Precio is (X*1.20+3).%falta dice el maximo entre 20% y 3 pesos
%• A los whiskies se les recarga un 50%
venta(Cliente,Producto,Precio):-cliente(Cliente,comerciante),(producto(wisky,nacional,_,Producto,X);producto(wisky,importado,_,Producto,X)), Precio is (X*1.5).

%Para los particulares, el cálculo del precio es así:
%• A las aguas minerales se les recarga un 30% .
venta(Cliente,Producto,Precio):-cliente(Cliente,particular),producto(aguaMineral,_,_,Producto,X), Precio is (X*1.30).
%• A las gaseosas se les recarga un 40%.
venta(Cliente,Producto,Precio):-cliente(Cliente,particular),producto(gaseosa,_,_,Producto,X), Precio is (X*1.30).
%• A las bebidas alcohólicas nacionales se les recarga un 60%.
venta(Cliente,Producto,Precio):-cliente(Cliente,particular),producto(_,nacional,conAlcohol,Producto,X), Precio is (X*1.60).
%• A las bebidas alcohólicas importadas se les recarga un 70%.
venta(Cliente,Producto,Precio):-cliente(Cliente,particular),producto(_,importado,conAlcohol,Producto,X), Precio is (X*1.70).

%• Las bebidas sin alcohol son aguas y gaseosas; las bebidas alcohólicas son vinos y whiskies.
bebida(Producto,Tipo):-producto(_,_,Tipo,Producto,_).