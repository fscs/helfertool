# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2016-06-09 19:25
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("registration", "0010_shift_gifts"),
    ]

    operations = [
        migrations.AddField(
            model_name="helper",
            name="got_shirt",
            field=models.BooleanField(default=False, verbose_name="Helper got her T-shirt"),
        ),
    ]
