# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2016-06-09 20:49
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):
    dependencies = [
        ("registration", "0011_helper_got_shirt"),
    ]

    operations = [
        migrations.RemoveField(
            model_name="helper",
            name="got_shirt",
        ),
    ]
