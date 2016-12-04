{
  "image": "",
  "state": {
    "pan": {
      "x": 0,
      "y": 0
    },
    "zoom": 1
  },
  "board": "icezum",
  "graph": {
    "blocks": [
      {
        "id": "d70dfcc9-4a58-4993-aa10-8f15a6bbb5a6",
        "type": "bit.1",
        "data": {},
        "position": {
          "x": 48,
          "y": 128
        }
      },
      {
        "id": "13a4aa61-b55e-421c-9d07-e43a96763a94",
        "type": "basic.output",
        "data": {
          "label": "led7",
          "pin": {
            "name": "LED7",
            "value": "104"
          }
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
          "label": "led6",
          "pin": {
            "name": "LED6",
            "value": "102"
          }
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
          "label": "led5",
          "pin": {
            "name": "LED5",
            "value": "101"
          }
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
          "label": "led4",
          "pin": {
            "name": "LED4",
            "value": "99"
          }
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
          "label": "led3",
          "pin": {
            "name": "LED3",
            "value": "98"
          }
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
          "label": "led2",
          "pin": {
            "name": "LED2",
            "value": "97"
          }
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
          "label": "led1",
          "pin": {
            "name": "LED1",
            "value": "96"
          }
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
          "label": "led0",
          "pin": {
            "name": "LED0",
            "value": "95"
          }
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
          "info": "Test: Turning on all the icezum leds"
        },
        "position": {
          "x": 72,
          "y": 672
        }
      }
    ],
    "wires": [
      {
        "source": {
          "block": "d70dfcc9-4a58-4993-aa10-8f15a6bbb5a6",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "13a4aa61-b55e-421c-9d07-e43a96763a94",
          "port": "in"
        },
        "vertices": []
      },
      {
        "source": {
          "block": "d70dfcc9-4a58-4993-aa10-8f15a6bbb5a6",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "d41c5ec9-54ec-45be-8a96-36e88ba88971",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "d70dfcc9-4a58-4993-aa10-8f15a6bbb5a6",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "824ad697-d3c1-4e43-8da8-5dc4c1bc1f06",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "d70dfcc9-4a58-4993-aa10-8f15a6bbb5a6",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "b6ff8c2f-97d5-484b-ba8c-c84f1949c991",
          "port": "in"
        },
        "vertices": []
      },
      {
        "source": {
          "block": "d70dfcc9-4a58-4993-aa10-8f15a6bbb5a6",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "6e59610f-6133-40b3-af41-e28061837188",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "d70dfcc9-4a58-4993-aa10-8f15a6bbb5a6",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "b204b496-2e19-49b3-ac44-ce97e8718483",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "d70dfcc9-4a58-4993-aa10-8f15a6bbb5a6",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "7393a4e3-36da-45e9-bbaa-bda057806f35",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "d70dfcc9-4a58-4993-aa10-8f15a6bbb5a6",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "b4c6d72b-6a6e-49c6-a826-b290b8de3a4a",
          "port": "in"
        }
      }
    ]
  },
  "deps": {
    "bit.1": {
      "graph": {
        "blocks": [
          {
            "id": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
            "type": "basic.code",
            "data": {
              "code": "// Bit 1\n\nassign v = 1'b1;",
              "ports": {
                "in": [],
                "out": [
                  "v"
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
              "label": ""
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
      "deps": {},
      "image": "resources/images/1.svg",
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