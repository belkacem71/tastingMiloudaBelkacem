from tortoise import fields
from tortoise.models import Model

class tach(Model):
    id = fields.IntField(pk=True)
    name = fields.CharField(max_length=20)
    dec = fields.CharField(max_length=200)
    com = fields.BooleanField(default=False)

    def __str__(self):
        return self.name

class Aerich(Model):
    id = fields.IntField(pk=True)
    version = fields.CharField(max_length=255)
    app = fields.CharField(max_length=100)
    content = fields.JSONField()

    class Meta:
        table = "aerich"

    def __str__(self):
        return self.app
