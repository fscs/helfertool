# Generated by Django 2.2.11 on 2020-03-24 18:56

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ("gifts", "0010_add_giftsettings_for_events"),
        ("registration", "0036_add_helpershift_to_helper"),
    ]

    operations = [
        migrations.RemoveField(
            model_name="helpersgifts",
            name="accomplished_shifts",
        ),
    ]
