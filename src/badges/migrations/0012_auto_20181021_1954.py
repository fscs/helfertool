# -*- coding: utf-8 -*-
# Generated by Django 1.11.16 on 2018-10-21 17:54
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("badges", "0011_set_barcode"),
    ]

    operations = [
        migrations.AlterField(
            model_name="badgerole",
            name="permissions",
            field=models.ManyToManyField(blank=True, to="badges.BadgePermission", verbose_name="Permissions"),
        ),
    ]
