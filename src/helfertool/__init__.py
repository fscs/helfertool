from __future__ import absolute_import

from .celery import app as celery_app  # noqa

import os
import sys

def django_manage():
    os.environ.setdefault("DJANGO_SETTINGS_MODULE", "myproject.settings")
    from django.core.management import execute_from_command_line
    execute_from_command_line(sys.argv)


__all__ = ["celery_app"]
print("etf")
