# -*- coding: utf-8 -*-
# Generated by Django 1.11.13 on 2018-08-06 12:00
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ("registration", "0025_auto_20180424_2005"),
    ]

    operations = [
        migrations.AlterModelOptions(
            name="job",
            options={"ordering": ["pk"]},
        ),
    ]
