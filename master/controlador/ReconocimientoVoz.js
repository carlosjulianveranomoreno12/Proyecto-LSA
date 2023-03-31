var final_transcript = '';
var recognizing = false;
var ignore_onend;
var start_timestamp;

if (!('webkitSpeechRecognition' in window)) { //verifica si el webkitSpeechRecognition objeto existe (navegador actualizado)
  upgrade();
} else {
  var recognition = new webkitSpeechRecognition();
  recognition.continuous = true; //Reconocimiento de voz continúa si el usario también hace una pausa
  recognition.interimResults = true; //Puede obtener resultados preliminares que pueden cambiar

  recognition.onstart = function() { //Es llamado al capturar la voz por el startButton(). Controlador de eventos
    recognizing = true;
    //start_img.src = 'img/microfono2.png';
  };

  recognition.onend = function() { //MÉTODO FINZALIZAR RECONOCIMIENTO
    recognizing = false;
    if (ignore_onend) {
      return;
    }
    start_img.src = 'vista/img/microfono.png'; //MICRÓFONO INICIAL (NEGRO)
    if (!final_transcript) {
      return;
    }
  };

  recognition.onresult = function(event) { //Es llamado al obtener nuevos conjuntos de resultados. Controlador de eventos.
    var interim_transcript = '';
    if (typeof(event.results) == 'undefined') {
      recognition.onend = null;
      recognition.stop();
      upgrade();
      return;
    }
    for (var i = event.resultIndex; i < event.results.length; ++i) { //Palabras reconocidas en el dictado
      if (event.results[i].isFinal) {
        final_transcript += event.results[i][0].transcript; //Obtener palabra final (negra)
      } else {
        interim_transcript += event.results[i][0].transcript; //Obtener palabra provisional (gris)
      }
    }
    final_transcript = capitalize(final_transcript);
    document.getElementById("inputTexto").value = final_transcript + interim_transcript; //Pasar resultados a textarea
  };
}

function upgrade() {
  start_button.style.visibility = 'hidden';
}

var first_char = /\S/;
function capitalize(s) { //MÉTODO PARA LETRA INICIAL EN MAYÚSCULA
  return s.replace(first_char, function(m) { return m.toUpperCase(); });
}

function iniciarReconocimientoVoz(event) { //MÉTODO INICIAR GRABACIÓN
    if (recognizing) {
      recognition.stop();
      return;
    }
    final_transcript = ''; //PALABRA INICIAL
    recognition.lang = "es-CO"; //IDIOMA A DETECTAR
    recognition.start(); //ACTIVAR RECONOCIMIENTO
    ignore_onend = false;
    start_img.src = 'vista/img/microfono2.png'; //MICRÓFONO GRABANDO (ROJO)
  }