{
    "job": {
        "setting": {
        },
        "content": [
            {
                "reader": {
                    "name": "mysqlreader",    
                    "parameter": {
                        "username": "{username}",
                        "password": "{passwd}",
                        "checkSlave":true,
                        "column": [
                            "{column_name}"
                        ],
                        "splitPk": "{pk}",
                        "connection": [
                            {
                                "table": [
                                    "{table_name}"
                                ],
                                "jdbcUrl": ["jdbc:mysql://{MySQL_HOST}:{MySQL_PORT}/{Database}"]
                            }
                        ]
                    }
                },
               "writer": {
                    "name": "otswriter",
                    "parameter": {
                        "endpoint":"{endpointnt}",
                        "accessId":"{accessId}",
                        "accessKey":"{accessKey}",
                        "instanceName":"{instanceName}",
                        "table":"{table}",
                        "primaryKey" : [
                            {"name":"{column_name}", "type":"{column_type}"}
                        ],
                        "column" : [
                            {"name":"{column_name}", "type":"{column_type}"}
                        ],
                        "writeMode" : "PutRow"
                    }
                }
            }
        ]
    }
}
