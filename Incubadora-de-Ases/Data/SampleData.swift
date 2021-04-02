//
//  SampleData.swift
//  Incubadora-de-Ases
//
//

import Foundation
import SwiftUI

let columns = [
        GridItem(.flexible(minimum: 100), spacing: 20),
        GridItem(.flexible(minimum: 100), spacing: 20),
        GridItem(.flexible(minimum: 100), spacing: 20),
        GridItem(.flexible(minimum: 100), spacing: 20)
]

var sampleDashboard = Grid(imageFiles: ["Calendar","Biblioteca","Wiki","Tops", "Curso", "Estadisticas","Vitrina","Foros","Dibujo","Grupos","Pruebas","Chat"], imageViews: [AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(SubjectsGridView(grid: sampleSubjects)),AnyView(StatisticsFullView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(TestsView()),AnyView(ChatFullView())])

var sampleDetailSubjects = Grid(imageFiles: ["Historia","Matematicas","Idioma","Basicas", "Inglesa", "Economia","Religion","Chino","Geometria","Logica","Psicologia","Informatica"], imageViews: [AnyView(SubjectsMainView()),AnyView(SubjectsMainView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView())], imageNames: ["Numeros 1", "Numeros 2", "Algebra 1", "Algebra 2", "Algebra 3", "Geometria", "Fracciones", "Calculo","Geometria","Calculo 2", "Calculo 3", "Calculo"])


var sampleSubjects = Grid(imageFiles: ["Historia","Matematicas","Idioma","Basicas", "Inglesa", "Economia","Religion","Chino","Geometria","Logica","Psicologia","Informatica"], imageViews: [AnyView(FutureView()),AnyView(SubjectsGridView(grid: sampleDetailSubjects)),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView())])

var sampleAchievments = Grid(imageFiles: ["RectangleGray","RectangleGray","RectangleGray","RectangleGray","RectangleGray","RectangleGray","RectangleGray","RectangleGray","RectangleGray","RectangleGray","RectangleGray","RectangleGray"], imageViews: [AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView())] ,imageNames:["Calendar","Biblioteca","Wiki","Tops", "Curso", "Estadisticas","Vitrina","Foros","Dibujo","Grupos","Pruebas","Chat"])
