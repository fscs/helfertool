# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-03-26 15:36
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("help", "0002_auto_20161108_1826"),
    ]

    operations = [
        migrations.AlterField(
            model_name="issue",
            name="subject",
            field=models.CharField(
                choices=[
                    ("newevent", "New event"),
                    ("promoteevent", "Promote event"),
                    ("permadduser", "Permission to add new users"),
                    ("permaddevent", "Permission to add new events"),
                    ("feature", "Feature request"),
                    ("bug", "Bug report"),
                    ("other", "Other topic"),
                ],
                max_length=20,
                verbose_name="Subject",
            ),
        ),
    ]
