# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2016-07-04 10:14
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("registration", "0012_remove_helper_got_shirt"),
    ]

    operations = [
        migrations.AddField(
            model_name="event",
            name="archived",
            field=models.BooleanField(default=False, verbose_name="Event is archived"),
        ),
        migrations.AddField(
            model_name="job",
            name="archived_number_coordinators",
            field=models.IntegerField(default=0, verbose_name="Number of coordinators for archived event"),
        ),
        migrations.AddField(
            model_name="shift",
            name="archived_number",
            field=models.IntegerField(default=0, verbose_name="Number of registered helpers for archived event"),
        ),
    ]
