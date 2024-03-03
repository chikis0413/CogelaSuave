// Array para almacenar eventos
const eventos = [];

// Función para agregar un evento
function agregarEvento() {
    const nombre = document.getElementById('nombre').value;
    const fecha = document.getElementById('fecha').value;
    const descripcion = document.getElementById('descripcion').value;

    // Validar que los campos no estén vacíos
    if (nombre && fecha && descripcion) {
        const evento = {
            nombre,
            fecha,
            descripcion
        };

        // Agregar el evento al array
        eventos.push(evento);

        // Limpiar el formulario
        document.getElementById('formulario').reset();

        // Actualizar el historial
        actualizarHistorial();
    } else {
        alert('Por favor, complete todos los campos.');
    }
}

// Función para actualizar el historial en la interfaz
function actualizarHistorial() {
    const historialDiv = document.getElementById('historial');
    historialDiv.innerHTML = '<h2>Historial de Eventos</h2>';

    if (eventos.length === 0) {
        historialDiv.innerHTML += '<p>No hay eventos registrados.</p>';
    } else {
        eventos.forEach(evento => {
            historialDiv.innerHTML += `
                <div class="evento">
                    <strong>${evento.nombre}</strong>
                    <p><strong>Fecha:</strong> ${evento.fecha}</p>
                    <p><strong>Descripción:</strong> ${evento.descripcion}</p>
                </div>
            `;
        });
    }
}
