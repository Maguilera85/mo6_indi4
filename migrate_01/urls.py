from django.urls import path
from . import views

urlpatterns = [
    path('asignatura/', views.asignaturax , name = 'asignatura'),
    path('profesor/', views.profesorx , name = 'profesor' ),
]