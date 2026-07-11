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
          "id": "578cc639-8452-4aa5-8bff-f5e32f0136aa",
          "type": "basic.output",
          "data": {
            "name": "leds",
            "virtual": false,
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "LED3",
                "value": "42"
              },
              {
                "index": "2",
                "name": "LED2",
                "value": "43"
              },
              {
                "index": "1",
                "name": "LED1",
                "value": "44"
              },
              {
                "index": "0",
                "name": "LED0",
                "value": "45"
              }
            ]
          },
          "position": {
            "x": 1392,
            "y": 112
          }
        },
        {
          "id": "f3b80fdd-85ed-4e7f-a26b-7915044b8ae9",
          "type": "basic.constant",
          "data": {
            "name": "Hz",
            "value": "1",
            "local": false
          },
          "position": {
            "x": -56,
            "y": 176
          }
        },
        {
          "id": "ffc07e67-c4a2-4f39-86f1-288db93d4f0f",
          "type": "basic.constant",
          "data": {
            "name": "Constant",
            "value": "1",
            "local": true
          },
          "position": {
            "x": 88,
            "y": 176
          }
        },
        {
          "id": "a142a17f-0965-4b15-8e6f-a19fe4e198ac",
          "type": "06c565ed66a9128215c7a56071557ed85e39034e",
          "position": {
            "x": 480,
            "y": 256
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "db39c4ec-83eb-4c21-a9de-11d022b443ab",
          "type": "ff67767e6dc93d1b45cd677206351445aabc11fe",
          "position": {
            "x": 848,
            "y": 128
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "9e59cb3d-4af6-44d1-9994-56a1d7d23235",
          "type": "ff67767e6dc93d1b45cd677206351445aabc11fe",
          "position": {
            "x": 848,
            "y": 224
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "24d5ffa6-b7fa-4901-82a3-0043963949e1",
          "type": "ff67767e6dc93d1b45cd677206351445aabc11fe",
          "position": {
            "x": 848,
            "y": 320
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "8c1dd389-fe3b-4d1d-bc10-2746096b9aec",
          "type": "ff67767e6dc93d1b45cd677206351445aabc11fe",
          "position": {
            "x": 848,
            "y": 416
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "02fd9064-4a31-4001-9746-e088714793e9",
          "type": "64b19c057b86161444946d60b4f3f22f9e62df78",
          "position": {
            "x": 280,
            "y": 288
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "f36f8ba5-b1f9-4e46-9c9c-1244dec56018",
          "type": "9274d3154d579c5922da669b25ca14097a46a22f",
          "position": {
            "x": 88,
            "y": 304
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "68db7ffb-a4c9-476e-aaee-2bcd7a8163b9",
          "type": "ed6d7f92227c838b2e37f1bb5e02c4127e79d797",
          "position": {
            "x": 1128,
            "y": 128
          },
          "size": {
            "width": 96,
            "height": 128
          }
        },
        {
          "id": "cd037c80-72d4-4061-858f-0f75f9b31478",
          "type": "5368e230aaf6c4e9963911341ced0d210927699a",
          "position": {
            "x": -56,
            "y": 416
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "84bdddd0-8c02-41b0-b967-8656888921e0",
          "type": "09c59c6f9af9866770c357e791049021308a4c8d",
          "position": {
            "x": -56,
            "y": 576
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "efb3382f-1e7e-4a24-98a0-1f13b745cb8f",
          "type": "basic.info",
          "data": {
            "info": "# 4 bits Sincronous Counter with Latch Master-Slave",
            "readonly": true
          },
          "position": {
            "x": 328,
            "y": -72
          },
          "size": {
            "width": 648,
            "height": 32
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "f3b80fdd-85ed-4e7f-a26b-7915044b8ae9",
            "port": "constant-out"
          },
          "target": {
            "block": "84bdddd0-8c02-41b0-b967-8656888921e0",
            "port": "319cdca8-e777-4c8b-88ca-f885ba96ad06"
          },
          "vertices": [
            {
              "x": -152,
              "y": 320
            },
            {
              "x": -112,
              "y": 528
            }
          ]
        },
        {
          "source": {
            "block": "f3b80fdd-85ed-4e7f-a26b-7915044b8ae9",
            "port": "constant-out"
          },
          "target": {
            "block": "cd037c80-72d4-4061-858f-0f75f9b31478",
            "port": "136e8d6d-892a-4f14-8d6d-0c5bc6c3e844"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "68db7ffb-a4c9-476e-aaee-2bcd7a8163b9",
            "port": "ae49c383-3bcd-4606-a0d5-8601bf128f9e"
          },
          "target": {
            "block": "578cc639-8452-4aa5-8bff-f5e32f0136aa",
            "port": "in"
          },
          "size": 4
        },
        {
          "source": {
            "block": "84bdddd0-8c02-41b0-b967-8656888921e0",
            "port": "70887b0b-826c-4150-a873-605b77da8272"
          },
          "target": {
            "block": "db39c4ec-83eb-4c21-a9de-11d022b443ab",
            "port": "522dd0e5-98e7-4d6e-9fde-1889f02cec47"
          },
          "vertices": [
            {
              "x": 792,
              "y": 528
            }
          ]
        },
        {
          "source": {
            "block": "84bdddd0-8c02-41b0-b967-8656888921e0",
            "port": "70887b0b-826c-4150-a873-605b77da8272"
          },
          "target": {
            "block": "9e59cb3d-4af6-44d1-9994-56a1d7d23235",
            "port": "522dd0e5-98e7-4d6e-9fde-1889f02cec47"
          },
          "vertices": [
            {
              "x": 792,
              "y": 528
            }
          ]
        },
        {
          "source": {
            "block": "84bdddd0-8c02-41b0-b967-8656888921e0",
            "port": "70887b0b-826c-4150-a873-605b77da8272"
          },
          "target": {
            "block": "24d5ffa6-b7fa-4901-82a3-0043963949e1",
            "port": "522dd0e5-98e7-4d6e-9fde-1889f02cec47"
          },
          "vertices": [
            {
              "x": 792,
              "y": 544
            }
          ]
        },
        {
          "source": {
            "block": "84bdddd0-8c02-41b0-b967-8656888921e0",
            "port": "70887b0b-826c-4150-a873-605b77da8272"
          },
          "target": {
            "block": "8c1dd389-fe3b-4d1d-bc10-2746096b9aec",
            "port": "522dd0e5-98e7-4d6e-9fde-1889f02cec47"
          },
          "vertices": [
            {
              "x": 792,
              "y": 544
            }
          ]
        },
        {
          "source": {
            "block": "68db7ffb-a4c9-476e-aaee-2bcd7a8163b9",
            "port": "ae49c383-3bcd-4606-a0d5-8601bf128f9e"
          },
          "target": {
            "block": "02fd9064-4a31-4001-9746-e088714793e9",
            "port": "d1ed8643-0bb2-48ac-9aca-17184aee9368"
          },
          "vertices": [
            {
              "x": 1288,
              "y": 40
            },
            {
              "x": 224,
              "y": 40
            }
          ],
          "size": 4
        },
        {
          "source": {
            "block": "8c1dd389-fe3b-4d1d-bc10-2746096b9aec",
            "port": "5e52d92f-13ab-4ca3-97e4-654b9e59c2e9"
          },
          "target": {
            "block": "68db7ffb-a4c9-476e-aaee-2bcd7a8163b9",
            "port": "e4111201-8441-4e7d-bcd2-bcf9d265d043"
          }
        },
        {
          "source": {
            "block": "24d5ffa6-b7fa-4901-82a3-0043963949e1",
            "port": "5e52d92f-13ab-4ca3-97e4-654b9e59c2e9"
          },
          "target": {
            "block": "68db7ffb-a4c9-476e-aaee-2bcd7a8163b9",
            "port": "969e11ca-69e8-403b-a566-7bf2fbe3a5a8"
          },
          "vertices": [
            {
              "x": 1056,
              "y": 288
            }
          ]
        },
        {
          "source": {
            "block": "9e59cb3d-4af6-44d1-9994-56a1d7d23235",
            "port": "5e52d92f-13ab-4ca3-97e4-654b9e59c2e9"
          },
          "target": {
            "block": "68db7ffb-a4c9-476e-aaee-2bcd7a8163b9",
            "port": "712988b7-bdf4-41dc-81a7-cba4a43706be"
          },
          "vertices": [
            {
              "x": 1008,
              "y": 208
            }
          ]
        },
        {
          "source": {
            "block": "db39c4ec-83eb-4c21-a9de-11d022b443ab",
            "port": "5e52d92f-13ab-4ca3-97e4-654b9e59c2e9"
          },
          "target": {
            "block": "68db7ffb-a4c9-476e-aaee-2bcd7a8163b9",
            "port": "9db42483-957c-4490-84d2-5df273d2abd2"
          }
        },
        {
          "source": {
            "block": "ffc07e67-c4a2-4f39-86f1-288db93d4f0f",
            "port": "constant-out"
          },
          "target": {
            "block": "f36f8ba5-b1f9-4e46-9c9c-1244dec56018",
            "port": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4"
          }
        },
        {
          "source": {
            "block": "f36f8ba5-b1f9-4e46-9c9c-1244dec56018",
            "port": "5ed3ad73-16e5-4dda-9483-c36394a97ad2"
          },
          "target": {
            "block": "02fd9064-4a31-4001-9746-e088714793e9",
            "port": "8c97fcc6-7912-4514-bf9c-206e4281bdf4"
          },
          "size": 4
        },
        {
          "source": {
            "block": "02fd9064-4a31-4001-9746-e088714793e9",
            "port": "423ecf0e-b1de-4a7f-8bf0-032e0c1f0467"
          },
          "target": {
            "block": "a142a17f-0965-4b15-8e6f-a19fe4e198ac",
            "port": "3924e842-5646-4d03-bfa7-e141cf32635f"
          },
          "size": 4
        },
        {
          "source": {
            "block": "a142a17f-0965-4b15-8e6f-a19fe4e198ac",
            "port": "a340150e-2b8c-4e1e-a501-79ac40f5cd48"
          },
          "target": {
            "block": "8c1dd389-fe3b-4d1d-bc10-2746096b9aec",
            "port": "7e70ee1a-33b1-4b92-a10a-be304f6e4f83"
          },
          "vertices": [
            {
              "x": 696,
              "y": 392
            }
          ]
        },
        {
          "source": {
            "block": "a142a17f-0965-4b15-8e6f-a19fe4e198ac",
            "port": "d912538b-1b79-4d87-9a1b-2a960500bad1"
          },
          "target": {
            "block": "24d5ffa6-b7fa-4901-82a3-0043963949e1",
            "port": "7e70ee1a-33b1-4b92-a10a-be304f6e4f83"
          }
        },
        {
          "source": {
            "block": "a142a17f-0965-4b15-8e6f-a19fe4e198ac",
            "port": "08c61ec5-2f8c-477a-a659-55b2197436c3"
          },
          "target": {
            "block": "9e59cb3d-4af6-44d1-9994-56a1d7d23235",
            "port": "7e70ee1a-33b1-4b92-a10a-be304f6e4f83"
          },
          "vertices": [
            {
              "x": 696,
              "y": 240
            }
          ]
        },
        {
          "source": {
            "block": "a142a17f-0965-4b15-8e6f-a19fe4e198ac",
            "port": "fc93f7da-b784-422c-9baa-ecab73eef82c"
          },
          "target": {
            "block": "db39c4ec-83eb-4c21-a9de-11d022b443ab",
            "port": "7e70ee1a-33b1-4b92-a10a-be304f6e4f83"
          },
          "vertices": [
            {
              "x": 656,
              "y": 184
            }
          ]
        }
      ]
    }
  },
  "dependencies": {
    "06c565ed66a9128215c7a56071557ed85e39034e": {
      "package": {
        "name": "Separador-bus",
        "version": "0.1",
        "description": "Separador de bus de 4-bits en 4 cables",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22354.768%22%20height=%22241.058%22%20viewBox=%220%200%20332.59497%20225.99201%22%3E%3Cpath%20d=%22M168.377%2077.643l61.147-60.938C240.21%206.25%20254.56.461%20269.484.5h62.611v26.186l-61.698.046c-8.012-.043-15.705%203.133-21.47%208.81L187.48%2096.857a57.292%2057.292%200%200%201-39.993%2016.139%2057.292%2057.292%200%200%201%2039.993%2016.14l61.448%2061.314c5.765%205.677%2013.458%208.853%2021.47%208.81l61.698.046v26.186h-62.612c-14.924.039-29.463-5.9-40.204-16.28l-60.902-60.863a29.857%2029.857%200%200%200-21.347-8.81L.5%20139.427V86.457h146.524a29.884%2029.884%200%200%200%2021.353-8.814z%22%20fill=%22green%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "fc93f7da-b784-422c-9baa-ecab73eef82c",
              "type": "basic.output",
              "data": {
                "name": "o3"
              },
              "position": {
                "x": 584,
                "y": 88
              }
            },
            {
              "id": "08c61ec5-2f8c-477a-a659-55b2197436c3",
              "type": "basic.output",
              "data": {
                "name": "o2"
              },
              "position": {
                "x": 584,
                "y": 152
              }
            },
            {
              "id": "3924e842-5646-4d03-bfa7-e141cf32635f",
              "type": "basic.input",
              "data": {
                "name": "i",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": 120,
                "y": 200
              }
            },
            {
              "id": "d912538b-1b79-4d87-9a1b-2a960500bad1",
              "type": "basic.output",
              "data": {
                "name": "o1"
              },
              "position": {
                "x": 584,
                "y": 216
              }
            },
            {
              "id": "a340150e-2b8c-4e1e-a501-79ac40f5cd48",
              "type": "basic.output",
              "data": {
                "name": "o0"
              },
              "position": {
                "x": 584,
                "y": 280
              }
            },
            {
              "id": "16e78204-213e-4833-9096-89d735307ec2",
              "type": "basic.code",
              "data": {
                "code": "assign o3 = i[3];\nassign o2 = i[2];\nassign o1 = i[1];\nassign o0 = i[0];",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ],
                  "out": [
                    {
                      "name": "o3"
                    },
                    {
                      "name": "o2"
                    },
                    {
                      "name": "o1"
                    },
                    {
                      "name": "o0"
                    }
                  ]
                }
              },
              "position": {
                "x": 296,
                "y": 176
              },
              "size": {
                "width": 208,
                "height": 112
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o0"
              },
              "target": {
                "block": "a340150e-2b8c-4e1e-a501-79ac40f5cd48",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o1"
              },
              "target": {
                "block": "d912538b-1b79-4d87-9a1b-2a960500bad1",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o2"
              },
              "target": {
                "block": "08c61ec5-2f8c-477a-a659-55b2197436c3",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "o3"
              },
              "target": {
                "block": "fc93f7da-b784-422c-9baa-ecab73eef82c",
                "port": "in"
              },
              "vertices": [
                {
                  "x": 552,
                  "y": 144
                }
              ]
            },
            {
              "source": {
                "block": "3924e842-5646-4d03-bfa7-e141cf32635f",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i"
              },
              "size": 4
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
    "ff67767e6dc93d1b45cd677206351445aabc11fe": {
      "package": {
        "name": "master-slave latch",
        "version": "0.1-c1783609880439",
        "description": "master-slave latch",
        "author": "DemocritoBinary",
        "image": "%3Csvg%20width=%22225.536%22%20height=%22145.784%22%20viewBox=%220%200%2059.672999%2038.571998%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%3Cg%20font-weight=%22400%22%20font-size=%2215.36%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%20stroke-width=%22.265%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22139.852%22%20y=%22101.991%22%20transform=%22translate(-140.766%20-90.297)%22%3E%3Ctspan%20x=%22139.852%22%20y=%22101.991%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EMaster%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22147.556%22%20y=%22115.566%22%20transform=%22translate(-140.766%20-90.297)%22%3E%3Ctspan%20x=%22147.556%22%20y=%22115.566%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ESlave%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22147.264%22%20y=%22128.148%22%20transform=%22translate(-140.766%20-90.297)%22%3E%3Ctspan%20x=%22147.264%22%20y=%22128.148%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ELatch%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "5e52d92f-13ab-4ca3-97e4-654b9e59c2e9",
              "type": "basic.output",
              "data": {
                "name": "q"
              },
              "position": {
                "x": 920,
                "y": 336
              }
            },
            {
              "id": "7e70ee1a-33b1-4b92-a10a-be304f6e4f83",
              "type": "basic.input",
              "data": {
                "name": "d",
                "clock": false,
                "isParametric": false
              },
              "position": {
                "x": 104,
                "y": 336
              }
            },
            {
              "id": "d11dc3ee-41f3-421c-828d-2616cee61ad3",
              "type": "basic.output",
              "data": {
                "name": "nq"
              },
              "position": {
                "x": 920,
                "y": 448
              }
            },
            {
              "id": "522dd0e5-98e7-4d6e-9fde-1889f02cec47",
              "type": "basic.input",
              "data": {
                "name": "cp",
                "clock": false,
                "isParametric": false
              },
              "position": {
                "x": 104,
                "y": 448
              }
            },
            {
              "id": "9de78152-d514-46a2-a242-ffb9e2b14b65",
              "type": "96df7f8f553dbf3bf260caf87e6d80e8b04badb5",
              "position": {
                "x": 352,
                "y": 352
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "81b80bb4-8740-407e-9320-09a2a95b9467",
              "type": "96df7f8f553dbf3bf260caf87e6d80e8b04badb5",
              "position": {
                "x": 672,
                "y": 352
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "16a6b747-f4af-4868-a5b0-686f991ac523",
              "type": "3676a00f3a70e406487ed14b901daf3e4984e63d",
              "position": {
                "x": 352,
                "y": 448
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "cfe07c0e-217a-4f1e-be4c-31bf309f0550",
              "type": "basic.info",
              "data": {
                "info": "# Two latches in master-slave configuration",
                "readonly": true
              },
              "position": {
                "x": 304,
                "y": 168
              },
              "size": {
                "width": 560,
                "height": 32
              }
            },
            {
              "id": "89b44e66-146b-4341-b011-21c319e8b04e",
              "type": "basic.info",
              "data": {
                "info": "Data",
                "readonly": true
              },
              "position": {
                "x": 136,
                "y": 320
              },
              "size": {
                "width": 64,
                "height": 32
              }
            },
            {
              "id": "bd8a7c41-0e2d-48f8-a247-0a5a71d43bc6",
              "type": "basic.info",
              "data": {
                "info": "Clock Pulse",
                "readonly": true
              },
              "position": {
                "x": 104,
                "y": 432
              },
              "size": {
                "width": 96,
                "height": 32
              }
            },
            {
              "id": "1bb5e63a-ab80-4fac-a7db-23a69096b0da",
              "type": "basic.info",
              "data": {
                "info": "Q",
                "readonly": true
              },
              "position": {
                "x": 960,
                "y": 320
              },
              "size": {
                "width": 64,
                "height": 32
              }
            },
            {
              "id": "4b97fe73-90b6-4e69-9499-e22ab6f2729c",
              "type": "basic.info",
              "data": {
                "info": "/Q",
                "readonly": true
              },
              "position": {
                "x": 960,
                "y": 432
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
                "block": "16a6b747-f4af-4868-a5b0-686f991ac523",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "81b80bb4-8740-407e-9320-09a2a95b9467",
                "port": "963dba0d-4f5f-49d0-a7a9-7b905c450ca3"
              },
              "vertices": [
                {
                  "x": 576,
                  "y": 440
                }
              ]
            },
            {
              "source": {
                "block": "522dd0e5-98e7-4d6e-9fde-1889f02cec47",
                "port": "out"
              },
              "target": {
                "block": "16a6b747-f4af-4868-a5b0-686f991ac523",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "522dd0e5-98e7-4d6e-9fde-1889f02cec47",
                "port": "out"
              },
              "target": {
                "block": "9de78152-d514-46a2-a242-ffb9e2b14b65",
                "port": "963dba0d-4f5f-49d0-a7a9-7b905c450ca3"
              },
              "vertices": [
                {
                  "x": 280,
                  "y": 448
                }
              ]
            },
            {
              "source": {
                "block": "7e70ee1a-33b1-4b92-a10a-be304f6e4f83",
                "port": "out"
              },
              "target": {
                "block": "9de78152-d514-46a2-a242-ffb9e2b14b65",
                "port": "41c1afa3-b827-4fb1-9e9d-464a1a3302ab"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "81b80bb4-8740-407e-9320-09a2a95b9467",
                "port": "166eaae6-9673-44fa-887d-163b7ae05d65"
              },
              "target": {
                "block": "d11dc3ee-41f3-421c-828d-2616cee61ad3",
                "port": "in"
              },
              "vertices": [
                {
                  "x": 848,
                  "y": 456
                }
              ]
            },
            {
              "source": {
                "block": "81b80bb4-8740-407e-9320-09a2a95b9467",
                "port": "865fe1f3-0750-4b1d-aae4-a9e54f61adea"
              },
              "target": {
                "block": "5e52d92f-13ab-4ca3-97e4-654b9e59c2e9",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "9de78152-d514-46a2-a242-ffb9e2b14b65",
                "port": "865fe1f3-0750-4b1d-aae4-a9e54f61adea"
              },
              "target": {
                "block": "81b80bb4-8740-407e-9320-09a2a95b9467",
                "port": "41c1afa3-b827-4fb1-9e9d-464a1a3302ab"
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
    "96df7f8f553dbf3bf260caf87e6d80e8b04badb5": {
      "package": {
        "name": "Logical_Latch_v1",
        "version": "0.1-c1783609519962",
        "description": "Logical Latch",
        "author": "DemocritoBinary",
        "image": "%3Csvg%20width=%22169.796%22%20height=%2244.929%22%20viewBox=%220%200%2044.925293%2011.887577%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22109.727%22%20y=%2290.573%22%20font-weight=%22400%22%20font-size=%2215.36%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%20stroke-width=%22.265%22%20transform=%22translate(-111.137%20-78.903)%22%3E%3Ctspan%20x=%22109.727%22%20y=%2290.573%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ELatch%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "865fe1f3-0750-4b1d-aae4-a9e54f61adea",
              "type": "basic.output",
              "data": {
                "name": "q"
              },
              "position": {
                "x": 1304,
                "y": 232
              }
            },
            {
              "id": "41c1afa3-b827-4fb1-9e9d-464a1a3302ab",
              "type": "basic.input",
              "data": {
                "name": "d",
                "clock": false,
                "isParametric": false
              },
              "position": {
                "x": 128,
                "y": 232
              }
            },
            {
              "id": "166eaae6-9673-44fa-887d-163b7ae05d65",
              "type": "basic.output",
              "data": {
                "name": "nq"
              },
              "position": {
                "x": 1304,
                "y": 352
              }
            },
            {
              "id": "963dba0d-4f5f-49d0-a7a9-7b905c450ca3",
              "type": "basic.input",
              "data": {
                "name": "cp",
                "clock": false,
                "isParametric": false
              },
              "position": {
                "x": 128,
                "y": 360
              }
            },
            {
              "id": "cd2f835c-bd8c-4329-87d3-2b928442f60a",
              "type": "873425949b2a80f1a7f66f320796bcd068a59889",
              "position": {
                "x": 624,
                "y": 232
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "78fd9719-173f-4f97-ac8c-3be62afa8674",
              "type": "c1653fb9d46cb18a515599972fbcf6692524bc96",
              "position": {
                "x": 832,
                "y": 216
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "9e0a9238-3ce5-4f1a-8f09-0be7a71bebb9",
              "type": "d30ca9ee4f35f6cb76d5e5701447fc2b739bc640",
              "position": {
                "x": 448,
                "y": 136
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "d8c5b905-a8b0-4c0d-845a-cc459f82337d",
              "type": "ba518ee261a2be13a9739cd3a01cdcebe0ef63c0",
              "position": {
                "x": 448,
                "y": 248
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "9b49d6de-8f85-49c4-8e00-d1baba3483ac",
              "type": "3676a00f3a70e406487ed14b901daf3e4984e63d",
              "position": {
                "x": 448,
                "y": 424
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "023448eb-3f43-4b37-adb6-388c8d85d06c",
              "type": "ba518ee261a2be13a9739cd3a01cdcebe0ef63c0",
              "position": {
                "x": 624,
                "y": 376
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "6bfe3d12-7bf7-4634-a20c-c72dfe476dfe",
              "type": "3676a00f3a70e406487ed14b901daf3e4984e63d",
              "position": {
                "x": 1088,
                "y": 352
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "ba80aabb-b386-48b8-af31-a8c3a60c737b",
              "type": "basic.info",
              "data": {
                "info": "# Logic Latch",
                "readonly": true
              },
              "position": {
                "x": 696,
                "y": 24
              },
              "size": {
                "width": 144,
                "height": 32
              }
            },
            {
              "id": "ddd441bb-51dd-4a01-ad15-97f37ee531a7",
              "type": "basic.info",
              "data": {
                "info": "Data",
                "readonly": true
              },
              "position": {
                "x": 160,
                "y": 200
              },
              "size": {
                "width": 64,
                "height": 32
              }
            },
            {
              "id": "bb3d5e04-d967-4751-ad17-67a16eb171bc",
              "type": "basic.info",
              "data": {
                "info": "Clock Pulse",
                "readonly": true
              },
              "position": {
                "x": 144,
                "y": 336
              },
              "size": {
                "width": 96,
                "height": 32
              }
            },
            {
              "id": "d6d73f0b-ca19-4c2f-a7c3-b5433e6fd910",
              "type": "basic.info",
              "data": {
                "info": "Q",
                "readonly": true
              },
              "position": {
                "x": 1344,
                "y": 200
              },
              "size": {
                "width": 64,
                "height": 32
              }
            },
            {
              "id": "34de17fc-df46-4e3f-8e6e-6d51965482c5",
              "type": "basic.info",
              "data": {
                "info": "/Q",
                "readonly": true
              },
              "position": {
                "x": 1344,
                "y": 320
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
                "block": "023448eb-3f43-4b37-adb6-388c8d85d06c",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "78fd9719-173f-4f97-ac8c-3be62afa8674",
                "port": "1e7e3cd6-ed00-468a-9f7c-0bb91e020dce"
              },
              "vertices": [
                {
                  "x": 800,
                  "y": 360
                }
              ]
            },
            {
              "source": {
                "block": "41c1afa3-b827-4fb1-9e9d-464a1a3302ab",
                "port": "out"
              },
              "target": {
                "block": "9b49d6de-8f85-49c4-8e00-d1baba3483ac",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              },
              "vertices": [
                {
                  "x": 352,
                  "y": 448
                }
              ]
            },
            {
              "source": {
                "block": "41c1afa3-b827-4fb1-9e9d-464a1a3302ab",
                "port": "out"
              },
              "target": {
                "block": "d8c5b905-a8b0-4c0d-845a-cc459f82337d",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "6bfe3d12-7bf7-4634-a20c-c72dfe476dfe",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "166eaae6-9673-44fa-887d-163b7ae05d65",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "78fd9719-173f-4f97-ac8c-3be62afa8674",
                "port": "56c306d0-95f2-48b3-a0fd-cd7bfb35dce8"
              },
              "target": {
                "block": "6bfe3d12-7bf7-4634-a20c-c72dfe476dfe",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              },
              "vertices": [
                {
                  "x": 984,
                  "y": 320
                }
              ]
            },
            {
              "source": {
                "block": "78fd9719-173f-4f97-ac8c-3be62afa8674",
                "port": "56c306d0-95f2-48b3-a0fd-cd7bfb35dce8"
              },
              "target": {
                "block": "865fe1f3-0750-4b1d-aae4-a9e54f61adea",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "78fd9719-173f-4f97-ac8c-3be62afa8674",
                "port": "56c306d0-95f2-48b3-a0fd-cd7bfb35dce8"
              },
              "target": {
                "block": "cd2f835c-bd8c-4329-87d3-2b928442f60a",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              },
              "vertices": [
                {
                  "x": 984,
                  "y": 200
                },
                {
                  "x": 744,
                  "y": 112
                }
              ]
            },
            {
              "source": {
                "block": "963dba0d-4f5f-49d0-a7a9-7b905c450ca3",
                "port": "out"
              },
              "target": {
                "block": "023448eb-3f43-4b37-adb6-388c8d85d06c",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "963dba0d-4f5f-49d0-a7a9-7b905c450ca3",
                "port": "out"
              },
              "target": {
                "block": "d8c5b905-a8b0-4c0d-845a-cc459f82337d",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            },
            {
              "source": {
                "block": "9b49d6de-8f85-49c4-8e00-d1baba3483ac",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "023448eb-3f43-4b37-adb6-388c8d85d06c",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            },
            {
              "source": {
                "block": "9e0a9238-3ce5-4f1a-8f09-0be7a71bebb9",
                "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
              },
              "target": {
                "block": "78fd9719-173f-4f97-ac8c-3be62afa8674",
                "port": "33f6051a-9627-4b08-b821-351edc31a2ad"
              },
              "vertices": [
                {
                  "x": 800,
                  "y": 192
                }
              ]
            },
            {
              "source": {
                "block": "cd2f835c-bd8c-4329-87d3-2b928442f60a",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "78fd9719-173f-4f97-ac8c-3be62afa8674",
                "port": "a50d1088-061e-4af0-89cd-59567d3904ee"
              }
            },
            {
              "source": {
                "block": "d8c5b905-a8b0-4c0d-845a-cc459f82337d",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "cd2f835c-bd8c-4329-87d3-2b928442f60a",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
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
    "873425949b2a80f1a7f66f320796bcd068a59889": {
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
    },
    "c1653fb9d46cb18a515599972fbcf6692524bc96": {
      "package": {
        "name": "Mux-2-1-verilog",
        "version": "0.1",
        "description": "2-to-1 Multplexer (1-bit channels). Verilog implementation",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2280.833%22%20height=%22158.56%22%20viewBox=%220%200%2075.781585%20148.65066%22%3E%3Cpath%20d=%22M74.375%2036.836c0-12.691-6.99-24.413-18.326-30.729-11.335-6.316-25.284-6.262-36.568.141C8.198%2012.652%201.304%2024.427%201.407%2037.118v74.415c-.103%2012.69%206.79%2024.466%2018.074%2030.87%2011.284%206.403%2025.233%206.457%2036.568.14%2011.336-6.316%2018.326-18.037%2018.326-30.728z%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222.813%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%227.448%22%20y=%2291.518%22%20transform=%22matrix(1.00472%200%200%20.9953%2020.25%2033.697)%22%20font-weight=%22400%22%20font-size=%2233.509%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%227.448%22%20y=%2291.518%22%3E0%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%227.359%22%20y=%2214.582%22%20transform=%22matrix(1.00472%200%200%20.9953%2020.25%2033.697)%22%20font-weight=%22400%22%20font-size=%2233.509%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%227.359%22%20y=%2214.582%22%3E1%3C/tspan%3E%3C/text%3E%3C/svg%3E",
        "otid": 1618922858665
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "33f6051a-9627-4b08-b821-351edc31a2ad",
              "type": "basic.input",
              "data": {
                "name": "1",
                "clock": false
              },
              "position": {
                "x": 320,
                "y": -64
              }
            },
            {
              "id": "a50d1088-061e-4af0-89cd-59567d3904ee",
              "type": "basic.input",
              "data": {
                "name": "0",
                "clock": false
              },
              "position": {
                "x": 320,
                "y": 24
              }
            },
            {
              "id": "56c306d0-95f2-48b3-a0fd-cd7bfb35dce8",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 976,
                "y": 24
              }
            },
            {
              "id": "1e7e3cd6-ed00-468a-9f7c-0bb91e020dce",
              "type": "basic.input",
              "data": {
                "name": "sel",
                "clock": false
              },
              "position": {
                "x": 320,
                "y": 112
              }
            },
            {
              "id": "b64f5610-774d-45c0-bbc6-85b1a6713f43",
              "type": "basic.code",
              "data": {
                "code": "//-- 2-to-1 Multiplexer \n\nassign o = sel ? i1 : i0;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i1"
                    },
                    {
                      "name": "i0"
                    },
                    {
                      "name": "sel"
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
                "x": 560,
                "y": -80
              },
              "size": {
                "width": 304,
                "height": 272
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "1e7e3cd6-ed00-468a-9f7c-0bb91e020dce",
                "port": "out"
              },
              "target": {
                "block": "b64f5610-774d-45c0-bbc6-85b1a6713f43",
                "port": "sel"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "33f6051a-9627-4b08-b821-351edc31a2ad",
                "port": "out"
              },
              "target": {
                "block": "b64f5610-774d-45c0-bbc6-85b1a6713f43",
                "port": "i1"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "a50d1088-061e-4af0-89cd-59567d3904ee",
                "port": "out"
              },
              "target": {
                "block": "b64f5610-774d-45c0-bbc6-85b1a6713f43",
                "port": "i0"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "b64f5610-774d-45c0-bbc6-85b1a6713f43",
                "port": "o"
              },
              "target": {
                "block": "56c306d0-95f2-48b3-a0fd-cd7bfb35dce8",
                "port": "in"
              },
              "vertices": []
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
    "d30ca9ee4f35f6cb76d5e5701447fc2b739bc640": {
      "package": {
        "name": "bit-0",
        "version": "0.2",
        "description": "Constant bit 0",
        "author": "Jesus Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22125.776%22%20height=%22197.727%22%20viewBox=%220%200%20110.54641%20173.78236%22%3E%3Cpath%20d=%22M69.664%20107.353l13.494%2029.374L70.719%20168.5l13.788%204.283m-42.761-62.916S38.148%20136.825%2033.22%20139C28.298%20141.18%201%20161.403%201%20161.403l8.729%2010.636%22%20fill=%22none%22%20stroke=%22green%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cg%20style=%22line-height:0%25%22%3E%3Cpath%20d=%22M65.536%2024.562q-9.493%200-15.876%208.251-6.303%208.156-8.855%2023.604-2.553%2015.448%201.037%2023.7%203.59%208.155%2013.084%208.155%209.334%200%2015.636-8.155%206.383-8.252%208.936-23.7%202.553-15.448-1.037-23.604-3.59-8.251-12.925-8.251zm4.07-24.564q23.056%200%2033.507%2014.969%2010.53%2014.968%206.143%2041.45-4.388%2026.482-19.865%2041.45-15.478%2014.968-38.534%2014.968-23.136%200-33.667-14.968Q6.659%2082.9%2011.047%2056.417q4.387-26.482%2019.865-41.45Q46.469-.002%2069.605-.002z%22%20style=%22line-height:1.25;-inkscape-font-specification:'sans-serif%20Bold%20Italic'%22%20font-style=%22italic%22%20font-weight=%22700%22%20font-size=%22179.184%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22green%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "3d584b0a-29eb-47af-8c43-c0822282ef05",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 456,
                "y": 120
              }
            },
            {
              "id": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
              "type": "basic.code",
              "data": {
                "code": "//-- Constant bit-0\nassign q = 1'b0;\n\n",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 168,
                "y": 112
              },
              "size": {
                "width": 248,
                "height": 80
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
                "port": "q"
              },
              "target": {
                "block": "3d584b0a-29eb-47af-8c43-c0822282ef05",
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
    },
    "ba518ee261a2be13a9739cd3a01cdcebe0ef63c0": {
      "package": {
        "name": "AND2",
        "version": "1.0.2",
        "description": "Two bits input And gate",
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
                "x": 96,
                "y": 56
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 600,
                "y": 96
              }
            },
            {
              "id": "97b51945-d716-4b6c-9db9-970d08541249",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 96,
                "y": 128
              }
            },
            {
              "id": "00925b04-5004-4307-a737-fa4e97c8b6ab",
              "type": "basic.code",
              "data": {
                "code": "//-- AND gate\n//-- Verilog implementation\n\nassign c = a & b;\n",
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
                "width": 304,
                "height": 152
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
    "3676a00f3a70e406487ed14b901daf3e4984e63d": {
      "package": {
        "name": "NOT",
        "version": "2.0",
        "description": "NOT gate (Verilog implementation)",
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
                "x": 112,
                "y": 72
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 560,
                "y": 72
              }
            },
            {
              "id": "5365ed8c-e5db-4445-938f-8d689830ea5c",
              "type": "basic.code",
              "data": {
                "code": "//-- NOT Gate\nassign q = ~a;\n\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    }
                  ],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 256,
                "y": 48
              },
              "size": {
                "width": 256,
                "height": 104
              }
            },
            {
              "id": "e3bb41e3-1944-4946-9675-c2dbe2e49fcf",
              "type": "basic.info",
              "data": {
                "info": "Input",
                "readonly": true
              },
              "position": {
                "x": 128,
                "y": 32
              },
              "size": {
                "width": 80,
                "height": 40
              }
            },
            {
              "id": "8408dd5f-945f-4a89-9790-7752813d4e91",
              "type": "basic.info",
              "data": {
                "info": "Output",
                "readonly": true
              },
              "position": {
                "x": 576,
                "y": 40
              },
              "size": {
                "width": 80,
                "height": 40
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
                "port": "q"
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
    },
    "64b19c057b86161444946d60b4f3f22f9e62df78": {
      "package": {
        "name": "sum-2p-4bits",
        "version": "0.1",
        "description": "Sumador  de 4 bits (sin acarreo)",
        "author": "Juan González-Gómez",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22208.285%22%20height=%22208.61%22%20viewBox=%220%200%20195.2669%20195.57218%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-33.052%22%20y=%22195.572%22%20font-weight=%22400%22%20font-size=%22311.941%22%20letter-spacing=%220%22%20word-spacing=%220%22%20font-family=%22sans-serif%22%20stroke-width=%224.441%22%3E%3Ctspan%20x=%22-33.052%22%20y=%22195.572%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22#00f%22%3E+%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "d1ed8643-0bb2-48ac-9aca-17184aee9368",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": 200,
                "y": 176
              }
            },
            {
              "id": "423ecf0e-b1de-4a7f-8bf0-032e0c1f0467",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 672,
                "y": 192
              }
            },
            {
              "id": "8c97fcc6-7912-4514-bf9c-206e4281bdf4",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": 200,
                "y": 240
              }
            },
            {
              "id": "a8d15f9d-bba5-432f-b698-17964638c83a",
              "type": "basic.code",
              "data": {
                "code": "assign s = a + b;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "b",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ],
                  "out": [
                    {
                      "name": "s",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ]
                }
              },
              "position": {
                "x": 384,
                "y": 192
              },
              "size": {
                "width": 216,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "8c97fcc6-7912-4514-bf9c-206e4281bdf4",
                "port": "out"
              },
              "target": {
                "block": "a8d15f9d-bba5-432f-b698-17964638c83a",
                "port": "b"
              },
              "size": 4
            },
            {
              "source": {
                "block": "a8d15f9d-bba5-432f-b698-17964638c83a",
                "port": "s"
              },
              "target": {
                "block": "423ecf0e-b1de-4a7f-8bf0-032e0c1f0467",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "d1ed8643-0bb2-48ac-9aca-17184aee9368",
                "port": "out"
              },
              "target": {
                "block": "a8d15f9d-bba5-432f-b698-17964638c83a",
                "port": "a"
              },
              "size": 4
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
    "9274d3154d579c5922da669b25ca14097a46a22f": {
      "package": {
        "name": "Constante-4bits",
        "version": "0.0.1",
        "description": "Valor genérico constante, de 4 bits. Su valor se introduce como parámetro. Por defecto vale 0",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22145.608%22%20height=%22247.927%22%20viewBox=%220%200%20136.50729%20232.43134%22%3E%3Ctext%20style=%22line-height:125%25;-inkscape-font-specification:'Ubuntu%20Mono'%22%20x=%22293.115%22%20y=%22648.344%22%20font-weight=%22400%22%20font-size=%22335.399%22%20font-family=%22Ubuntu%20Mono%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22green%22%20transform=%22translate(-316.929%20-415.913)%22%3E%3Ctspan%20x=%22293.115%22%20y=%22648.344%22%3Ek%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "5ed3ad73-16e5-4dda-9483-c36394a97ad2",
              "type": "basic.output",
              "data": {
                "name": "k",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 960,
                "y": 248
              }
            },
            {
              "id": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "0",
                "local": false
              },
              "position": {
                "x": 728,
                "y": 128
              }
            },
            {
              "id": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
              "type": "basic.code",
              "data": {
                "code": "assign k = VALUE;",
                "params": [
                  {
                    "name": "VALUE"
                  }
                ],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "k",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ]
                }
              },
              "position": {
                "x": 672,
                "y": 248
              },
              "size": {
                "width": 208,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "k"
              },
              "target": {
                "block": "5ed3ad73-16e5-4dda-9483-c36394a97ad2",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4",
                "port": "constant-out"
              },
              "target": {
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "VALUE"
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
    "ed6d7f92227c838b2e37f1bb5e02c4127e79d797": {
      "package": {
        "name": "Agregador-bus",
        "version": "0.1",
        "description": "Agregador de 4 cables en un bus de 4-bits",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22354.768%22%20height=%22241.058%22%20viewBox=%220%200%20332.59497%20225.99201%22%3E%3Cpath%20d=%22M164.218%2077.643L103.07%2016.705C92.386%206.25%2078.036.461%2063.11.5H.5v26.186l61.698.046c8.012-.043%2015.705%203.133%2021.47%208.81l61.448%2061.315a57.292%2057.292%200%200%200%2039.993%2016.139%2057.292%2057.292%200%200%200-39.993%2016.14L83.668%20190.45c-5.765%205.677-13.458%208.853-21.47%208.81L.5%20199.306v26.186h62.612c14.924.039%2029.463-5.9%2040.204-16.28l60.902-60.863a29.857%2029.857%200%200%201%2021.347-8.81l146.53-.113V86.457H185.571a29.884%2029.884%200%200%201-21.353-8.814z%22%20fill=%22green%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "9db42483-957c-4490-84d2-5df273d2abd2",
              "type": "basic.input",
              "data": {
                "name": "i3",
                "clock": false
              },
              "position": {
                "x": 112,
                "y": 96
              }
            },
            {
              "id": "712988b7-bdf4-41dc-81a7-cba4a43706be",
              "type": "basic.input",
              "data": {
                "name": "i2",
                "clock": false
              },
              "position": {
                "x": 112,
                "y": 160
              }
            },
            {
              "id": "ae49c383-3bcd-4606-a0d5-8601bf128f9e",
              "type": "basic.output",
              "data": {
                "name": "o",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 664,
                "y": 176
              }
            },
            {
              "id": "969e11ca-69e8-403b-a566-7bf2fbe3a5a8",
              "type": "basic.input",
              "data": {
                "name": "i1",
                "clock": false
              },
              "position": {
                "x": 112,
                "y": 216
              }
            },
            {
              "id": "e4111201-8441-4e7d-bcd2-bcf9d265d043",
              "type": "basic.input",
              "data": {
                "name": "i0",
                "clock": false
              },
              "position": {
                "x": 112,
                "y": 280
              }
            },
            {
              "id": "16e78204-213e-4833-9096-89d735307ec2",
              "type": "basic.code",
              "data": {
                "code": "assign o = {i3,i2, i1, i0};\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i3"
                    },
                    {
                      "name": "i2"
                    },
                    {
                      "name": "i1"
                    },
                    {
                      "name": "i0"
                    }
                  ],
                  "out": [
                    {
                      "name": "o",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ]
                }
              },
              "position": {
                "x": 296,
                "y": 152
              },
              "size": {
                "width": 280,
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
                "block": "ae49c383-3bcd-4606-a0d5-8601bf128f9e",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "712988b7-bdf4-41dc-81a7-cba4a43706be",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i2"
              }
            },
            {
              "source": {
                "block": "969e11ca-69e8-403b-a566-7bf2fbe3a5a8",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i1"
              }
            },
            {
              "source": {
                "block": "9db42483-957c-4490-84d2-5df273d2abd2",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i3"
              }
            },
            {
              "source": {
                "block": "e4111201-8441-4e7d-bcd2-bcf9d265d043",
                "port": "out"
              },
              "target": {
                "block": "16e78204-213e-4833-9096-89d735307ec2",
                "port": "i0"
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
    "5368e230aaf6c4e9963911341ced0d210927699a": {
      "package": {
        "name": "Heart_Tick_Hz",
        "version": "0.1",
        "description": "Heart pumping tics at a parametric frequency in Hz",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22197.514%22%20height=%22161.086%22%20viewBox=%220%200%2052.259014%2042.62059%22%3E%3Cpath%20d=%22M22.153%2040.47c-.727-1.25-1.853-2.474-3.987-4.332-1.156-1.006-1.86-1.565-5.863-4.658-3.138-2.425-4.704-3.77-6.519-5.601-1.813-1.831-2.88-3.29-3.794-5.191a15.321%2015.321%200%200%201-1.235-3.6c-.317-1.545-.36-2.067-.358-4.342.002-2.983.1-3.48%201.08-5.47.728-1.479%201.281-2.257%202.433-3.427C5.028%202.714%205.754%202.2%207.325%201.422%209.069.56%2010.33.333%2012.93.417c2.02.065%202.759.266%204.36%201.188%202.52%201.45%204.475%203.777%205.017%205.972.088.358.18.652.203.652.023%200%20.227-.42.453-.932.77-1.744%201.484-2.808%202.62-3.903C29.06.041%2034.542-.565%2038.974%201.912c1.81%201.012%203.283%202.485%204.425%204.424.898%201.527%201.358%203.555%201.436%206.34.113%204.035-.625%206.832-2.59%209.812-.779%201.182-1.355%201.899-2.437%203.028-1.745%201.823-3.318%203.162-7.033%205.988-2.344%201.782-3.734%202.929-5.745%204.74-1.611%201.452-4.108%203.98-4.349%204.402-.105.185-.2.336-.21.336-.012%200-.154-.23-.318-.512z%22%20fill=%22red%22/%3E%3Ctext%20y=%2266.277%22%20x=%2267.278%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%2215.216%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22matrix(.99853%200%200%201.00147%20-50.645%20-44.99)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%22.282%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2266.277%22%20x=%2267.278%22%20font-weight=%22700%22%20font-size=%228.695%22%3EHz%3C/tspan%3E%3C/text%3E%3Cg%20transform=%22matrix(.79321%200%200%20.79321%20-39.33%20-27.72)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c138a610-b61f-4e7c-bb8a-c4f3b0b9f95c",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 912,
                "y": 192
              }
            },
            {
              "id": "503869f1-ddfd-4d13-93ad-5f90281ba88c",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 104,
                "y": 192
              }
            },
            {
              "id": "136e8d6d-892a-4f14-8d6d-0c5bc6c3e844",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "1",
                "local": false
              },
              "position": {
                "x": 520,
                "y": -128
              }
            },
            {
              "id": "a70d9684-3b18-4f3d-90cd-28faa893b6b2",
              "type": "basic.code",
              "data": {
                "code": "//localparam HZ;\n\n//-- Constante para dividir y obtener una frecuencia de 1Hz\nlocalparam M = 12000000/HZ;\n\n//-- Calcular el numero de bits para almacenar M\nlocalparam N = $clog2(M);\n\n//-- Cable de reset para el contador\nwire reset;\n\n//-- Registro del divisor\nreg [N-1:0] divcounter = 0; // Iniciar a 0 siempre son buenas costumbres.\n\n\n//-- Contador con reset\nalways @(posedge clk)\n  if (reset)\n    divcounter <= 0;\n  else\n    divcounter <= divcounter + 1;\n\n//-- Comparador que resetea el contador cuando se alcanza el tope\nassign reset = (divcounter == M-1);\n\n//-- La salida es la señal de overflow\nassign o = ~(~reset | clk);  // Sujerencia de @Jesús (FPGAwars Forum) para eliminar un glitch y evitar registar la salida.\n",
                "params": [
                  {
                    "name": "HZ"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
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
                "y": -8
              },
              "size": {
                "width": 544,
                "height": 456
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "136e8d6d-892a-4f14-8d6d-0c5bc6c3e844",
                "port": "constant-out"
              },
              "target": {
                "block": "a70d9684-3b18-4f3d-90cd-28faa893b6b2",
                "port": "HZ"
              }
            },
            {
              "source": {
                "block": "503869f1-ddfd-4d13-93ad-5f90281ba88c",
                "port": "out"
              },
              "target": {
                "block": "a70d9684-3b18-4f3d-90cd-28faa893b6b2",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "a70d9684-3b18-4f3d-90cd-28faa893b6b2",
                "port": "o"
              },
              "target": {
                "block": "c138a610-b61f-4e7c-bb8a-c4f3b0b9f95c",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "09c59c6f9af9866770c357e791049021308a4c8d": {
      "package": {
        "name": "Corazon_Hz",
        "version": "0.1",
        "description": "Corazon genérico para bombear bits a la frecuencia fijada en Hz (por defecto 1Hz)",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22177.215%22%20height=%22156.392%22%20viewBox=%220%200%20166.13943%20146.61829%22%3E%3Cpath%20d=%22M78.495%20143.399c-2.574-4.43-6.565-8.766-14.127-15.35-4.096-3.566-6.588-5.546-20.775-16.506-11.12-8.593-16.668-13.36-23.098-19.847C14.07%2085.208%2010.293%2080.04%207.052%2073.303%204.984%2069%203.562%2064.854%202.676%2060.547c-1.123-5.472-1.275-7.324-1.27-15.382.008-10.573.357-12.332%203.828-19.385%202.58-5.239%204.54-7.997%208.62-12.141%203.963-4.022%206.536-5.85%2012.1-8.6%206.18-3.057%2010.65-3.859%2019.86-3.562%207.157.232%209.776.943%2015.45%204.208%208.929%205.138%2015.858%2013.387%2017.776%2021.162.313%201.27.636%202.312.719%202.312.082%200%20.805-1.487%201.606-3.305%202.727-6.179%205.26-9.95%209.284-13.828%2012.32-11.88%2031.744-14.027%2047.45-5.25%206.414%203.584%2011.633%208.802%2015.676%2015.675%203.184%205.41%204.812%2012.595%205.09%2022.464.402%2014.298-2.214%2024.207-9.174%2034.766-2.763%204.19-4.806%206.73-8.638%2010.73-6.182%206.458-11.758%2011.205-24.92%2021.216-8.307%206.317-13.23%2010.378-20.355%2016.8-5.71%205.143-14.558%2014.1-15.41%2015.596-.372.655-.71%201.189-.749%201.189-.039%200-.544-.815-1.124-1.813z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%222.813%22/%3E%3Ctext%20y=%22136.183%22%20x=%22124.113%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2253.914%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22136.183%22%20x=%22124.113%22%20font-weight=%22700%22%20font-size=%2230.808%22%3EHz%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "319cdca8-e777-4c8b-88ca-f885ba96ad06",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "1",
                "local": false
              },
              "position": {
                "x": 112,
                "y": -224
              }
            },
            {
              "id": "70887b0b-826c-4150-a873-605b77da8272",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 560,
                "y": 128
              }
            },
            {
              "id": "4656865c-bcf1-4668-8e13-9221e32222d3",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -296,
                "y": 128
              }
            },
            {
              "id": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
              "type": "basic.code",
              "data": {
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    }
                  ],
                  "out": [
                    {
                      "name": "o"
                    }
                  ]
                },
                "params": [
                  {
                    "name": "HZ"
                  }
                ],
                "code": "\n//parameter HZ=1;\n\n//-- Constante para dividir y obtener una frecuencia de 1Hz\nlocalparam M = 12000000/HZ;\n\n//-- Calcular el numero de bits para almacenar M\nlocalparam N = $clog2(M);\n\n//-- Registro del divisor\nreg [N-1:0] divcounter;\n\n//-- Temporal clock\nreg clk_t = 0;\n\n//-- Se usa un contador modulo M/2 para luego\n//-- pasarlo por un biestable T y dividir la frecuencia\n//-- entre 2, para que el ciclo de trabajo sea del 50%\nalways @(posedge clk)\n    if (divcounter == M/2) begin\n      clk_t <= 1;\n      divcounter = 0;\n    end \n    else begin\n      divcounter <=  divcounter + 1;\n      clk_t = 0;\n    end \n  \nreg clk_o = 0;\nassign  o = clk_o;\n    \n//-- Biestable T para obtener ciclo de trabajo del 50%\nalways @(posedge clk)\n  if (clk_t)\n    clk_o <= ~clk_o;\n"
              },
              "position": {
                "x": -104,
                "y": -104
              },
              "size": {
                "width": 528,
                "height": 528
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "319cdca8-e777-4c8b-88ca-f885ba96ad06",
                "port": "constant-out"
              },
              "target": {
                "block": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
                "port": "HZ"
              }
            },
            {
              "source": {
                "block": "4656865c-bcf1-4668-8e13-9221e32222d3",
                "port": "out"
              },
              "target": {
                "block": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
                "port": "clk"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
                "port": "o"
              },
              "target": {
                "block": "70887b0b-826c-4150-a873-605b77da8272",
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