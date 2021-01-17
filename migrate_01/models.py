from django.db import models

# Create your models here.

class Departamento(models.Model):
    
    nombre = models.CharField(max_length=15)


class Asignatura(models.Model):
    nombre = models.CharField(max_length=25)
    descripcion = models.CharField(max_length=250) 
    departamento = models.ForeignKey(Departamento,on_delete=models.CASCADE)


class Profesor(models.Model):
    nombre = models.CharField(max_length=25)
    apellido = models.CharField(max_length=25)
    escuela = models.CharField(max_length=30)
    fecha_de_contratacion = models.DateField()
    sueldo = models.IntegerField()


