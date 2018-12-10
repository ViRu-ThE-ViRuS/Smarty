"""
main.views.py
"""

from django.shortcuts import render


def index_view(request):
    """
    handle request on '/'

    :param request: http request
    :return: rendered view
    """
    return render(request, 'index.html', {})
