{
  "version": "1.2",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "bd6c207f-9b84-4f68-8474-d9aea34c00cf",
          "type": "basic.input",
          "data": {
            "name": "Set",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "SW1",
                "value": "34"
              }
            ],
            "clock": false,
            "isParametric": false
          },
          "position": {
            "x": 104,
            "y": 288
          }
        },
        {
          "id": "d2360b79-bbc0-4dea-8819-fdf58227a87c",
          "type": "basic.output",
          "data": {
            "name": "led",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "LED0",
                "value": "45"
              }
            ]
          },
          "position": {
            "x": 664,
            "y": 304
          }
        },
        {
          "id": "59d1367e-e024-4866-9a6d-2c3fa3b92b8b",
          "type": "9261a37230c4b8f6e671bb2b0f4cd7c62ef30c57",
          "position": {
            "x": 448,
            "y": 304
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "3641c990-b72d-49f1-a05d-5f45fca3c822",
          "type": "a98432f16988cba6e3b93bef2bd32a35fbc3aab3",
          "position": {
            "x": 272,
            "y": 304
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "672cbd9b-bc53-464c-b993-ddf41a57b093",
          "type": "basic.info",
          "data": {
            "info": "wire",
            "readonly": true
          },
          "position": {
            "x": 480,
            "y": 280
          },
          "size": {
            "width": 64,
            "height": 32
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "59d1367e-e024-4866-9a6d-2c3fa3b92b8b",
            "port": "2b85c5e1-bb19-4b5d-a098-b260f5bd1a78"
          },
          "target": {
            "block": "d2360b79-bbc0-4dea-8819-fdf58227a87c",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "3641c990-b72d-49f1-a05d-5f45fca3c822",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "59d1367e-e024-4866-9a6d-2c3fa3b92b8b",
            "port": "969e11ca-69e8-403b-a566-7bf2fbe3a5a8"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "bd6c207f-9b84-4f68-8474-d9aea34c00cf",
            "port": "out"
          },
          "target": {
            "block": "3641c990-b72d-49f1-a05d-5f45fca3c822",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "59d1367e-e024-4866-9a6d-2c3fa3b92b8b",
            "port": "2b85c5e1-bb19-4b5d-a098-b260f5bd1a78"
          },
          "target": {
            "block": "3641c990-b72d-49f1-a05d-5f45fca3c822",
            "port": "97b51945-d716-4b6c-9db9-970d08541249"
          },
          "vertices": [
            {
              "x": 600,
              "y": 448
            }
          ]
        }
      ]
    }
  },
  "dependencies": {
    "9261a37230c4b8f6e671bb2b0f4cd7c62ef30c57": {
      "package": {
        "name": "Cable",
        "version": "0.1",
        "description": "Un simple cable",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22352.857%22%20height=%224%22%20viewBox=%220%200%2093.360123%201.0583333%22%3E%3Cpath%20d=%22M0%20.53h93.36%22%20fill=%22green%22%20stroke=%22green%22%20stroke-width=%221.058%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "969e11ca-69e8-403b-a566-7bf2fbe3a5a8",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 136,
                "y": 200
              }
            },
            {
              "id": "2b85c5e1-bb19-4b5d-a098-b260f5bd1a78",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 584,
                "y": 200
              }
            },
            {
              "id": "16e78204-213e-4833-9096-89d735307ec2",
              "type": "basic.code",
              "data": {
                "code": "assign o = i;\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i"
                    }
                  ],
                  "out": [
                    {
                      "name": "o"
                    }
                  ]
                }
              },
              "position": {
                "x": 296,
                "y": 176
              },
              "size": {
                "width": 224,
                "height": 112
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o"
              },
              "target": {
                "block": "2b85c5e1-bb19-4b5d-a098-b260f5bd1a78",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "969e11ca-69e8-403b-a566-7bf2fbe3a5a8",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i"
              }
            }
          ]
        }
      },
      "settings": {
        "version": 1,
        "tools": {
          "verify": {
            "override": false,
            "relaxRealToInt": false,
            "relaxIoPrimitives": false,
            "allowLogicLoops": false,
            "verilatorFlags": ""
          },
          "build": {
            "override": false,
            "yosysFlags": "",
            "nextpnrFlags": ""
          },
          "upload": {
            "override": false
          }
        }
      }
    },
    "a98432f16988cba6e3b93bef2bd32a35fbc3aab3": {
      "package": {
        "name": "OR2",
        "version": "1.0.2",
        "description": "OR2: Two bits input OR gate",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20height=%22192.718%22%20width=%22383.697%22%20version=%221%22%3E%3Cpath%20d=%22M175.56%20188.718H84.527s30.345-42.538%2031.086-94.03c.743-51.49-31.821-90.294-31.821-90.294L176.109%204c46.445%201.948%20103.899%2053.44%20123.047%2093.678-32.601%2067.503-92.158%2089.79-123.596%2091.04z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M4.057%2047.292h99.605M4.883%20145.168h100.981M298.57%2098.89h81.07%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2266.317%22%20y=%22121.28%22%20x=%22131.572%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20font-weight=%22700%22%20y=%22121.28%22%20x=%22131.572%22%3EOR%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 112,
                "y": 40
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 608,
                "y": 72
              }
            },
            {
              "id": "97b51945-d716-4b6c-9db9-970d08541249",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 112,
                "y": 96
              }
            },
            {
              "id": "00925b04-5004-4307-a737-fa4e97c8b6ab",
              "type": "basic.code",
              "data": {
                "code": "//-- OR Gate\n//-- Verilog implementation\n\nassign c = a | b;\n\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    },
                    {
                      "name": "b"
                    }
                  ],
                  "out": [
                    {
                      "name": "c"
                    }
                  ]
                }
              },
              "position": {
                "x": 256,
                "y": 48
              },
              "size": {
                "width": 312,
                "height": 104
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "c"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "a"
              }
            },
            {
              "source": {
                "block": "97b51945-d716-4b6c-9db9-970d08541249",
                "port": "out"
              },
              "target": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "b"
              }
            }
          ]
        }
      },
      "settings": {
        "version": 1,
        "tools": {
          "verify": {
            "override": false,
            "relaxRealToInt": false,
            "relaxIoPrimitives": false,
            "allowLogicLoops": false,
            "verilatorFlags": ""
          },
          "build": {
            "override": false,
            "yosysFlags": "",
            "nextpnrFlags": ""
          },
          "upload": {
            "override": false
          }
        }
      }
    }
  },
  "settings": {
    "version": 1,
    "tools": {
      "verify": {
        "override": false,
        "relaxRealToInt": false,
        "relaxIoPrimitives": false,
        "allowLogicLoops": false,
        "verilatorFlags": ""
      },
      "build": {
        "override": false,
        "yosysFlags": "",
        "nextpnrFlags": ""
      },
      "upload": {
        "override": false
      }
    }
  }
}