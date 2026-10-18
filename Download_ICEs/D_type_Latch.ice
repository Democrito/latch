{
  "version": "1.2",
  "package": {
    "name": "Type_D_Latch",
    "version": "0.1",
    "description": "D Type Lach",
    "author": "DemocritoBinary",
    "image": ""
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "4e795782-49b9-4944-9f19-a139d2147f8d",
          "type": "basic.input",
          "data": {
            "name": "d",
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
            "x": 176,
            "y": 192
          }
        },
        {
          "id": "5af74fb9-151f-4e6a-ad01-9014497367af",
          "type": "basic.output",
          "data": {
            "name": "Q",
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
            "x": 1192,
            "y": 208
          }
        },
        {
          "id": "68a628e7-1272-4cfd-b25f-76d8feb314ea",
          "type": "basic.output",
          "data": {
            "name": "nQ",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "LED7",
                "value": "37"
              }
            ]
          },
          "position": {
            "x": 1192,
            "y": 312
          }
        },
        {
          "id": "1b94344f-a54d-405e-87b6-d2d2f301dc6a",
          "type": "basic.input",
          "data": {
            "name": "cp",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "SW2",
                "value": "33"
              }
            ],
            "clock": false,
            "isParametric": false
          },
          "position": {
            "x": 176,
            "y": 312
          }
        },
        {
          "id": "eb1965a3-7af6-4b20-87df-be325f8f393b",
          "type": "53d849a82d9eb092392eb84cbb2da7018bbec4c0",
          "position": {
            "x": 896,
            "y": 208
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "c077522a-41ff-4a29-a695-020a5ce1e9a1",
          "type": "00ec8ab2a59df7d8c297e51c6135ea187959dad3",
          "position": {
            "x": 752,
            "y": 192
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "fe125a99-72e1-40f0-bc0a-bab2c3d36ff4",
          "type": "35f267d0df6ffcb7fc33753bc9df9cf083642cca",
          "position": {
            "x": 752,
            "y": 280
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "399f0752-06bc-4cc1-a75c-e9e609810afb",
          "type": "53d849a82d9eb092392eb84cbb2da7018bbec4c0",
          "position": {
            "x": 600,
            "y": 208
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "c2202364-30d1-4078-a329-5cffd9c9450c",
          "type": "53d849a82d9eb092392eb84cbb2da7018bbec4c0",
          "position": {
            "x": 600,
            "y": 280
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "edd479f2-193e-4fca-8999-552f259f79ea",
          "type": "35f267d0df6ffcb7fc33753bc9df9cf083642cca",
          "position": {
            "x": 432,
            "y": 264
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "112604cb-5c74-4357-a384-ba4f06011ff5",
          "type": "35f267d0df6ffcb7fc33753bc9df9cf083642cca",
          "position": {
            "x": 1064,
            "y": 312
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "c66edf77-9645-4bca-8bfb-960fc7e33e0c",
          "type": "basic.info",
          "data": {
            "info": "# D Type Latch",
            "readonly": true
          },
          "position": {
            "x": 568,
            "y": 48
          },
          "size": {
            "width": 168,
            "height": 32
          }
        },
        {
          "id": "8894159e-a871-4d83-b569-3c6e7e91f941",
          "type": "basic.info",
          "data": {
            "info": "Clock Pulse",
            "readonly": true
          },
          "position": {
            "x": 184,
            "y": 288
          },
          "size": {
            "width": 80,
            "height": 32
          }
        },
        {
          "id": "f79c2ed8-49d4-46d9-bb8d-8e9abdf365b6",
          "type": "basic.info",
          "data": {
            "info": "Data",
            "readonly": true
          },
          "position": {
            "x": 208,
            "y": 168
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
            "block": "399f0752-06bc-4cc1-a75c-e9e609810afb",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "c077522a-41ff-4a29-a695-020a5ce1e9a1",
            "port": "97b51945-d716-4b6c-9db9-970d08541249"
          }
        },
        {
          "source": {
            "block": "c2202364-30d1-4078-a329-5cffd9c9450c",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "fe125a99-72e1-40f0-bc0a-bab2c3d36ff4",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "edd479f2-193e-4fca-8999-552f259f79ea",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "c2202364-30d1-4078-a329-5cffd9c9450c",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "4e795782-49b9-4944-9f19-a139d2147f8d",
            "port": "out"
          },
          "target": {
            "block": "399f0752-06bc-4cc1-a75c-e9e609810afb",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "1b94344f-a54d-405e-87b6-d2d2f301dc6a",
            "port": "out"
          },
          "target": {
            "block": "399f0752-06bc-4cc1-a75c-e9e609810afb",
            "port": "97b51945-d716-4b6c-9db9-970d08541249"
          },
          "vertices": [
            {
              "x": 304,
              "y": 264
            }
          ]
        },
        {
          "source": {
            "block": "4e795782-49b9-4944-9f19-a139d2147f8d",
            "port": "out"
          },
          "target": {
            "block": "edd479f2-193e-4fca-8999-552f259f79ea",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          },
          "vertices": [
            {
              "x": 352,
              "y": 272
            }
          ]
        },
        {
          "source": {
            "block": "1b94344f-a54d-405e-87b6-d2d2f301dc6a",
            "port": "out"
          },
          "target": {
            "block": "c2202364-30d1-4078-a329-5cffd9c9450c",
            "port": "97b51945-d716-4b6c-9db9-970d08541249"
          },
          "vertices": [
            {
              "x": 296,
              "y": 344
            }
          ]
        },
        {
          "source": {
            "block": "112604cb-5c74-4357-a384-ba4f06011ff5",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "68a628e7-1272-4cfd-b25f-76d8feb314ea",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "c077522a-41ff-4a29-a695-020a5ce1e9a1",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "eb1965a3-7af6-4b20-87df-be325f8f393b",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "eb1965a3-7af6-4b20-87df-be325f8f393b",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "5af74fb9-151f-4e6a-ad01-9014497367af",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "eb1965a3-7af6-4b20-87df-be325f8f393b",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "c077522a-41ff-4a29-a695-020a5ce1e9a1",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          },
          "vertices": [
            {
              "x": 1040,
              "y": 128
            }
          ]
        },
        {
          "source": {
            "block": "eb1965a3-7af6-4b20-87df-be325f8f393b",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "112604cb-5c74-4357-a384-ba4f06011ff5",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          }
        },
        {
          "source": {
            "block": "fe125a99-72e1-40f0-bc0a-bab2c3d36ff4",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "eb1965a3-7af6-4b20-87df-be325f8f393b",
            "port": "97b51945-d716-4b6c-9db9-970d08541249"
          }
        }
      ]
    }
  },
  "dependencies": {
    "53d849a82d9eb092392eb84cbb2da7018bbec4c0": {
      "package": {
        "name": "AND",
        "version": "1.0.1",
        "description": "Puerta AND",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22336.09%22%20height=%22194.045%22%20version=%221%22%3E%3Cpath%20d=%22M174.656%20190.045H78.304V4h96.352s87.463%208.625%2087.463%2091.94c0%2083.311-87.463%2094.105-87.463%2094.105z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M4.057%2045.668h74.018M4.057%20144.812h74.018m184.632-50.034h69.326%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2292.894%22%20y=%22114.587%22%20font-weight=%22400%22%20font-size=%2258.054%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%2292.894%22%20y=%22114.587%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EAND%3C/tspan%3E%3C/text%3E%3C/svg%3E"
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
                "x": 64,
                "y": 88
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 784,
                "y": 152
              }
            },
            {
              "id": "97b51945-d716-4b6c-9db9-970d08541249",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 224
              }
            },
            {
              "id": "00925b04-5004-4307-a737-fa4e97c8b6ab",
              "type": "basic.code",
              "data": {
                "code": "//-- Puerta AND\n\n//-- module and (input wire a, input wire b,\n//--             output wire c);\n\nassign c = a & b;\n\n//-- endmodule",
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
                "width": 464,
                "height": 272
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
    },
    "00ec8ab2a59df7d8c297e51c6135ea187959dad3": {
      "package": {
        "name": "OR",
        "version": "1.0.1",
        "description": "Puerta OR",
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
                "x": 64,
                "y": 88
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 784,
                "y": 152
              }
            },
            {
              "id": "97b51945-d716-4b6c-9db9-970d08541249",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 224
              }
            },
            {
              "id": "00925b04-5004-4307-a737-fa4e97c8b6ab",
              "type": "basic.code",
              "data": {
                "code": "//-- Puerta OR\n\n//-- module and (input wire a, input wire b,\n//--             output wire c);\n\nassign c = a | b;\n\n//-- endmodule",
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
                "width": 464,
                "height": 272
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
    },
    "35f267d0df6ffcb7fc33753bc9df9cf083642cca": {
      "package": {
        "name": "NOT",
        "version": "1.0.3",
        "description": "Puerta NOT",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22317.651%22%20height=%22194.058%22%20version=%221%22%3E%3Cpath%20d=%22M69.246%204l161.86%2093.027-161.86%2093.031V4z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linejoin=%22round%22/%3E%3Cellipse%20cx=%22253.352%22%20cy=%2296.736%22%20rx=%2221.393%22%20ry=%2221.893%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M4.057%2097.49h65.262m205.796%200h38.48%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2281.112%22%20y=%22111.734%22%20transform=%22scale(.99532%201.0047)%22%20font-weight=%22400%22%20font-size=%2249.675%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%2281.112%22%20y=%22111.734%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ENot%3C/tspan%3E%3C/text%3E%3C/svg%3E"
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
                "x": 64,
                "y": 144
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 752,
                "y": 144
              }
            },
            {
              "id": "5365ed8c-e5db-4445-938f-8d689830ea5c",
              "type": "basic.code",
              "data": {
                "code": "//-- Puerta NOT\n\n//-- module (input wire a, output wire c);\n\n\nassign c = ~a;\n\n\n//-- endmodule\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
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
                "width": 400,
                "height": 256
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "a"
              }
            },
            {
              "source": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "c"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
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