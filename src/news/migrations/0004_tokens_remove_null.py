# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-03-26 10:54
from __future__ import unicode_literals

from django.db import migrations, models
import uuid


class Migration(migrations.Migration):

    dependencies = [
        ("news", "0003_generate_tokens"),
    ]

    operations = [
        migrations.AlterField(
            model_name="person",
            name="token",
            field=models.UUIDField(default=uuid.uuid4, editable=False, unique=True),
        ),
    ]
