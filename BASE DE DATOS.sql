USE proyect;

DROP TABLE IF EXISTS USUARIO;
DROP TABLE IF EXISTS EMOCIONES;
DROP TABLE IF EXISTS CAPSULAS;
DROP TABLE IF EXISTS META;


CREATE TABLE IF NOT EXISTS USUARIO(
    Nombre varchar(50),
    Cedula varchar(10) PRIMARY KEY,
    Correo varchar(50) UNIQUE,
    Telefono varchar(10),
    Genero varchar(15),
    FechaNacimiento varchar(10)
);
CREATE TABLE IF NOT EXISTS EMOCIONES (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Tipo VARCHAR(100),
    Descripcion VARCHAR(200),
    Fecha VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS CAPSULAS (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Fecha VARCHAR(50),
    Explicacion VARCHAR(300),
    Rutina VARCHAR(300)
);

CREATE TABLE IF NOT EXISTS META (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Fecha VARCHAR(20),
    Descripcion VARCHAR(300),
    Objetivo VARCHAR(300)
);


INSERT INTO USUARIO VALUES
("Juan Pérez", "1234567855", "juan.perez2@gmail.com", "3112345678", "Masculino", "1990-05-15"),
("María García", "9877773210", "maria.garcia1@gmail.com", "3223456789", "Femenino", "1985-08-22"),
("Carlos López", "4567890123", "carlos.lopez@gmail.com", "3334567890", "Masculino", "1992-03-10"),
("Laura Martínez", "7890123456", "laura.martinez@gmail.com", "3445678901", "Femenino", "1988-11-28"),
("Pedro Rodríguez", "2345678901", "pedro.rodriguez@gmail.com", "3556789012", "Masculino", "1995-02-18"),
("Ana Sánchez", "5678901234", "ana.sanchez@gmail.com", "3667890123", "Femenino", "1980-07-07"),
("Luis Torres", "8901234567", "luis.torres@gmail.com", "3778901234", "Masculino", "1997-09-30"),
("Carmen Vargas", "3456789018", "carmen.vargas@gmail.com", "3889012345", "Femenino", "1993-04-05"),
("David Mendoza", "6789012345", "david.mendoza@gmail.com", "3990123456", "Masculino", "1986-12-12"),
("Gabriela Rivera", "9012345678", "gabriela.rivera@gmail.com", "3001234567", "Femenino", "1998-06-25"),
("Hugo Gómez", "4321098765", "hugo.gomez@gmail.com", "3112345678", "Masculino", "1983-01-20"),
("Isabel Castillo", "5678901222", "isabel.castillo@gmail.com", "3223456789", "Femenino", "1991-07-03"),
("Jorge Paredes", "6543210987", "jorge.paredes@gmail.com", "3334567890", "Masculino", "1994-09-15"),
("Karla Jiménez", "7813023456", "karla.jimenez@gmail.com", "3445678901", "Femenino", "1987-04-01"),
("Miguel Moreno", "1098765488", "miguel.moreno@gmail.com", "3556789012", "Masculino", "2000-03-08"),
("Natalia Rojas", "1122334455", "natalia.rojas@gmail.com", "3667890123", "Femenino", "1989-12-18"),
("Oscar Herrera", "5432109876", "oscar.herrera@gmail.com", "3778901234", "Masculino", "1996-02-23"),
("Paula Díaz", "3344556677", "paula.diaz@gmail.com", "3889012345", "Femenino", "1992-11-05"),
("Ricardo Varela", "6789812345", "ricardo.varela@gmail.com", "3990123456", "Masculino", "1984-05-30"),
("Sara Navarro", "5566778899", "sara.navarro@gmail.com", "3001234567", "Femenino", "1997-08-10"),
("Tomás Delgado", "3456789212", "tomas.delgado@gmail.com", "3112345678", "Masculino", "1981-06-12"),
("Valeria Pacheco", "5433459876", "valeria.pacheco@gmail.com", "3223456789", "Femenino", "1993-10-28"),
("Xavier Peña", "8899001122", "xavier.pena@gmail.com", "3334567890", "Masculino", "1988-03-17"),
("Yolanda Ríos", "1098765432", "yolanda.rios@gmail.com", "3445678901", "Femenino", "1995-01-14"),
("Zacarías Soto", "1000245362", "zacarias.soto@gmail.com", "3556789012", "Masculino", "1994-04-09"),
("Elena Ruiz", "7789012345", "elena.ruiz@gmail.com", "3667890123", "Femenino", "1982-09-22"),
("Fernando Castro", "1001234567", "fernando.castro@gmail.com", "3778901234", "Masculino", "1996-07-01"),
("Giselle Morales", "3456789012", "giselle.morales@gmail.com", "3889012345", "Femenino", "1990-08-05");


INSERT INTO EMOCIONES (Tipo, Descripcion, Fecha) VALUES
 ("Alegría", "Hoy recibí una noticia increíble", "2023-01-01"),
 ("Tristeza", "Me siento melancólico hoy", "2023-01-02"),
 ("Enojo", "Discusión con un compañero de trabajo", "2023-01-03"),
 ("Felicidad", "Celebrando un logro personal", "2023-01-04"),
 ("Calma", "Día relajado sin preocupaciones", "2023-01-05"),
 ("Sorpresa", "Evento inesperado y emocionante", "2023-01-06"),
 ("Desánimo", "No logré completar mis tareas", "2023-01-07"),
 ("Esperanza", "Nuevos proyectos en el horizonte", "2023-01-08"),
 ("Ansiedad", "Preocupación por el futuro", "2023-01-09"),
 ("Reflexión", "Tiempo para pensar en metas personales", "2023-01-10"),
 ("Emoción", "Momento especial con seres queridos", "2023-01-11"),
 ("Apatía", "Día sin emociones fuertes", "2023-01-12"),
 ("Euforia", "Logré algo que parecía imposible", "2023-01-13"),
 ("Desilusión", "Esperaba más de esta jornada", "2023-01-14"),
 ("Inspiración", "Encontré motivación en una experiencia", "2023-01-15"),
 ("Preocupación", "Asuntos pendientes me generan estrés", "2023-01-16"),
 ("Amor", "Cariño y afecto de amigos y familiares", "2023-01-17"),
 ("Pensativo", "Reflexionando sobre el sentido de la vida", "2023-01-18"),
 ("Orgullo", "Logro personal que me llena de orgullo", "2023-01-19"),
 ("Inquietud", "Sensación de intranquilidad sin motivo aparente", "2023-01-20"),
 ("Compasión", "Empatía hacia las dificultades de otros", "2023-01-21"),
 ("Despreocupación", "Día sin preocupaciones laborales", "2023-01-22"),
 ("Agotamiento", "Cansancio extremo por jornada agitada", "2023-01-23"),
 ("Agradecimiento", "Reconocimiento por pequeños gestos", "2023-01-24"),
 ("Optimismo", "Creencia positiva en el futuro", "2023-01-25"),
 ("Nostalgia", "Recuerdos felices de tiempos pasados", "2023-01-26"),
 ("Paciencia", "Espera tranquila ante situaciones difíciles", "2023-01-27"),
 ("Resignación", "Aceptar lo que no se puede cambiar", "2023-01-28"),
 ("Determinación", "Firmeza en la consecución de metas", "2023-01-29"),
 ("Ternura", "Momentos dulces con seres queridos", "2023-01-30");


INSERT INTO CAPSULAS (Fecha, Explicacion, Rutina) VALUES
("2023-01-01", "Gestión del tiempo eficiente", "Prioriza tareas y utiliza técnicas de pomodoro para mejorar la productividad."),
("2023-01-02", "Estrategias para manejar el estrés", "Practica la respiración profunda y realiza actividades relajantes para reducir el estrés."),
("2023-01-03", "Fomentar la creatividad", "Dedica tiempo a actividades artísticas y busca inspiración en diferentes fuentes."),
("2023-01-04", "Mejora de habilidades sociales", "Participa en eventos sociales y trabaja en el desarrollo de habilidades de comunicación."),
("2023-01-05", "Bienestar físico diario", "Realiza ejercicio regular y cuida tu alimentación para mantener un cuerpo saludable."),
("2023-01-06", "Mantenimiento de relaciones", "Llama a un amigo o familiar y dedica tiempo a fortalecer tus relaciones."),
("2023-01-07", "Aprendizaje continuo", "Lee un libro o realiza cursos en línea para seguir aprendiendo constantemente."),
("2023-01-08", "Desarrollo personal", "Identifica áreas de mejora y trabaja en el desarrollo de habilidades personales."),
("2023-01-09", "Gestión financiera", "Evalúa tus gastos y ahorra una pequeña cantidad cada mes para tus metas financieras."),
("2023-01-10", "Exploración cultural", "Descubre nuevas culturas a través de la música, la gastronomía y las tradiciones."),
("2023-01-11", "Mindfulness y atención plena", "Practica la atención plena en actividades cotidianas para mejorar la concentración."),
("2023-01-12", "Afrontamiento de retos", "Enfrenta los desafíos con una mentalidad positiva y busca soluciones proactivas."),
("2023-01-13", "Gestión de emociones", "Identifica y comprende tus emociones para manejarlas de manera efectiva."),
("2023-01-14", "Conexión con la naturaleza", "Pasa tiempo al aire libre y conecta con la naturaleza para mejorar tu bienestar."),
("2023-01-15", "Desarrollo profesional", "Establece metas profesionales y trabaja en el desarrollo de habilidades para alcanzarlas."),
("2023-01-16", "Apreciación de pequeños momentos", "Valora los momentos simples y encuentra alegría en las pequeñas cosas."),
("2023-01-17", "Autocuidado y descanso", "Dedica tiempo para descansar y cuidar de ti mismo física y mentalmente."),
("2023-01-18", "Promoción de la empatía", "Ponte en el lugar de los demás y busca comprender sus puntos de vista."),
("2023-01-19", "Gestión de la incertidumbre", "Acepta la incertidumbre como parte de la vida y encuentra formas de adaptarte."),
("2023-01-20", "Gratitud diaria", "Escribe tres cosas por las que te sientes agradecido cada día."),
("2023-01-21", "Alimentación balanceada", "Consume una dieta equilibrada con variedad de alimentos para mantener tu salud."),
("2023-01-22", "Desarrollo de habilidades tecnológicas", "Aprende nuevas habilidades digitales y mantente actualizado con la tecnología."),
("2023-01-23", "Fomento de la resiliencia", "Enfrenta los desafíos con resiliencia y aprendizaje constante."),
("2023-01-24", "Gestión de relaciones laborales", "Cultiva relaciones positivas en el entorno laboral para un ambiente de trabajo saludable."),
("2023-01-25", "Motivación diaria", "Encuentra fuentes de inspiración y motívate para alcanzar tus metas diarias."),
("2023-01-26", "Autoexpresión artística", "Expresa tus emociones a través del arte, ya sea pintura, música o escritura."),
("2023-01-27", "Gestión de la ansiedad", "Practica técnicas de relajación y busca apoyo en momentos de ansiedad."),
("2023-01-28", "Establecimiento de límites", "Define límites saludables en tus relaciones y actividades diarias."),
("2023-01-29", "Participación comunitaria", "Contribuye a tu comunidad a través de actividades voluntarias y participación social."),
("2023-01-30", "Cultivo de la paciencia", "Desarrolla la capacidad de esperar con calma en situaciones desafiantes.");

INSERT INTO META (Fecha, Descripcion, Objetivo) VALUES
("2023-01-01", "Desarrollo de habilidades lingüísticas", "Aprender un nuevo idioma y alcanzar un nivel avanzado en un año."),
("2023-01-02", "Mejora de la salud cardiovascular", "Realizar ejercicios cardiovasculares durante al menos 30 minutos al día."),
("2023-01-03", "Dominio de programación", "Crear y completar tres proyectos de programación significativos."),
("2023-01-04", "Exploración artística", "Participar en exposiciones y presentar al menos dos obras artísticas."),
("2023-01-05", "Fortalecimiento de relaciones familiares", "Organizar reuniones familiares mensuales y fortalecer vínculos."),
("2023-01-06", "Optimización del tiempo", "Implementar técnicas de gestión del tiempo y reducir la procrastinación."),
("2023-01-07", "Aprendizaje musical", "Dominar la interpretación de un instrumento musical en seis meses."),
("2023-01-08", "Creación literaria", "Escribir y publicar un libro o una serie de artículos en línea."),
("2023-01-09", "Inmersión cultural", "Viajar y vivir en un país extranjero durante al menos tres meses."),
("2023-01-10", "Desarrollo de habilidades culinarias", "Aprender y dominar la cocina de al menos tres platos gourmet."),
("2023-01-11", "Innovación tecnológica", "Desarrollar una aplicación móvil o un software innovador."),
("2023-01-12", "Participación comunitaria", "Organizar eventos comunitarios para promover la participación local."),
("2023-01-13", "Promoción de la salud mental", "Participar en prácticas diarias de mindfulness y bienestar mental."),
("2023-01-14", "Conquista de metas físicas", "Completar una maratón o una competencia atlética significativa."),
("2023-01-15", "Apoyo a causas sociales", "Voluntariado regular en organizaciones benéficas o sin fines de lucro."),
("2023-01-16", "Educación continua", "Inscribirse y completar al menos dos cursos académicos adicionales."),
("2023-01-17", "Exploración gastronómica", "Degustar y aprender sobre la cocina de al menos tres culturas diferentes."),
("2023-01-18", "Desarrollo de habilidades de liderazgo", "Asumir un rol de liderazgo en proyectos profesionales."),
("2023-01-19", "Promoción de la sostenibilidad", "Adoptar prácticas de vida más sostenibles y ecoamigables."),
("2023-01-20", "Construcción de relaciones laborales", "Crear y mantener una red profesional sólida."),
("2023-01-21", "Desarrollo de habilidades artísticas", "Aprender técnicas avanzadas en una forma de arte específica."),
("2023-01-22", "Contribución a la comunidad", "Participar activamente en iniciativas de mejora comunitaria."),
("2023-01-23", "Exploración literaria", "Leer y analizar al menos 20 libros de diferentes géneros."),
("2023-01-24", "Fomento de la autenticidad", "Expresar auténticamente tus pensamientos y sentimientos."),
("2023-01-25", "Apoyo a la igualdad", "Participar en actividades que promuevan la igualdad y la diversidad."),
("2023-01-26", "Desarrollo de habilidades de comunicación", "Mejorar la capacidad de comunicación oral y escrita."),
("2023-01-27", "Fomento de la empatía", "Participar en actividades que desarrollen la empatía hacia los demás."),
("2023-01-28", "Mantenimiento de la salud emocional", "Participar en prácticas regulares que fomenten el bienestar emocional."),
("2023-01-29", "Exploración científica", "Participar en proyectos de investigación o experimentación."),
("2023-01-30", "Desarrollo de habilidades de resolución de problemas", "Enfrentar y resolver desafíos de manera efectiva.");


