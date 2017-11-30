{
  "version": "1.1",
  "package": {
    "name": "ledson",
    "version": "",
    "description": "ledson",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "13a4aa61-b55e-421c-9d07-e43a96763a94",
          "type": "basic.output",
          "data": {
            "name": "led7",
            "pins": [
              {
                "index": "0",
                "name": "LED7",
                "value": "104"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 464,
            "y": 24
          }
        },
        {
          "id": "d41c5ec9-54ec-45be-8a96-36e88ba88971",
          "type": "basic.output",
          "data": {
            "name": "led6",
            "pins": [
              {
                "index": "0",
                "name": "LED6",
                "value": "102"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 464,
            "y": 104
          }
        },
        {
          "id": "824ad697-d3c1-4e43-8da8-5dc4c1bc1f06",
          "type": "basic.output",
          "data": {
            "name": "led5",
            "pins": [
              {
                "index": "0",
                "name": "LED5",
                "value": "101"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 464,
            "y": 184
          }
        },
        {
          "id": "b6ff8c2f-97d5-484b-ba8c-c84f1949c991",
          "type": "basic.output",
          "data": {
            "name": "led4",
            "pins": [
              {
                "index": "0",
                "name": "LED4",
                "value": "99"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 464,
            "y": 264
          }
        },
        {
          "id": "6e59610f-6133-40b3-af41-e28061837188",
          "type": "basic.output",
          "data": {
            "name": "led3",
            "pins": [
              {
                "index": "0",
                "name": "LED3",
                "value": "98"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 464,
            "y": 344
          }
        },
        {
          "id": "b204b496-2e19-49b3-ac44-ce97e8718483",
          "type": "basic.output",
          "data": {
            "name": "led2",
            "pins": [
              {
                "index": "0",
                "name": "LED2",
                "value": "97"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 464,
            "y": 424
          }
        },
        {
          "id": "7393a4e3-36da-45e9-bbaa-bda057806f35",
          "type": "basic.output",
          "data": {
            "name": "led1",
            "pins": [
              {
                "index": "0",
                "name": "LED1",
                "value": "96"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 464,
            "y": 504
          }
        },
        {
          "id": "b4c6d72b-6a6e-49c6-a826-b290b8de3a4a",
          "type": "basic.output",
          "data": {
            "name": "led0",
            "pins": [
              {
                "index": "0",
                "name": "LED0",
                "value": "95"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 464,
            "y": 584
          }
        },
        {
          "id": "db408ef6-0823-4608-b501-b97961bb61ae",
          "type": "basic.info",
          "data": {
            "info": "Test: Turning on all the icezum leds",
            "readonly": true
          },
          "position": {
            "x": 32,
            "y": 64
          },
          "size": {
            "width": 320,
            "height": 48
          }
        },
        {
          "id": "5491930e-6d33-42cc-98a3-0c61a5168d04",
          "type": "3e6c249e205080168c1bf4ee8dbc33b50653d5f4",
          "position": {
            "x": 96,
            "y": 104
          },
          "size": {
            "width": 96,
            "height": 64
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "5491930e-6d33-42cc-98a3-0c61a5168d04",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "d41c5ec9-54ec-45be-8a96-36e88ba88971",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "5491930e-6d33-42cc-98a3-0c61a5168d04",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "13a4aa61-b55e-421c-9d07-e43a96763a94",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "5491930e-6d33-42cc-98a3-0c61a5168d04",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "824ad697-d3c1-4e43-8da8-5dc4c1bc1f06",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "5491930e-6d33-42cc-98a3-0c61a5168d04",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "b6ff8c2f-97d5-484b-ba8c-c84f1949c991",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "5491930e-6d33-42cc-98a3-0c61a5168d04",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "6e59610f-6133-40b3-af41-e28061837188",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "5491930e-6d33-42cc-98a3-0c61a5168d04",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "b204b496-2e19-49b3-ac44-ce97e8718483",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "5491930e-6d33-42cc-98a3-0c61a5168d04",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "7393a4e3-36da-45e9-bbaa-bda057806f35",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "5491930e-6d33-42cc-98a3-0c61a5168d04",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "b4c6d72b-6a6e-49c6-a826-b290b8de3a4a",
            "port": "in"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 526.2283,
        "y": 142.0282
      },
      "zoom": 0.9768
    }
  },
  "dependencies": {
    "3e6c249e205080168c1bf4ee8dbc33b50653d5f4": {
      "package": {
        "name": "Bit 1",
        "version": "1.0.0",
        "description": "Assign 1 to the output wire",
        "author": "Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2247.303%22%20height=%2227.648%22%20viewBox=%220%200%2044.346456%2025.919999%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22325.218%22%20y=%22315.455%22%20font-weight=%22400%22%20font-size=%2212.669%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22translate(-307.01%20-298.51)%22%3E%3Ctspan%20x=%22325.218%22%20y=%22315.455%22%20style=%22-inkscape-font-specification:'Courier%2010%20Pitch'%22%20font-family=%22Courier%2010%20Pitch%22%3E1%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
              "type": "basic.code",
              "data": {
                "code": "// Bit 1\n\nassign v = 1'b1;",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "v"
                    }
                  ]
                }
              },
              "position": {
                "x": 96,
                "y": 96
              }
            },
            {
              "id": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 608,
                "y": 192
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
                "port": "v"
              },
              "target": {
                "block": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
                "port": "in"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 0,
            "y": 0
          },
          "zoom": 1
        }
      }
    }
  }
}