from django.urls import path

from .views import index_view

urlpatterns = [
    path(r'', index_view, name='index')
]
