# Generated by Django 3.1.1 on 2020-09-13 11:41

from django.db import migrations


def fill_event_field(apps, schema_editor):
    Badge = apps.get_model("badges", "Badge")

    for badge in Badge.objects.all():
        badge.event = badge.helper.event
        badge.save()


class Migration(migrations.Migration):

    dependencies = [
        ("badges", "0015_badge_add_event"),
    ]

    operations = [
        migrations.RunPython(fill_event_field, reverse_code=migrations.RunPython.noop),
    ]
