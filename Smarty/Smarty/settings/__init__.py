"""
Smarty.settings.__init__.py
"""

# TODO: add proper logging
from termcolor import colored

from .base_settings import *

try:
    from .local_settings import *

    print(colored('Using local_settings.py configuration', 'green'))
except ImportError as e:
    print(
        colored(
            'No local_settings.py configuration present, using base_settings.py configuration',
            'red'))
