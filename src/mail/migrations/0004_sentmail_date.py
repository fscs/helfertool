# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2016-07-30 13:12
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("mail", "0003_auto_20160730_1505"),
    ]

    operations = [
        migrations.AddField(
            model_name="sentmail",
            name="date",
            field=models.DateTimeField(auto_now_add=True, default=None),
            preserve_default=False,
        ),
    ]
