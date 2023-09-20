from django.shortcuts import render
from django.http import HttpResponse, HttpResponseNotFound
from django.template.loader import render_to_string


def registration(request, diving_certificate):
    # response = render_to_string('diving/certificate.html')
    if diving_certificate == 'diving':
        return HttpResponse("Страница для регистрации данных")
    else:
        return HttpResponseNotFound(f'Неверный роут {diving_certificate}')
