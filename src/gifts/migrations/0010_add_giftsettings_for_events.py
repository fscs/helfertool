# Generated by Django 2.2.11 on 2020-03-24 18:27

from django.db import migrations


def create_giftsettings(apps, schema_editor):
    Event = apps.get_model("registration", "Event")
    GiftSettings = apps.get_model("gifts", "GiftSettings")

    for event in Event.objects.all():
        if event.gifts:
            GiftSettings.objects.create(event=event)


class Migration(migrations.Migration):

    dependencies = [
        ("gifts", "0009_giftsettings"),
    ]

    operations = [
        migrations.RunPython(create_giftsettings, reverse_code=migrations.RunPython.noop),
    ]
