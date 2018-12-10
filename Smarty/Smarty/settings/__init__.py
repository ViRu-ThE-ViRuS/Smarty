"""
Smarty.settings.__init__.py
"""

import logging
from termcolor import colored
from .base_settings import *


logger = logging.getLogger(__name__)


try:
    from .local_settings import *

    logger.info(colored('Using local_settings.py configuration', 'green'))
except ImportError as e:
    logger.warning(
        colored(
            'No local_settings.py configuration present, using base_settings.py configuration',
            'red'))
