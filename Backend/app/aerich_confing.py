ORM_MIGRATION_SQL = {
    "connections": {
        "default":  "mysql://root:@localhost/tach_db",
    },
    "apps": {
        "models": {
            "models": ["app.tortoise_models", 
                       "aerich.models",
                       "tests.models"],
            "default_connection": "default",
        },
    },
}