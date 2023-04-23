# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2016-07-30 13:04
from __future__ import unicode_literals

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):
    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ("mail", "0001_initial"),
    ]

    operations = [
        migrations.AddField(
            model_name="sentmail",
            name="user",
            field=models.ForeignKey(
                default=None, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL
            ),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name="sentmail",
            name="cc",
            field=models.EmailField(blank=True, max_length=254),
        ),
        migrations.AlterField(
            model_name="sentmail",
            name="response_to",
            field=models.EmailField(blank=True, max_length=254),
        ),
    ]
