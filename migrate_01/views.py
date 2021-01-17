from django.shortcuts import render
from .models import Departamento, Asignatura, Profesor
# Create your views here.

def asignaturax(request):

    departamento = Departamento.objects.create(
        nombre='filosofia'
    )

    departamento.save()
    departamento_id = Departamento.objects.all()[0]
    for i in range(0,1):
        asignatura = Asignatura(nombre= 'Walter',
        descripcion = 'walter es muy pesaito',
        departamento = departamento_id
        )    
    asignatura.save()
    Departamento.objects.values()
    asignatura = Asignatura.objects.values()
    context = {'asig': asignatura}    
    return render(request, 'migrate_01/asignatura.html', context)


def profesorx(request):
    for i in range(0,1):
        profe = Profesor.objects.create(nombre= 'Claudio',
        apellido = 'Caniullan',
        escuela = 'Manuel de salas',
        fecha_de_contratacion = '2017-02-28',
        sueldo = 1100000
        )
    profe.save()
    profe = Profesor.objects.values()
    context = {'Profe': profe}
    return render(request, 'migrate_01/profesor.html', context)



