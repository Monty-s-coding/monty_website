from django.urls import path
from . import views

urlpatterns = [
    path('<diving_certificate>', views.registration),
]
