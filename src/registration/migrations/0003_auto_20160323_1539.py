# -*- coding: utf-8 -*-
# Generated by Django 1.9.4 on 2016-03-23 14:39
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("registration", "0002_event_date"),
    ]

    operations = [
        migrations.AlterField(
            model_name="event",
            name="email",
            field=models.EmailField(
                default="helfertool@localhost",
                help_text="Used as sender of e-mails.",
                max_length=254,
                verbose_name="E-Mail",
            ),
        ),
    ]
