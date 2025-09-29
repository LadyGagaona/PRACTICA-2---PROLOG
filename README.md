# PRACTICA-2---PROLOG
TRABAJO REALIZADO PARA LA PRESSENTACION DE LA PROGRAMACIÓN LÓGICA EN EL LENGUAJE PROLOG.

### LINK DEL VIDEO: 

### Integrantes: Juan Sebastián Gaona - Ashly Sofia Robayo.

El propósito del programa consiste en hacer filtros y gestión de inventarios a un inventario de automóviles. El programa contiene: la información de los vehículos, la forma de agruparlos según sus características y la salida de informes de autos específicos. 

## 1. BASE DE DATOS:
   La información de todos los autos disponibles está almacenada en el hecho _vehicle_, de 5 átomos en el siguiente orden: fabricante, nombre del auto, tipo de auto, precio y año de lanzamiento.
   
  <img width="342" height="19" alt="image" src="https://github.com/user-attachments/assets/5a17686c-fe75-43f3-be8c-523d8f9ba61f" />


## 2. FUNCIONES DE CONSULTA: 
Son los demás predicados que buscan información específica de la base de datos. En su mayoría se sirven de los filtros <ins>Findall y BagOf</ins>.

   ### 2.1. SUMA: 
   Regla creada para usarse dentro de otros predicados, con la intención de obtener la suma de un tipo de auto determinado. Usa la función findall para hallar los valores del tipo de auto ingresado y, a partir de la lista creada con estos, usa la función de librería para sumar _sum_list_:

   <img width="194" height="19" alt="image" src="https://github.com/user-attachments/assets/f10f6939-6586-49a6-873b-bad9022b171b" />

   sum_list suma todos los valores almacenados en la lista y pone el resultado en total.


  ### 2.2. PRESUPUESTO:
  La función puede usarse si se quiere saber si determinado auto está dentro del presupuesto dispuesto. Identifica el predicado de la referencia ingresada, obtiene su precio asociado y verifica que esté dentro del presupuesto. Es una función que devuelve verdadero o falso.

  <img width="257" height="32" alt="image" src="https://github.com/user-attachments/assets/b9924f03-124c-439f-a95e-32534a6ddc67" />

  ### 2.3. AGRUPACIÓN POR MARCA:
  Usando findall, la función _vehicles_by_brand_ usa la marca ingresada para almacenar todos los nombres de vehículos propiedad de este fabricante en una lista, que es lo que devuelve.

  <img width="258" height="36" alt="image" src="https://github.com/user-attachments/assets/9ef433f6-7d91-485c-9794-eef32bd8f486" />

  También se puede hacer usando bagof y señalando que no los agrupe por precio o por año.
  <img width="546" height="40" alt="image" src="https://github.com/user-attachments/assets/2f3b6635-1d34-4a94-8ba0-914f6c4c3bee" />
  



  ### 2.4. LIMIT/1.
  Es una función necesaria para crear _generate_report_. Lo que hace es leer un número de consola, que en generate_report sería el tope máximo de la suma, si es un número diferente de cero, el átomo tomará ese valor, de lo contrario, se le asignará none.

  <img width="678" height="58" alt="image" src="https://github.com/user-attachments/assets/d432509f-8f16-4e80-9a7a-6b531cf187e2" />

  ### 2.5. REPORTE.
  Es para cuando se quiere un informe más extenso del inventario. Usa findall para hallar todos los hechos **vehicle** con un tipo de auto determinado que no sobrepase un presupuesto, esto con la condición dentro del findall _Value<Budget_ (El valor dentro del predicado no puede exceder el presupuesto ingresado). Al final usa Limit/1 para saber el tope máximo de la suma y luego la hace.

  <img width="1216" height="73" alt="image" src="https://github.com/user-attachments/assets/f11fb6a8-d758-4c4d-864f-e22eb1bc99d6" />
  
## 3. CASOS:
Se solicitaron 3 consultas para comprobar que el código funcionara:

- **Caso 1:**Pide todos los autos de tipo suv, cuyo precio sea por debajo de $300000. Se usó la función generate_report para hacerlo.
  
  <img width="660" height="56" alt="image" src="https://github.com/user-attachments/assets/73bb60b7-e6ce-4e49-ac1a-226209a18b1c" />

- **Caso 2:**Solicita los vehículos Ford disponibles usando Bagof. Ya que solo se solicitan agrupados por tipo y año, dentro de la función se especifica que el precio no importa reemplazándolo por _ para que no sea tenido en cuenta.

  <img width="437" height="73" alt="image" src="https://github.com/user-attachments/assets/50f68040-4c9d-4819-96aa-8165410bb421" />

- **Caso 3:**Pide el valor total del inventario de todos los sedan sin que exceda los $500000, se usa generate_report para ello, con 500000 como el tope individual también.

  <img width="691" height="64" alt="image" src="https://github.com/user-attachments/assets/30f7ac8c-0a43-4de7-ac91-77ba54e5e063" />

  


  
  
  
  


  
  



  




