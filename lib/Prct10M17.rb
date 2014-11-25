require "Prct10M17/version"
require "Prct10M17/seleccionsimple"
require "Prct10M17/verdaderoyfalso"
require "Prct10M17/interfaz"

@Li = List.new(SeleccionSimple.new(4, 4, "Pregunta 1", ["1. Respuesta Incorrecta", "2. Respuesta Incorrecta", "3. Respuesta Incorrecta", "4. Respuesta Correcta"]))
@Li.add([VerdaderoYFalso.new(3, 1, "Pregunta 2 [Verdadero]"), VerdaderoYFalso.new(3, 3, "Pregunta 3 [Falso]")])

@Exam = Examen.new(@Li)
@Exam.invertir(@Exam.preguntas())
@Exam.invertir(@Exam.respuestas())

@In = Interfaz.new(@Exam)
@In.simular()