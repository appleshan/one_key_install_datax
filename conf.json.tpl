{
    "job": {
        "setting": {
            "speed": {
                "channel": "1"
            }
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
                            "user_id", 
                            "user_type",
                            "legacy_instance",
                            "instance_count",
                            "quota",
                            "description",
                            "create_time",
                            "timestamp" 
                        ],
                        "splitPk": "user_id",
                        "connection": [
                            {
                                "table": [
                                    "user_info"
                                ],
                                "jdbcUrl": ["jdbc:mysql://127.0.0.1:3306/{database}"]
                            }
                        ]
                    }
                },
               "writer": {
                    "name": "otswriter",
                    "parameter": {
                        "endpoint":"{ots_endpoint}",
                        "accessId":"{ots_accesssid}",
                        "accessKey":"{ots_accesskey}",
                        "instanceName":"{ots_instalce_name}",
                        "table":"user_info",
                        "primaryKey" : [
                            {"name":"user_id", "type":"string"}
                        ],
                        "column" : [
                            {"name":"user_type", "type":"string"},
                            {"name":"legacy_instance", "type":"string"},
                            {"name":"instance_count", "type":"int"},
                            {"name":"quota", "type":"string"},
                            {"name":"description", "type":"string"},
                            {"name":"create_time", "type":"int"},
                            {"name":"timestamp", "type":"int"}
                        ],
                        "writeMode" : "PutRow"
                    }
                }
            }
        ]
    }
}
