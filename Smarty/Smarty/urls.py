"""
Smarty.urls.py
"""

from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),

    path(r'', include('main.urls')),  # defaults to main app
    path('main/', include('main.urls'))
]
