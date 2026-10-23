Sistema de Gestión de Emergencias Urbanas

Base de datos relacional

Usé una base de datos relacional (SQL) para guardar los datos principales del sistema, como los ciudadanos, los reclamos, los empleados y los equipos de trabajo. Separé la información en tablas y las relacioné usando identificadores. Así se puede saber quién hizo cada reclamo, qué problema tiene y quién se encarga de solucionarlo.

Base de datos documental

También usé una base de datos documental (JSON) para guardar información más específica de cada reclamo y de las intervenciones. Lo hice de esta manera porque no todos los problemas necesitan los mimsmos datos. También se pueden agregar fotos y observaciones en caso de que sea necesario. 

Cómo se relacionan las dos bases de datos

Las dos se complementan. En SQL guardo la información principal y en JSON guardo los detalles adicionales. Para relacionarlas uso identificadores, como el reclamo_id, que me permite saber a qué pertenece cada información. 

También hice un diagrama de entidad-relación para mostrar las tablas creadas y cómo se relacionan entre sí.