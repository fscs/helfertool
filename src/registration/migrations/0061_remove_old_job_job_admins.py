# Generated by Django 3.2.13 on 2022-06-04 13:20

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ("registration", "0060_migrate_job_admin_roles"),
    ]

    operations = [
        migrations.RemoveField(
            model_name="job",
            name="job_admins",
        ),
        migrations.RenameField(
            model_name="job",
            old_name="job_admins_new",
            new_name="job_admins",
        ),
    ]
