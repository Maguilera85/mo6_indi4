# Generated by Django 3.1.5 on 2021-01-17 23:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('migrate_01', '0005_auto_20210117_1359'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='departamento',
            name='id',
        ),
        migrations.AddField(
            model_name='departamento',
            name='departamento_id',
            field=models.AutoField(default=None, primary_key=True, serialize=False),
        ),
    ]
