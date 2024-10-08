# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-04-16 14:36
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("registration", "0017_auto_20170210_1726"),
    ]

    operations = [
        migrations.AddField(
            model_name="event",
            name="changes_until",
            field=models.DateField(
                blank=True,
                help_text="Helpers can change their personal data and shifts until this date themselves. Leave emtpy to disable this.",
                null=True,
                verbose_name="Deregistration and changes possible until",
            ),
        ),
    ]
