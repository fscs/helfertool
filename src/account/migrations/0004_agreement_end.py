# -*- coding: utf-8 -*-
# Generated by Django 1.11.18 on 2019-02-03 12:13
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("account", "0003_auto_20190203_1239"),
    ]

    operations = [
        migrations.AddField(
            model_name="agreement",
            name="end",
            field=models.DateField(blank=True, null=True, verbose_name="End date"),
        ),
    ]
