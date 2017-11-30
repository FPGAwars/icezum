{
  "version": "1.1",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "ebd9cc74-b95f-4693-8176-aa46b5414525",
          "type": "basic.output",
          "data": {
            "name": "Serial",
            "pins": [
              {
                "index": "0",
                "name": "TX",
                "value": "8"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1256,
            "y": -152
          }
        },
        {
          "id": "99d18184-3a14-4b54-8e46-bea3d45f183a",
          "type": "basic.input",
          "data": {
            "name": "pushbutton",
            "pins": [
              {
                "index": "0",
                "name": "SW2",
                "value": "11"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -192,
            "y": -120
          }
        },
        {
          "id": "d2cb836f-3afa-4b5e-a253-068f6a7fe22e",
          "type": "basic.input",
          "data": {
            "name": "Serial",
            "pins": [
              {
                "index": "0",
                "name": "RX",
                "value": "9"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -8,
            "y": 32
          }
        },
        {
          "id": "318abecb-bacf-41f1-a0a2-ab7b46e181f8",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "LED7",
                "value": "104"
              },
              {
                "index": "6",
                "name": "LED6",
                "value": "102"
              },
              {
                "index": "5",
                "name": "LED5",
                "value": "101"
              },
              {
                "index": "4",
                "name": "LED4",
                "value": "99"
              },
              {
                "index": "3",
                "name": "LED3",
                "value": "98"
              },
              {
                "index": "2",
                "name": "LED2",
                "value": "97"
              },
              {
                "index": "1",
                "name": "LED1",
                "value": "96"
              },
              {
                "index": "0",
                "name": "LED0",
                "value": "95"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 736,
            "y": 192
          }
        },
        {
          "id": "0ca265b2-8f3c-4a62-a9d7-5210d170cfc7",
          "type": "basic.input",
          "data": {
            "name": "Pushbutton",
            "pins": [
              {
                "index": "0",
                "name": "SW1",
                "value": "10"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -96,
            "y": 504
          }
        },
        {
          "id": "85cc0838-d2b7-4ae0-966f-dbe1c3f2331f",
          "type": "basic.code",
          "data": {
            "code": "// @include pwm_led.v\n// @include prescaler.v\n\npwm_led U1 (clk, leds);\n\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                }
              ],
              "out": [
                {
                  "name": "leds",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 128,
            "y": 312
          },
          "size": {
            "width": 240,
            "height": 112
          }
        },
        {
          "id": "7a9f326d-c40d-486a-9b9d-98041db983d7",
          "type": "basic.code",
          "data": {
            "code": "// @include kitt.v\n// @include prescaler.v\n\nkitt U1 (clk, leds);\n\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                }
              ],
              "out": [
                {
                  "name": "leds",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 128,
            "y": 192
          },
          "size": {
            "width": 240,
            "height": 112
          }
        },
        {
          "id": "d20dd73d-d8ee-4afa-a527-54ea5bb54c81",
          "type": "e54a3fe91ac7004d0d4208f1a38643146f08958c",
          "position": {
            "x": 552,
            "y": 256
          },
          "size": {
            "width": 96,
            "height": 160
          }
        },
        {
          "id": "6e003a1c-7af9-48b2-a4f8-a0965cffbcd7",
          "type": "3ecdbbd22797b57d4ab062aab7f6acf7c4ee0e46",
          "position": {
            "x": 264,
            "y": 472
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "a5bf96a6-9948-445a-8ff5-67273638a743",
          "type": "d3ec3e54382a180944492da9d34569a122cba71c",
          "position": {
            "x": 80,
            "y": 488
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "c43b76f0-1de1-4e22-aaf6-275399529ca2",
          "type": "basic.code",
          "data": {
            "code": "// @include txstr.v\n// @include uart_tx.v\n// @include baudgen.vh\n// @include baudgen_tx.v\n\ntxstr U1 (clk, go, tx);",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "go"
                }
              ],
              "out": [
                {
                  "name": "tx"
                }
              ]
            }
          },
          "position": {
            "x": 176,
            "y": -240
          },
          "size": {
            "width": 256,
            "height": 176
          }
        },
        {
          "id": "9e93f2e7-8315-4446-805f-2eeb18fdc4ab",
          "type": "4089617d41c79e50c10f89ecab88177e342326a4",
          "position": {
            "x": 272,
            "y": 112
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "fae85b9f-f920-4a59-895b-46cf32995e01",
          "type": "d3ec3e54382a180944492da9d34569a122cba71c",
          "position": {
            "x": 8,
            "y": -136
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "d60528e4-e97f-41f1-a52c-498646d7d708",
          "type": "basic.code",
          "data": {
            "code": "// @include echo.v\n// @include uart_rx.v\n// @include baudgen_rx.v\n\necho CT3 (clk, rx, \n          tx, leds);",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "rx"
                }
              ],
              "out": [
                {
                  "name": "tx"
                },
                {
                  "name": "leds",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 176,
            "y": -32
          },
          "size": {
            "width": 256,
            "height": 128
          }
        },
        {
          "id": "37fcc7c8-62b3-4728-a00a-bd500c65c685",
          "type": "a27ebf3edfd3e3cb5cb8b8f4632c3511b398a848",
          "position": {
            "x": 1080,
            "y": -168
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "b39ef1b0-a71b-404c-80d5-6dfbf75902ab",
          "type": "48f62bee99783bae04f6c9e77c55077373f1cb8e",
          "position": {
            "x": 904,
            "y": -64
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "b595e174-aea1-4799-8a65-47712538a6f7",
          "type": "bf59ba7920e78b92cf5f2bf60554c5e207aad678",
          "position": {
            "x": 696,
            "y": -80
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "9a5c3210-90ac-416f-8613-eac9429d62cc",
          "type": "basic.info",
          "data": {
            "info": "<B>User Test Circuit</B>\n\nThis is the circuit that is preloaded in the Icezum Alhambra board when\nyou receive it. Every time the SW1 pushbutton is pressed, the active circuit\nis change. There are 4 test circuits:\n\n1) The 8 leds are fadding in and out\n2) The leds move from side to side, like in the knight rider tv show\n3) TX mode: when the SW2 is pressed, a string is send by the Serial line. \nThe baudrate is 115200\n4) Echo mode: All the bytes received are shown in the leds and echoed back\nto the host computer",
            "readonly": true
          },
          "position": {
            "x": -328,
            "y": -520
          },
          "size": {
            "width": 624,
            "height": 224
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "d20dd73d-d8ee-4afa-a527-54ea5bb54c81",
            "port": "0ae5d48c-40c5-4072-9269-faae09166a45"
          },
          "target": {
            "block": "318abecb-bacf-41f1-a0a2-ab7b46e181f8",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "6e003a1c-7af9-48b2-a4f8-a0965cffbcd7",
            "port": "738607bf-8052-4b88-84ee-e6089b0ae428"
          },
          "target": {
            "block": "d20dd73d-d8ee-4afa-a527-54ea5bb54c81",
            "port": "1c379514-b325-4950-bcaf-de90c3ed2c7c"
          },
          "size": 2
        },
        {
          "source": {
            "block": "a5bf96a6-9948-445a-8ff5-67273638a743",
            "port": "ca09a156-6c00-44f0-9f05-b6f883094cc8"
          },
          "target": {
            "block": "6e003a1c-7af9-48b2-a4f8-a0965cffbcd7",
            "port": "7c8078c9-ffeb-47ac-944b-da56653c5055"
          }
        },
        {
          "source": {
            "block": "0ca265b2-8f3c-4a62-a9d7-5210d170cfc7",
            "port": "out"
          },
          "target": {
            "block": "a5bf96a6-9948-445a-8ff5-67273638a743",
            "port": "30bde887-830b-4c29-aa25-b5f457ef70e4"
          }
        },
        {
          "source": {
            "block": "85cc0838-d2b7-4ae0-966f-dbe1c3f2331f",
            "port": "leds"
          },
          "target": {
            "block": "d20dd73d-d8ee-4afa-a527-54ea5bb54c81",
            "port": "35f3bdab-ca89-42dc-ac7e-3b8741d3e9fa"
          },
          "size": 8
        },
        {
          "source": {
            "block": "7a9f326d-c40d-486a-9b9d-98041db983d7",
            "port": "leds"
          },
          "target": {
            "block": "d20dd73d-d8ee-4afa-a527-54ea5bb54c81",
            "port": "2e966f6e-1a39-4021-9b18-8d249a796e1e"
          },
          "vertices": [
            {
              "x": 408,
              "y": 296
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "9e93f2e7-8315-4446-805f-2eeb18fdc4ab",
            "port": "32038fb9-c309-483d-a68c-de6fd7ab6a0f"
          },
          "target": {
            "block": "d20dd73d-d8ee-4afa-a527-54ea5bb54c81",
            "port": "b6948a2e-b1fa-41ff-85dd-1c05104fb4ff"
          },
          "vertices": [
            {
              "x": 440,
              "y": 192
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "fae85b9f-f920-4a59-895b-46cf32995e01",
            "port": "ca09a156-6c00-44f0-9f05-b6f883094cc8"
          },
          "target": {
            "block": "c43b76f0-1de1-4e22-aaf6-275399529ca2",
            "port": "go"
          }
        },
        {
          "source": {
            "block": "99d18184-3a14-4b54-8e46-bea3d45f183a",
            "port": "out"
          },
          "target": {
            "block": "fae85b9f-f920-4a59-895b-46cf32995e01",
            "port": "30bde887-830b-4c29-aa25-b5f457ef70e4"
          }
        },
        {
          "source": {
            "block": "d60528e4-e97f-41f1-a52c-498646d7d708",
            "port": "leds"
          },
          "target": {
            "block": "d20dd73d-d8ee-4afa-a527-54ea5bb54c81",
            "port": "de145e94-1f11-43df-87e7-f20a258ece99"
          },
          "vertices": [
            {
              "x": 488,
              "y": 168
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "d2cb836f-3afa-4b5e-a253-068f6a7fe22e",
            "port": "out"
          },
          "target": {
            "block": "d60528e4-e97f-41f1-a52c-498646d7d708",
            "port": "rx"
          }
        },
        {
          "source": {
            "block": "37fcc7c8-62b3-4728-a00a-bd500c65c685",
            "port": "317c458f-c7bb-49b3-8c4a-58fb0e649e05"
          },
          "target": {
            "block": "ebd9cc74-b95f-4693-8176-aa46b5414525",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "c43b76f0-1de1-4e22-aaf6-275399529ca2",
            "port": "tx"
          },
          "target": {
            "block": "37fcc7c8-62b3-4728-a00a-bd500c65c685",
            "port": "64c9e1b6-08d3-4582-bc94-1cd9136e5781"
          }
        },
        {
          "source": {
            "block": "d60528e4-e97f-41f1-a52c-498646d7d708",
            "port": "tx"
          },
          "target": {
            "block": "37fcc7c8-62b3-4728-a00a-bd500c65c685",
            "port": "ccf5c727-66c5-46d2-a7a7-6d1754e0fe14"
          },
          "vertices": [
            {
              "x": 624,
              "y": -80
            }
          ]
        },
        {
          "source": {
            "block": "b39ef1b0-a71b-404c-80d5-6dfbf75902ab",
            "port": "90ec9649-277b-414c-8c3b-4472b3a5cc84"
          },
          "target": {
            "block": "37fcc7c8-62b3-4728-a00a-bd500c65c685",
            "port": "c7a2cab0-edf0-4ba2-915f-e24d9cad3cfc"
          }
        },
        {
          "source": {
            "block": "b595e174-aea1-4799-8a65-47712538a6f7",
            "port": "6a253ddf-22b2-43cd-ba6f-561bd1af6970"
          },
          "target": {
            "block": "b39ef1b0-a71b-404c-80d5-6dfbf75902ab",
            "port": "42cfd937-c27f-4803-a2e7-8fd3e4f43569"
          },
          "size": 2
        },
        {
          "source": {
            "block": "6e003a1c-7af9-48b2-a4f8-a0965cffbcd7",
            "port": "738607bf-8052-4b88-84ee-e6089b0ae428"
          },
          "target": {
            "block": "b39ef1b0-a71b-404c-80d5-6dfbf75902ab",
            "port": "baebf97a-beb2-460f-b9de-0e57ba29333c"
          },
          "size": 2
        }
      ]
    },
    "state": {
      "pan": {
        "x": 504.0287,
        "y": 446.6475
      },
      "zoom": 0.8031
    }
  },
  "dependencies": {
    "e54a3fe91ac7004d0d4208f1a38643146f08958c": {
      "package": {
        "name": "Mux-4-1-8bits",
        "version": "0.1",
        "description": "Multiplexor 4:1 de 8 bits",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2246.347%22%20height=%22182.066%22%20viewBox=%220%200%2043.450545%20170.68777%22%3E%3Cpath%20d=%22M42.044%2021.324c0-7.134-3.893-13.724-10.206-17.275a20.674%2020.674%200%200%200-20.365.08C5.189%207.728%201.349%2014.347%201.407%2021.481v127.723c-.058%207.135%203.782%2013.755%2010.066%2017.355a20.674%2020.674%200%200%200%2020.365.079c6.313-3.551%2010.206-10.14%2010.206-17.275z%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222.813%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2216.068%22%20y=%2270.768%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2216.068%22%20y=%2270.768%22%3E2%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2216.018%22%20y=%2227.719%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2216.018%22%20y=%2227.719%22%3E3%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2216.068%22%20y=%22113.534%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2216.068%22%20y=%22113.534%22%3E1%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2216.068%22%20y=%22156.655%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2216.068%22%20y=%22156.655%22%3E0%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "de145e94-1f11-43df-87e7-f20a258ece99",
              "type": "basic.input",
              "data": {
                "name": "i3",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": -16,
                "y": 48
              }
            },
            {
              "id": "b6948a2e-b1fa-41ff-85dd-1c05104fb4ff",
              "type": "basic.input",
              "data": {
                "name": "i2",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": -16,
                "y": 136
              }
            },
            {
              "id": "0ae5d48c-40c5-4072-9269-faae09166a45",
              "type": "basic.output",
              "data": {
                "name": "o",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 888,
                "y": 184
              }
            },
            {
              "id": "2e966f6e-1a39-4021-9b18-8d249a796e1e",
              "type": "basic.input",
              "data": {
                "name": "i1",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": -16,
                "y": 216
              }
            },
            {
              "id": "35f3bdab-ca89-42dc-ac7e-3b8741d3e9fa",
              "type": "basic.input",
              "data": {
                "name": "i0",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": -16,
                "y": 312
              }
            },
            {
              "id": "1c379514-b325-4950-bcaf-de90c3ed2c7c",
              "type": "basic.input",
              "data": {
                "name": "sel",
                "range": "[1:0]",
                "clock": false,
                "size": 2
              },
              "position": {
                "x": -8,
                "y": 424
              }
            },
            {
              "id": "af058f57-56b1-4dff-8f7d-ec48c0a1cb48",
              "type": "deb8ad1a7c7780b00e7108861adea59070bdeda9",
              "position": {
                "x": 144,
                "y": 48
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "3cd8421b-d7b5-44a4-ab8f-ed5ff7e707f1",
              "type": "4856f5eac671103f5508ae9d3f1a44c0616404c6",
              "position": {
                "x": 728,
                "y": 184
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "42fafeec-7031-4c7e-be68-fcbe91750403",
              "type": "7533bfdc9ea9ebe84fe751021d1ebfe55887fbc4",
              "position": {
                "x": 504,
                "y": 0
              },
              "size": {
                "width": 96,
                "height": 160
              }
            },
            {
              "id": "72939bf6-2f94-4915-9468-7fbbe15275ff",
              "type": "7533bfdc9ea9ebe84fe751021d1ebfe55887fbc4",
              "position": {
                "x": 504,
                "y": 248
              },
              "size": {
                "width": 96,
                "height": 160
              }
            },
            {
              "id": "1a21afed-748d-467c-8b02-ad26f25fd565",
              "type": "deb8ad1a7c7780b00e7108861adea59070bdeda9",
              "position": {
                "x": 144,
                "y": 136
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "f0d61151-51af-458b-8315-16822398d903",
              "type": "deb8ad1a7c7780b00e7108861adea59070bdeda9",
              "position": {
                "x": 144,
                "y": 216
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "3b8cc4c5-61ec-4ce0-be91-5461d0faa687",
              "type": "deb8ad1a7c7780b00e7108861adea59070bdeda9",
              "position": {
                "x": 144,
                "y": 312
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
                "block": "3cd8421b-d7b5-44a4-ab8f-ed5ff7e707f1",
                "port": "f1ca4474-6289-4046-99d2-604498fb5df6"
              },
              "target": {
                "block": "0ae5d48c-40c5-4072-9269-faae09166a45",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "72939bf6-2f94-4915-9468-7fbbe15275ff",
                "port": "27f865f2-2928-4fb8-b9db-ec70b17edfaf"
              },
              "target": {
                "block": "3cd8421b-d7b5-44a4-ab8f-ed5ff7e707f1",
                "port": "ad34fe8d-7102-4207-a362-4b841a8dee46"
              },
              "vertices": [
                {
                  "x": 672,
                  "y": 264
                }
              ],
              "size": 4
            },
            {
              "source": {
                "block": "42fafeec-7031-4c7e-be68-fcbe91750403",
                "port": "27f865f2-2928-4fb8-b9db-ec70b17edfaf"
              },
              "target": {
                "block": "3cd8421b-d7b5-44a4-ab8f-ed5ff7e707f1",
                "port": "9f34383e-54da-4144-8705-1a190000e375"
              },
              "vertices": [
                {
                  "x": 672,
                  "y": 136
                }
              ],
              "size": 4
            },
            {
              "source": {
                "block": "de145e94-1f11-43df-87e7-f20a258ece99",
                "port": "out"
              },
              "target": {
                "block": "af058f57-56b1-4dff-8f7d-ec48c0a1cb48",
                "port": "2238a237-705c-41fd-99d6-c39f1946324c"
              },
              "size": 8
            },
            {
              "source": {
                "block": "b6948a2e-b1fa-41ff-85dd-1c05104fb4ff",
                "port": "out"
              },
              "target": {
                "block": "1a21afed-748d-467c-8b02-ad26f25fd565",
                "port": "2238a237-705c-41fd-99d6-c39f1946324c"
              },
              "size": 8
            },
            {
              "source": {
                "block": "2e966f6e-1a39-4021-9b18-8d249a796e1e",
                "port": "out"
              },
              "target": {
                "block": "f0d61151-51af-458b-8315-16822398d903",
                "port": "2238a237-705c-41fd-99d6-c39f1946324c"
              },
              "size": 8
            },
            {
              "source": {
                "block": "35f3bdab-ca89-42dc-ac7e-3b8741d3e9fa",
                "port": "out"
              },
              "target": {
                "block": "3b8cc4c5-61ec-4ce0-be91-5461d0faa687",
                "port": "2238a237-705c-41fd-99d6-c39f1946324c"
              },
              "size": 8
            },
            {
              "source": {
                "block": "1c379514-b325-4950-bcaf-de90c3ed2c7c",
                "port": "out"
              },
              "target": {
                "block": "72939bf6-2f94-4915-9468-7fbbe15275ff",
                "port": "710a3306-1535-4c1a-9d81-5331f6807a23"
              },
              "vertices": [
                {
                  "x": 424,
                  "y": 432
                }
              ],
              "size": 2
            },
            {
              "source": {
                "block": "1c379514-b325-4950-bcaf-de90c3ed2c7c",
                "port": "out"
              },
              "target": {
                "block": "42fafeec-7031-4c7e-be68-fcbe91750403",
                "port": "710a3306-1535-4c1a-9d81-5331f6807a23"
              },
              "vertices": [
                {
                  "x": 424,
                  "y": 200
                }
              ],
              "size": 2
            },
            {
              "source": {
                "block": "af058f57-56b1-4dff-8f7d-ec48c0a1cb48",
                "port": "264e6021-ea4a-4b71-90fc-033e2b6440ea"
              },
              "target": {
                "block": "42fafeec-7031-4c7e-be68-fcbe91750403",
                "port": "a9484032-4c3a-4351-a115-0e2270abe2ed"
              },
              "vertices": [
                {
                  "x": 280,
                  "y": 48
                }
              ],
              "size": 4
            },
            {
              "source": {
                "block": "3b8cc4c5-61ec-4ce0-be91-5461d0faa687",
                "port": "00beb7e2-ae74-4a9f-8372-7668ad189140"
              },
              "target": {
                "block": "72939bf6-2f94-4915-9468-7fbbe15275ff",
                "port": "b05f7458-233c-452e-8877-5fa9bc085347"
              },
              "size": 4
            },
            {
              "source": {
                "block": "1a21afed-748d-467c-8b02-ad26f25fd565",
                "port": "264e6021-ea4a-4b71-90fc-033e2b6440ea"
              },
              "target": {
                "block": "42fafeec-7031-4c7e-be68-fcbe91750403",
                "port": "97675c8f-7365-488b-aade-1bc88789c753"
              },
              "vertices": [
                {
                  "x": 304,
                  "y": 96
                }
              ],
              "size": 4
            },
            {
              "source": {
                "block": "f0d61151-51af-458b-8315-16822398d903",
                "port": "264e6021-ea4a-4b71-90fc-033e2b6440ea"
              },
              "target": {
                "block": "42fafeec-7031-4c7e-be68-fcbe91750403",
                "port": "3e595573-cdd3-4a9d-b720-df86b2fb0fc0"
              },
              "vertices": [
                {
                  "x": 320,
                  "y": 160
                }
              ],
              "size": 4
            },
            {
              "source": {
                "block": "3b8cc4c5-61ec-4ce0-be91-5461d0faa687",
                "port": "264e6021-ea4a-4b71-90fc-033e2b6440ea"
              },
              "target": {
                "block": "42fafeec-7031-4c7e-be68-fcbe91750403",
                "port": "b05f7458-233c-452e-8877-5fa9bc085347"
              },
              "vertices": [
                {
                  "x": 336,
                  "y": 168
                }
              ],
              "size": 4
            },
            {
              "source": {
                "block": "af058f57-56b1-4dff-8f7d-ec48c0a1cb48",
                "port": "00beb7e2-ae74-4a9f-8372-7668ad189140"
              },
              "target": {
                "block": "72939bf6-2f94-4915-9468-7fbbe15275ff",
                "port": "a9484032-4c3a-4351-a115-0e2270abe2ed"
              },
              "vertices": [
                {
                  "x": 408,
                  "y": 200
                }
              ],
              "size": 4
            },
            {
              "source": {
                "block": "1a21afed-748d-467c-8b02-ad26f25fd565",
                "port": "00beb7e2-ae74-4a9f-8372-7668ad189140"
              },
              "target": {
                "block": "72939bf6-2f94-4915-9468-7fbbe15275ff",
                "port": "97675c8f-7365-488b-aade-1bc88789c753"
              },
              "vertices": [
                {
                  "x": 384,
                  "y": 232
                }
              ],
              "size": 4
            },
            {
              "source": {
                "block": "f0d61151-51af-458b-8315-16822398d903",
                "port": "00beb7e2-ae74-4a9f-8372-7668ad189140"
              },
              "target": {
                "block": "72939bf6-2f94-4915-9468-7fbbe15275ff",
                "port": "3e595573-cdd3-4a9d-b720-df86b2fb0fc0"
              },
              "vertices": [
                {
                  "x": 360,
                  "y": 288
                }
              ],
              "size": 4
            }
          ]
        },
        "state": {
          "pan": {
            "x": 53.12,
            "y": 65.88
          },
          "zoom": 0.82
        }
      }
    },
    "deb8ad1a7c7780b00e7108861adea59070bdeda9": {
      "package": {
        "name": "Split-2",
        "version": "0.0.1",
        "description": "Separador de bus de 8bits en 2 (4 + 4)",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2277.792%22%20height=%2244.517%22%20viewBox=%220%200%2072.930084%2041.73476%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2263.946%22%20y=%226.994%22%20font-weight=%22400%22%20font-size=%229.594%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22red%22%3E%3Ctspan%20x=%2263.946%22%20y=%226.994%22%3EH%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M.473%2017.731h37.868l8.91-8.909h25.21v4.594H48.295l-7.434%207.812%207.308%208.19h24.192v4.032H46.909l-8.694-8.316H.542z%22%20fill=%22green%22%20stroke=%22green%22%20stroke-width=%22.938%22%20stroke-linecap=%22square%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2265.478%22%20y=%2241.735%22%20font-weight=%22400%22%20font-size=%229.594%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22red%22%3E%3Ctspan%20x=%2265.478%22%20y=%2241.735%22%3EL%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "264e6021-ea4a-4b71-90fc-033e2b6440ea",
              "type": "basic.output",
              "data": {
                "name": "h",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 704,
                "y": 240
              }
            },
            {
              "id": "2238a237-705c-41fd-99d6-c39f1946324c",
              "type": "basic.input",
              "data": {
                "name": "i",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 136,
                "y": 288
              }
            },
            {
              "id": "00beb7e2-ae74-4a9f-8372-7668ad189140",
              "type": "basic.output",
              "data": {
                "name": "l",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 704,
                "y": 336
              }
            },
            {
              "id": "3545528c-05e2-4e95-8223-5b7b77587423",
              "type": "basic.code",
              "data": {
                "code": "assign {o1,o0} = i;\n\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i",
                      "range": "[7:0]",
                      "size": 8
                    }
                  ],
                  "out": [
                    {
                      "name": "o1",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "o0",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ]
                }
              },
              "position": {
                "x": 320,
                "y": 224
              },
              "size": {
                "width": 288,
                "height": 192
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "2238a237-705c-41fd-99d6-c39f1946324c",
                "port": "out"
              },
              "target": {
                "block": "3545528c-05e2-4e95-8223-5b7b77587423",
                "port": "i"
              },
              "size": 8
            },
            {
              "source": {
                "block": "3545528c-05e2-4e95-8223-5b7b77587423",
                "port": "o1"
              },
              "target": {
                "block": "264e6021-ea4a-4b71-90fc-033e2b6440ea",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "3545528c-05e2-4e95-8223-5b7b77587423",
                "port": "o0"
              },
              "target": {
                "block": "00beb7e2-ae74-4a9f-8372-7668ad189140",
                "port": "in"
              },
              "size": 4
            }
          ]
        },
        "state": {
          "pan": {
            "x": -18,
            "y": -56.5
          },
          "zoom": 1
        }
      }
    },
    "4856f5eac671103f5508ae9d3f1a44c0616404c6": {
      "package": {
        "name": "Join-2",
        "version": "0.0.1",
        "description": "Agregador de 2 buses de 4 a bus de 8bits",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2277.792%22%20height=%2245.277%22%20viewBox=%220%200%2072.930084%2042.447511%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%221.703%22%20y=%226.994%22%20font-weight=%22400%22%20font-size=%229.594%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22red%22%3E%3Ctspan%20x=%221.703%22%20y=%226.994%22%3EH%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M72.457%2017.731H34.589l-8.91-8.909H.47v4.594h24.166l7.434%207.812-7.308%208.19H.569v4.032h25.452l8.694-8.316h37.673z%22%20fill=%22green%22%20stroke=%22green%22%20stroke-width=%22.938%22%20stroke-linecap=%22square%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%222.226%22%20y=%2242.448%22%20font-weight=%22400%22%20font-size=%229.594%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22red%22%3E%3Ctspan%20x=%222.226%22%20y=%2242.448%22%3EL%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "9f34383e-54da-4144-8705-1a190000e375",
              "type": "basic.input",
              "data": {
                "name": "i1",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": 136,
                "y": 240
              }
            },
            {
              "id": "f1ca4474-6289-4046-99d2-604498fb5df6",
              "type": "basic.output",
              "data": {
                "name": "o",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 704,
                "y": 288
              }
            },
            {
              "id": "ad34fe8d-7102-4207-a362-4b841a8dee46",
              "type": "basic.input",
              "data": {
                "name": "i0",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": 136,
                "y": 336
              }
            },
            {
              "id": "3545528c-05e2-4e95-8223-5b7b77587423",
              "type": "basic.code",
              "data": {
                "code": "assign o = {i1,i0};\n\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i1",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "i0",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ],
                  "out": [
                    {
                      "name": "o",
                      "range": "[7:0]",
                      "size": 8
                    }
                  ]
                }
              },
              "position": {
                "x": 320,
                "y": 224
              },
              "size": {
                "width": 288,
                "height": 192
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "9f34383e-54da-4144-8705-1a190000e375",
                "port": "out"
              },
              "target": {
                "block": "3545528c-05e2-4e95-8223-5b7b77587423",
                "port": "i1"
              },
              "size": 4
            },
            {
              "source": {
                "block": "ad34fe8d-7102-4207-a362-4b841a8dee46",
                "port": "out"
              },
              "target": {
                "block": "3545528c-05e2-4e95-8223-5b7b77587423",
                "port": "i0"
              },
              "size": 4
            },
            {
              "source": {
                "block": "3545528c-05e2-4e95-8223-5b7b77587423",
                "port": "o"
              },
              "target": {
                "block": "f1ca4474-6289-4046-99d2-604498fb5df6",
                "port": "in"
              },
              "size": 8
            }
          ]
        },
        "state": {
          "pan": {
            "x": -18,
            "y": -56.5
          },
          "zoom": 1
        }
      }
    },
    "7533bfdc9ea9ebe84fe751021d1ebfe55887fbc4": {
      "package": {
        "name": "Mux-4-1-4bits",
        "version": "0.1",
        "description": "Multiplexor de 4:1 de 4 bits",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2246.347%22%20height=%22182.066%22%20viewBox=%220%200%2043.450545%20170.68777%22%3E%3Cpath%20d=%22M42.044%2021.324c0-7.134-3.893-13.724-10.206-17.275a20.674%2020.674%200%200%200-20.365.08C5.189%207.728%201.349%2014.347%201.407%2021.481v127.723c-.058%207.135%203.782%2013.755%2010.066%2017.355a20.674%2020.674%200%200%200%2020.365.079c6.313-3.551%2010.206-10.14%2010.206-17.275z%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222.813%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2216.068%22%20y=%2270.768%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2216.068%22%20y=%2270.768%22%3E2%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2216.018%22%20y=%2227.719%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2216.018%22%20y=%2227.719%22%3E3%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2216.068%22%20y=%22113.534%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2216.068%22%20y=%22113.534%22%3E1%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2216.068%22%20y=%22156.655%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2216.068%22%20y=%22156.655%22%3E0%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "a9484032-4c3a-4351-a115-0e2270abe2ed",
              "type": "basic.input",
              "data": {
                "name": "i3",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": -96,
                "y": 80
              }
            },
            {
              "id": "97675c8f-7365-488b-aade-1bc88789c753",
              "type": "basic.input",
              "data": {
                "name": "i2",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": -96,
                "y": 152
              }
            },
            {
              "id": "27f865f2-2928-4fb8-b9db-ec70b17edfaf",
              "type": "basic.output",
              "data": {
                "name": "o",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 792,
                "y": 168
              }
            },
            {
              "id": "3e595573-cdd3-4a9d-b720-df86b2fb0fc0",
              "type": "basic.input",
              "data": {
                "name": "i1",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": -96,
                "y": 224
              }
            },
            {
              "id": "b05f7458-233c-452e-8877-5fa9bc085347",
              "type": "basic.input",
              "data": {
                "name": "i0",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": -96,
                "y": 296
              }
            },
            {
              "id": "710a3306-1535-4c1a-9d81-5331f6807a23",
              "type": "basic.input",
              "data": {
                "name": "sel",
                "range": "[1:0]",
                "clock": false,
                "size": 2
              },
              "position": {
                "x": -96,
                "y": 424
              }
            },
            {
              "id": "f4bfb39a-5cc5-4455-9a7f-b30b45154887",
              "type": "164ef895759de42e27e9da9fbe0ed72eb058e802",
              "position": {
                "x": 416,
                "y": -8
              },
              "size": {
                "width": 96,
                "height": 160
              }
            },
            {
              "id": "80d2a89a-aaa5-4e65-ab61-2fe4398b5514",
              "type": "42d6b1a76202ace3396086158911de819b6194fa",
              "position": {
                "x": 616,
                "y": 168
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "3bac3723-45be-4cf4-9cd5-2136a2e98851",
              "type": "164ef895759de42e27e9da9fbe0ed72eb058e802",
              "position": {
                "x": 416,
                "y": 256
              },
              "size": {
                "width": 96,
                "height": 160
              }
            },
            {
              "id": "5d9c740a-ab00-4b94-8546-de54aaa8359b",
              "type": "4ecca6b3418c2e1fcfe5c1a27a8c6401c55bc7a0",
              "position": {
                "x": 64,
                "y": 80
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "dad76b84-3651-44f0-ba26-3133836cf499",
              "type": "4ecca6b3418c2e1fcfe5c1a27a8c6401c55bc7a0",
              "position": {
                "x": 64,
                "y": 152
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "47cc718d-ad0f-4bac-bf62-08f30ca92f3f",
              "type": "4ecca6b3418c2e1fcfe5c1a27a8c6401c55bc7a0",
              "position": {
                "x": 64,
                "y": 224
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "98c83633-0511-4a1d-96ec-de41a09f3cd0",
              "type": "4ecca6b3418c2e1fcfe5c1a27a8c6401c55bc7a0",
              "position": {
                "x": 64,
                "y": 296
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
                "block": "80d2a89a-aaa5-4e65-ab61-2fe4398b5514",
                "port": "f97b75ed-2ff6-4e65-917c-c8a2dcff75f9"
              },
              "target": {
                "block": "27f865f2-2928-4fb8-b9db-ec70b17edfaf",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "3bac3723-45be-4cf4-9cd5-2136a2e98851",
                "port": "bb0e4590-73fe-4289-ba95-b12b4a9fe92d"
              },
              "target": {
                "block": "80d2a89a-aaa5-4e65-ab61-2fe4398b5514",
                "port": "21ffee47-f42c-4f4e-8fbf-20cb13ffbc5f"
              },
              "vertices": [
                {
                  "x": 560,
                  "y": 248
                }
              ],
              "size": 2
            },
            {
              "source": {
                "block": "f4bfb39a-5cc5-4455-9a7f-b30b45154887",
                "port": "bb0e4590-73fe-4289-ba95-b12b4a9fe92d"
              },
              "target": {
                "block": "80d2a89a-aaa5-4e65-ab61-2fe4398b5514",
                "port": "8144a9fa-9930-4861-8159-76f556c2ef25"
              },
              "vertices": [
                {
                  "x": 560,
                  "y": 136
                }
              ],
              "size": 2
            },
            {
              "source": {
                "block": "a9484032-4c3a-4351-a115-0e2270abe2ed",
                "port": "out"
              },
              "target": {
                "block": "5d9c740a-ab00-4b94-8546-de54aaa8359b",
                "port": "200f8ec1-0d75-4147-9377-a2700f4619c6"
              },
              "size": 4
            },
            {
              "source": {
                "block": "97675c8f-7365-488b-aade-1bc88789c753",
                "port": "out"
              },
              "target": {
                "block": "dad76b84-3651-44f0-ba26-3133836cf499",
                "port": "200f8ec1-0d75-4147-9377-a2700f4619c6"
              },
              "size": 4
            },
            {
              "source": {
                "block": "3e595573-cdd3-4a9d-b720-df86b2fb0fc0",
                "port": "out"
              },
              "target": {
                "block": "47cc718d-ad0f-4bac-bf62-08f30ca92f3f",
                "port": "200f8ec1-0d75-4147-9377-a2700f4619c6"
              },
              "size": 4
            },
            {
              "source": {
                "block": "b05f7458-233c-452e-8877-5fa9bc085347",
                "port": "out"
              },
              "target": {
                "block": "98c83633-0511-4a1d-96ec-de41a09f3cd0",
                "port": "200f8ec1-0d75-4147-9377-a2700f4619c6"
              },
              "size": 4
            },
            {
              "source": {
                "block": "710a3306-1535-4c1a-9d81-5331f6807a23",
                "port": "out"
              },
              "target": {
                "block": "3bac3723-45be-4cf4-9cd5-2136a2e98851",
                "port": "e010d90f-7070-4ed1-a02b-b163ca194b7d"
              },
              "vertices": [
                {
                  "x": 360,
                  "y": 448
                }
              ],
              "size": 2
            },
            {
              "source": {
                "block": "710a3306-1535-4c1a-9d81-5331f6807a23",
                "port": "out"
              },
              "target": {
                "block": "f4bfb39a-5cc5-4455-9a7f-b30b45154887",
                "port": "e010d90f-7070-4ed1-a02b-b163ca194b7d"
              },
              "vertices": [
                {
                  "x": 360,
                  "y": 200
                }
              ],
              "size": 2
            },
            {
              "source": {
                "block": "5d9c740a-ab00-4b94-8546-de54aaa8359b",
                "port": "5e01b577-e425-4a75-87f2-4cdba855d878"
              },
              "target": {
                "block": "f4bfb39a-5cc5-4455-9a7f-b30b45154887",
                "port": "3e900ac5-a69c-451a-bbf8-67fd6f0084aa"
              },
              "vertices": [
                {
                  "x": 208,
                  "y": 48
                }
              ],
              "size": 2
            },
            {
              "source": {
                "block": "98c83633-0511-4a1d-96ec-de41a09f3cd0",
                "port": "8e007209-b58f-43bb-8d5c-b35cc24afa58"
              },
              "target": {
                "block": "3bac3723-45be-4cf4-9cd5-2136a2e98851",
                "port": "808c8ff1-9793-412b-b32e-652046b1dba9"
              },
              "vertices": [
                {
                  "x": 200,
                  "y": 368
                }
              ],
              "size": 2
            },
            {
              "source": {
                "block": "47cc718d-ad0f-4bac-bf62-08f30ca92f3f",
                "port": "8e007209-b58f-43bb-8d5c-b35cc24afa58"
              },
              "target": {
                "block": "3bac3723-45be-4cf4-9cd5-2136a2e98851",
                "port": "4d392e9b-d24c-4fd0-8cfc-831dcdf93afd"
              },
              "vertices": [
                {
                  "x": 312,
                  "y": 304
                }
              ],
              "size": 2
            },
            {
              "source": {
                "block": "dad76b84-3651-44f0-ba26-3133836cf499",
                "port": "8e007209-b58f-43bb-8d5c-b35cc24afa58"
              },
              "target": {
                "block": "3bac3723-45be-4cf4-9cd5-2136a2e98851",
                "port": "a3aa3bd4-a190-445b-9028-1bbd12d83650"
              },
              "vertices": [
                {
                  "x": 328,
                  "y": 256
                }
              ],
              "size": 2
            },
            {
              "source": {
                "block": "5d9c740a-ab00-4b94-8546-de54aaa8359b",
                "port": "8e007209-b58f-43bb-8d5c-b35cc24afa58"
              },
              "target": {
                "block": "3bac3723-45be-4cf4-9cd5-2136a2e98851",
                "port": "3e900ac5-a69c-451a-bbf8-67fd6f0084aa"
              },
              "vertices": [
                {
                  "x": 344,
                  "y": 208
                }
              ],
              "size": 2
            },
            {
              "source": {
                "block": "98c83633-0511-4a1d-96ec-de41a09f3cd0",
                "port": "5e01b577-e425-4a75-87f2-4cdba855d878"
              },
              "target": {
                "block": "f4bfb39a-5cc5-4455-9a7f-b30b45154887",
                "port": "808c8ff1-9793-412b-b32e-652046b1dba9"
              },
              "vertices": [
                {
                  "x": 296,
                  "y": 216
                }
              ],
              "size": 2
            },
            {
              "source": {
                "block": "47cc718d-ad0f-4bac-bf62-08f30ca92f3f",
                "port": "5e01b577-e425-4a75-87f2-4cdba855d878"
              },
              "target": {
                "block": "f4bfb39a-5cc5-4455-9a7f-b30b45154887",
                "port": "4d392e9b-d24c-4fd0-8cfc-831dcdf93afd"
              },
              "vertices": [
                {
                  "x": 280,
                  "y": 160
                }
              ],
              "size": 2
            },
            {
              "source": {
                "block": "dad76b84-3651-44f0-ba26-3133836cf499",
                "port": "5e01b577-e425-4a75-87f2-4cdba855d878"
              },
              "target": {
                "block": "f4bfb39a-5cc5-4455-9a7f-b30b45154887",
                "port": "a3aa3bd4-a190-445b-9028-1bbd12d83650"
              },
              "vertices": [
                {
                  "x": 264,
                  "y": 88
                }
              ],
              "size": 2
            }
          ]
        },
        "state": {
          "pan": {
            "x": 120,
            "y": 66
          },
          "zoom": 0.8333
        }
      }
    },
    "164ef895759de42e27e9da9fbe0ed72eb058e802": {
      "package": {
        "name": "Mux-4-1-2bits",
        "version": "0.1",
        "description": "Multiplexor 4 a 1 de 2 bits",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2246.347%22%20height=%22182.066%22%20viewBox=%220%200%2043.450545%20170.68777%22%3E%3Cpath%20d=%22M42.044%2021.324c0-7.134-3.893-13.724-10.206-17.275a20.674%2020.674%200%200%200-20.365.08C5.189%207.728%201.349%2014.347%201.407%2021.481v127.723c-.058%207.135%203.782%2013.755%2010.066%2017.355a20.674%2020.674%200%200%200%2020.365.079c6.313-3.551%2010.206-10.14%2010.206-17.275z%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222.813%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2216.068%22%20y=%2270.768%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2216.068%22%20y=%2270.768%22%3E2%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2216.018%22%20y=%2227.719%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2216.018%22%20y=%2227.719%22%3E3%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2216.068%22%20y=%22113.534%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2216.068%22%20y=%22113.534%22%3E1%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2216.068%22%20y=%22156.655%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2216.068%22%20y=%22156.655%22%3E0%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "3e900ac5-a69c-451a-bbf8-67fd6f0084aa",
              "type": "basic.input",
              "data": {
                "name": "i3",
                "range": "[1:0]",
                "clock": false,
                "size": 2
              },
              "position": {
                "x": -200,
                "y": 56
              }
            },
            {
              "id": "a3aa3bd4-a190-445b-9028-1bbd12d83650",
              "type": "basic.input",
              "data": {
                "name": "i2",
                "range": "[1:0]",
                "clock": false,
                "size": 2
              },
              "position": {
                "x": -200,
                "y": 136
              }
            },
            {
              "id": "bb0e4590-73fe-4289-ba95-b12b4a9fe92d",
              "type": "basic.output",
              "data": {
                "name": "o",
                "range": "[1:0]",
                "size": 2
              },
              "position": {
                "x": 752,
                "y": 200
              }
            },
            {
              "id": "4d392e9b-d24c-4fd0-8cfc-831dcdf93afd",
              "type": "basic.input",
              "data": {
                "name": "i1",
                "range": "[1:0]",
                "clock": false,
                "size": 2
              },
              "position": {
                "x": -200,
                "y": 216
              }
            },
            {
              "id": "808c8ff1-9793-412b-b32e-652046b1dba9",
              "type": "basic.input",
              "data": {
                "name": "i0",
                "range": "[1:0]",
                "clock": false,
                "size": 2
              },
              "position": {
                "x": -200,
                "y": 296
              }
            },
            {
              "id": "e010d90f-7070-4ed1-a02b-b163ca194b7d",
              "type": "basic.input",
              "data": {
                "name": "sel",
                "range": "[1:0]",
                "clock": false,
                "size": 2
              },
              "position": {
                "x": -200,
                "y": 432
              }
            },
            {
              "id": "8d52acff-2b54-457b-af19-2f09afd472c2",
              "type": "c67fda3e9899032166cd4536d0a45c0be98d946e",
              "position": {
                "x": 552,
                "y": 200
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "40073f17-cfbb-407c-b89f-b8f0bbefd6b9",
              "type": "28a2819c8e523fd90c6dbecc0357b5dcfa64853b",
              "position": {
                "x": -16,
                "y": 56
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "3e725955-8f37-44d2-96ea-1d1691fdcf21",
              "type": "28a2819c8e523fd90c6dbecc0357b5dcfa64853b",
              "position": {
                "x": -16,
                "y": 296
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "e3dfc861-b165-445e-ac31-3fe2e2340e54",
              "type": "28a2819c8e523fd90c6dbecc0357b5dcfa64853b",
              "position": {
                "x": -16,
                "y": 216
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "01fa34dd-c5f2-488b-9ae3-4fecc261f51c",
              "type": "28a2819c8e523fd90c6dbecc0357b5dcfa64853b",
              "position": {
                "x": -16,
                "y": 136
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "53f4f97c-1823-4d9c-b723-64442dcb2eba",
              "type": "5bb42930d18cbf3127c48c3809d069fe232b3587",
              "position": {
                "x": 344,
                "y": 56
              },
              "size": {
                "width": 96,
                "height": 160
              }
            },
            {
              "id": "729c5b81-0c73-4729-be74-afa8d43af60b",
              "type": "5bb42930d18cbf3127c48c3809d069fe232b3587",
              "position": {
                "x": 344,
                "y": 320
              },
              "size": {
                "width": 96,
                "height": 160
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "8d52acff-2b54-457b-af19-2f09afd472c2",
                "port": "b6f82efb-fda0-4281-ad09-610526f0f7ea"
              },
              "target": {
                "block": "bb0e4590-73fe-4289-ba95-b12b4a9fe92d",
                "port": "in"
              },
              "size": 2
            },
            {
              "source": {
                "block": "40073f17-cfbb-407c-b89f-b8f0bbefd6b9",
                "port": "9c7360a8-890e-4c3d-857b-64bae61a01c8"
              },
              "target": {
                "block": "53f4f97c-1823-4d9c-b723-64442dcb2eba",
                "port": "d9d4483b-ee35-41fc-a087-64887404865b"
              }
            },
            {
              "source": {
                "block": "53f4f97c-1823-4d9c-b723-64442dcb2eba",
                "port": "35dff5c4-9c23-4efc-ad4d-5a9b9c0065c7"
              },
              "target": {
                "block": "8d52acff-2b54-457b-af19-2f09afd472c2",
                "port": "3cac4619-1f44-4d02-8d1e-6ab14779a115"
              }
            },
            {
              "source": {
                "block": "3e725955-8f37-44d2-96ea-1d1691fdcf21",
                "port": "9c7360a8-890e-4c3d-857b-64bae61a01c8"
              },
              "target": {
                "block": "53f4f97c-1823-4d9c-b723-64442dcb2eba",
                "port": "9d93829b-a964-410e-a9cb-d76f51b73959"
              },
              "vertices": [
                {
                  "x": 256,
                  "y": 216
                }
              ]
            },
            {
              "source": {
                "block": "e010d90f-7070-4ed1-a02b-b163ca194b7d",
                "port": "out"
              },
              "target": {
                "block": "53f4f97c-1823-4d9c-b723-64442dcb2eba",
                "port": "e854fe58-275a-4a4e-ac52-1e3bc286369d"
              },
              "vertices": [
                {
                  "x": 280,
                  "y": 256
                }
              ],
              "size": 2
            },
            {
              "source": {
                "block": "e3dfc861-b165-445e-ac31-3fe2e2340e54",
                "port": "9c7360a8-890e-4c3d-857b-64bae61a01c8"
              },
              "target": {
                "block": "53f4f97c-1823-4d9c-b723-64442dcb2eba",
                "port": "fec58ade-7ce0-4421-8faf-3d86cd002d7a"
              },
              "vertices": [
                {
                  "x": 240,
                  "y": 168
                }
              ]
            },
            {
              "source": {
                "block": "01fa34dd-c5f2-488b-9ae3-4fecc261f51c",
                "port": "9c7360a8-890e-4c3d-857b-64bae61a01c8"
              },
              "target": {
                "block": "53f4f97c-1823-4d9c-b723-64442dcb2eba",
                "port": "80009445-3df6-4652-80b1-b21f22161ea4"
              },
              "vertices": [
                {
                  "x": 224,
                  "y": 120
                }
              ]
            },
            {
              "source": {
                "block": "729c5b81-0c73-4729-be74-afa8d43af60b",
                "port": "35dff5c4-9c23-4efc-ad4d-5a9b9c0065c7"
              },
              "target": {
                "block": "8d52acff-2b54-457b-af19-2f09afd472c2",
                "port": "63c7309a-4460-4727-99ac-8c08c900502a"
              }
            },
            {
              "source": {
                "block": "3e725955-8f37-44d2-96ea-1d1691fdcf21",
                "port": "b1ca63ac-2667-4270-80cf-fe88c5950d13"
              },
              "target": {
                "block": "729c5b81-0c73-4729-be74-afa8d43af60b",
                "port": "9d93829b-a964-410e-a9cb-d76f51b73959"
              },
              "vertices": [
                {
                  "x": 104,
                  "y": 376
                }
              ]
            },
            {
              "source": {
                "block": "e3dfc861-b165-445e-ac31-3fe2e2340e54",
                "port": "b1ca63ac-2667-4270-80cf-fe88c5950d13"
              },
              "target": {
                "block": "729c5b81-0c73-4729-be74-afa8d43af60b",
                "port": "fec58ade-7ce0-4421-8faf-3d86cd002d7a"
              },
              "vertices": [
                {
                  "x": 120,
                  "y": 352
                }
              ]
            },
            {
              "source": {
                "block": "01fa34dd-c5f2-488b-9ae3-4fecc261f51c",
                "port": "b1ca63ac-2667-4270-80cf-fe88c5950d13"
              },
              "target": {
                "block": "729c5b81-0c73-4729-be74-afa8d43af60b",
                "port": "80009445-3df6-4652-80b1-b21f22161ea4"
              },
              "vertices": [
                {
                  "x": 136,
                  "y": 312
                }
              ]
            },
            {
              "source": {
                "block": "40073f17-cfbb-407c-b89f-b8f0bbefd6b9",
                "port": "b1ca63ac-2667-4270-80cf-fe88c5950d13"
              },
              "target": {
                "block": "729c5b81-0c73-4729-be74-afa8d43af60b",
                "port": "d9d4483b-ee35-41fc-a087-64887404865b"
              },
              "vertices": [
                {
                  "x": 160,
                  "y": 280
                }
              ]
            },
            {
              "source": {
                "block": "e010d90f-7070-4ed1-a02b-b163ca194b7d",
                "port": "out"
              },
              "target": {
                "block": "729c5b81-0c73-4729-be74-afa8d43af60b",
                "port": "e854fe58-275a-4a4e-ac52-1e3bc286369d"
              },
              "size": 2
            },
            {
              "source": {
                "block": "808c8ff1-9793-412b-b32e-652046b1dba9",
                "port": "out"
              },
              "target": {
                "block": "3e725955-8f37-44d2-96ea-1d1691fdcf21",
                "port": "63197b8b-eab7-4727-9143-f834175e4ed3"
              },
              "size": 2
            },
            {
              "source": {
                "block": "4d392e9b-d24c-4fd0-8cfc-831dcdf93afd",
                "port": "out"
              },
              "target": {
                "block": "e3dfc861-b165-445e-ac31-3fe2e2340e54",
                "port": "63197b8b-eab7-4727-9143-f834175e4ed3"
              },
              "size": 2
            },
            {
              "source": {
                "block": "a3aa3bd4-a190-445b-9028-1bbd12d83650",
                "port": "out"
              },
              "target": {
                "block": "01fa34dd-c5f2-488b-9ae3-4fecc261f51c",
                "port": "63197b8b-eab7-4727-9143-f834175e4ed3"
              },
              "size": 2
            },
            {
              "source": {
                "block": "3e900ac5-a69c-451a-bbf8-67fd6f0084aa",
                "port": "out"
              },
              "target": {
                "block": "40073f17-cfbb-407c-b89f-b8f0bbefd6b9",
                "port": "63197b8b-eab7-4727-9143-f834175e4ed3"
              },
              "size": 2
            }
          ]
        },
        "state": {
          "pan": {
            "x": 196.4885,
            "y": 47.5458
          },
          "zoom": 0.7824
        }
      }
    },
    "c67fda3e9899032166cd4536d0a45c0be98d946e": {
      "package": {
        "name": "Join2",
        "version": "0.0.1",
        "description": "Agregador de 2 cables a bus de 2bits",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2277.792%22%20height=%2245.277%22%20viewBox=%220%200%2072.930084%2042.447511%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%221.703%22%20y=%226.994%22%20font-weight=%22400%22%20font-size=%229.594%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22red%22%3E%3Ctspan%20x=%221.703%22%20y=%226.994%22%3EH%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M72.457%2017.731H34.589l-8.91-8.909H.47v4.594h24.166l7.434%207.812-7.308%208.19H.569v4.032h25.452l8.694-8.316h37.673z%22%20fill=%22green%22%20stroke=%22green%22%20stroke-width=%22.938%22%20stroke-linecap=%22square%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%222.226%22%20y=%2242.448%22%20font-weight=%22400%22%20font-size=%229.594%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22red%22%3E%3Ctspan%20x=%222.226%22%20y=%2242.448%22%3EL%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "3cac4619-1f44-4d02-8d1e-6ab14779a115",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 136,
                "y": 240
              }
            },
            {
              "id": "b6f82efb-fda0-4281-ad09-610526f0f7ea",
              "type": "basic.output",
              "data": {
                "name": "o",
                "range": "[1:0]",
                "size": 2
              },
              "position": {
                "x": 704,
                "y": 288
              }
            },
            {
              "id": "63c7309a-4460-4727-99ac-8c08c900502a",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 136,
                "y": 336
              }
            },
            {
              "id": "3545528c-05e2-4e95-8223-5b7b77587423",
              "type": "basic.code",
              "data": {
                "code": "assign o = {i1,i0};\n\n",
                "params": [],
                "ports": {
                  "in": [
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
                      "range": "[1:0]",
                      "size": 2
                    }
                  ]
                }
              },
              "position": {
                "x": 320,
                "y": 224
              },
              "size": {
                "width": 288,
                "height": 192
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "3cac4619-1f44-4d02-8d1e-6ab14779a115",
                "port": "out"
              },
              "target": {
                "block": "3545528c-05e2-4e95-8223-5b7b77587423",
                "port": "i1"
              }
            },
            {
              "source": {
                "block": "63c7309a-4460-4727-99ac-8c08c900502a",
                "port": "out"
              },
              "target": {
                "block": "3545528c-05e2-4e95-8223-5b7b77587423",
                "port": "i0"
              }
            },
            {
              "source": {
                "block": "3545528c-05e2-4e95-8223-5b7b77587423",
                "port": "o"
              },
              "target": {
                "block": "b6f82efb-fda0-4281-ad09-610526f0f7ea",
                "port": "in"
              },
              "size": 2
            }
          ]
        },
        "state": {
          "pan": {
            "x": -18,
            "y": -56.5
          },
          "zoom": 1
        }
      }
    },
    "28a2819c8e523fd90c6dbecc0357b5dcfa64853b": {
      "package": {
        "name": "Split2",
        "version": "0.0.1",
        "description": "Separador de bus de 2bits",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2277.792%22%20height=%2244.517%22%20viewBox=%220%200%2072.930084%2041.73476%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2263.946%22%20y=%226.994%22%20font-weight=%22400%22%20font-size=%229.594%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22red%22%3E%3Ctspan%20x=%2263.946%22%20y=%226.994%22%3EH%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M.473%2017.731h37.868l8.91-8.909h25.21v4.594H48.295l-7.434%207.812%207.308%208.19h24.192v4.032H46.909l-8.694-8.316H.542z%22%20fill=%22green%22%20stroke=%22green%22%20stroke-width=%22.938%22%20stroke-linecap=%22square%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2265.478%22%20y=%2241.735%22%20font-weight=%22400%22%20font-size=%229.594%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22red%22%3E%3Ctspan%20x=%2265.478%22%20y=%2241.735%22%3EL%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "9c7360a8-890e-4c3d-857b-64bae61a01c8",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 704,
                "y": 240
              }
            },
            {
              "id": "63197b8b-eab7-4727-9143-f834175e4ed3",
              "type": "basic.input",
              "data": {
                "name": "i",
                "range": "[1:0]",
                "clock": false,
                "size": 2
              },
              "position": {
                "x": 136,
                "y": 288
              }
            },
            {
              "id": "b1ca63ac-2667-4270-80cf-fe88c5950d13",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 704,
                "y": 336
              }
            },
            {
              "id": "3545528c-05e2-4e95-8223-5b7b77587423",
              "type": "basic.code",
              "data": {
                "code": "assign {o1,o0} = i;\n\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i",
                      "range": "[1:0]",
                      "size": 2
                    }
                  ],
                  "out": [
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
                "x": 320,
                "y": 224
              },
              "size": {
                "width": 288,
                "height": 192
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "63197b8b-eab7-4727-9143-f834175e4ed3",
                "port": "out"
              },
              "target": {
                "block": "3545528c-05e2-4e95-8223-5b7b77587423",
                "port": "i"
              },
              "size": 2
            },
            {
              "source": {
                "block": "3545528c-05e2-4e95-8223-5b7b77587423",
                "port": "o1"
              },
              "target": {
                "block": "9c7360a8-890e-4c3d-857b-64bae61a01c8",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "3545528c-05e2-4e95-8223-5b7b77587423",
                "port": "o0"
              },
              "target": {
                "block": "b1ca63ac-2667-4270-80cf-fe88c5950d13",
                "port": "in"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": -18,
            "y": -56.5
          },
          "zoom": 1
        }
      }
    },
    "5bb42930d18cbf3127c48c3809d069fe232b3587": {
      "package": {
        "name": "Multiplexor-4-1",
        "version": "0.1",
        "description": "Multiplexor de 4:1",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2246.347%22%20height=%22182.066%22%20viewBox=%220%200%2043.450545%20170.68777%22%3E%3Cpath%20d=%22M42.044%2021.324c0-7.134-3.893-13.724-10.206-17.275a20.674%2020.674%200%200%200-20.365.08C5.189%207.728%201.349%2014.347%201.407%2021.481v127.723c-.058%207.135%203.782%2013.755%2010.066%2017.355a20.674%2020.674%200%200%200%2020.365.079c6.313-3.551%2010.206-10.14%2010.206-17.275z%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222.813%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2216.068%22%20y=%2270.768%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2216.068%22%20y=%2270.768%22%3E2%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2216.018%22%20y=%2227.719%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2216.018%22%20y=%2227.719%22%3E3%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2216.068%22%20y=%22113.534%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2216.068%22%20y=%22113.534%22%3E1%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2216.068%22%20y=%22156.655%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2216.068%22%20y=%22156.655%22%3E0%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "d9d4483b-ee35-41fc-a087-64887404865b",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 208,
                "y": -136
              }
            },
            {
              "id": "80009445-3df6-4652-80b1-b21f22161ea4",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 208,
                "y": -8
              }
            },
            {
              "id": "35dff5c4-9c23-4efc-ad4d-5a9b9c0065c7",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 768,
                "y": 64
              }
            },
            {
              "id": "fec58ade-7ce0-4421-8faf-3d86cd002d7a",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 208,
                "y": 112
              }
            },
            {
              "id": "9d93829b-a964-410e-a9cb-d76f51b73959",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 208,
                "y": 224
              }
            },
            {
              "id": "e854fe58-275a-4a4e-ac52-1e3bc286369d",
              "type": "basic.input",
              "data": {
                "name": "sel",
                "range": "[1:0]",
                "clock": false,
                "size": 2
              },
              "position": {
                "x": 88,
                "y": 320
              }
            },
            {
              "id": "25792ebb-a5c0-4e1c-8b50-38c1649e1fcb",
              "type": "28a2819c8e523fd90c6dbecc0357b5dcfa64853b",
              "position": {
                "x": 264,
                "y": 320
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "11ff6443-43d5-4cf5-a6ec-95ec1c6af261",
              "type": "a27ebf3edfd3e3cb5cb8b8f4632c3511b398a848",
              "position": {
                "x": 600,
                "y": 48
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "afa40dea-ac44-4f86-a628-76c87d3b4886",
              "type": "a27ebf3edfd3e3cb5cb8b8f4632c3511b398a848",
              "position": {
                "x": 432,
                "y": -72
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "a8e0f8b5-5d1d-47e7-a028-52b6cdda2a2a",
              "type": "a27ebf3edfd3e3cb5cb8b8f4632c3511b398a848",
              "position": {
                "x": 432,
                "y": 160
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "2fdc9112-32be-42d9-907b-addef4b8b027",
              "type": "basic.info",
              "data": {
                "info": "Entrada 0",
                "readonly": true
              },
              "position": {
                "x": 208,
                "y": 200
              },
              "size": {
                "width": 96,
                "height": 32
              }
            },
            {
              "id": "6a040ac3-54d1-47fc-8c4c-9948498d9e04",
              "type": "basic.info",
              "data": {
                "info": "Entrada 1",
                "readonly": true
              },
              "position": {
                "x": 208,
                "y": 80
              },
              "size": {
                "width": 96,
                "height": 32
              }
            },
            {
              "id": "70a70290-957c-4762-a032-7a6220bbb5e1",
              "type": "basic.info",
              "data": {
                "info": "Entrada 2",
                "readonly": true
              },
              "position": {
                "x": 208,
                "y": -40
              },
              "size": {
                "width": 96,
                "height": 32
              }
            },
            {
              "id": "294ce877-e926-4672-81b2-54066ac96373",
              "type": "basic.info",
              "data": {
                "info": "Entrada 3",
                "readonly": true
              },
              "position": {
                "x": 208,
                "y": -168
              },
              "size": {
                "width": 96,
                "height": 32
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "e854fe58-275a-4a4e-ac52-1e3bc286369d",
                "port": "out"
              },
              "target": {
                "block": "25792ebb-a5c0-4e1c-8b50-38c1649e1fcb",
                "port": "63197b8b-eab7-4727-9143-f834175e4ed3"
              },
              "size": 2
            },
            {
              "source": {
                "block": "11ff6443-43d5-4cf5-a6ec-95ec1c6af261",
                "port": "317c458f-c7bb-49b3-8c4a-58fb0e649e05"
              },
              "target": {
                "block": "35dff5c4-9c23-4efc-ad4d-5a9b9c0065c7",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "25792ebb-a5c0-4e1c-8b50-38c1649e1fcb",
                "port": "9c7360a8-890e-4c3d-857b-64bae61a01c8"
              },
              "target": {
                "block": "11ff6443-43d5-4cf5-a6ec-95ec1c6af261",
                "port": "c7a2cab0-edf0-4ba2-915f-e24d9cad3cfc"
              }
            },
            {
              "source": {
                "block": "afa40dea-ac44-4f86-a628-76c87d3b4886",
                "port": "317c458f-c7bb-49b3-8c4a-58fb0e649e05"
              },
              "target": {
                "block": "11ff6443-43d5-4cf5-a6ec-95ec1c6af261",
                "port": "64c9e1b6-08d3-4582-bc94-1cd9136e5781"
              },
              "vertices": [
                {
                  "x": 552,
                  "y": 16
                }
              ]
            },
            {
              "source": {
                "block": "80009445-3df6-4652-80b1-b21f22161ea4",
                "port": "out"
              },
              "target": {
                "block": "afa40dea-ac44-4f86-a628-76c87d3b4886",
                "port": "ccf5c727-66c5-46d2-a7a7-6d1754e0fe14"
              },
              "vertices": [
                {
                  "x": 360,
                  "y": -8
                }
              ]
            },
            {
              "source": {
                "block": "d9d4483b-ee35-41fc-a087-64887404865b",
                "port": "out"
              },
              "target": {
                "block": "afa40dea-ac44-4f86-a628-76c87d3b4886",
                "port": "64c9e1b6-08d3-4582-bc94-1cd9136e5781"
              }
            },
            {
              "source": {
                "block": "a8e0f8b5-5d1d-47e7-a028-52b6cdda2a2a",
                "port": "317c458f-c7bb-49b3-8c4a-58fb0e649e05"
              },
              "target": {
                "block": "11ff6443-43d5-4cf5-a6ec-95ec1c6af261",
                "port": "ccf5c727-66c5-46d2-a7a7-6d1754e0fe14"
              },
              "vertices": [
                {
                  "x": 552,
                  "y": 168
                }
              ]
            },
            {
              "source": {
                "block": "fec58ade-7ce0-4421-8faf-3d86cd002d7a",
                "port": "out"
              },
              "target": {
                "block": "a8e0f8b5-5d1d-47e7-a028-52b6cdda2a2a",
                "port": "64c9e1b6-08d3-4582-bc94-1cd9136e5781"
              },
              "vertices": [
                {
                  "x": 344,
                  "y": 160
                }
              ]
            },
            {
              "source": {
                "block": "9d93829b-a964-410e-a9cb-d76f51b73959",
                "port": "out"
              },
              "target": {
                "block": "a8e0f8b5-5d1d-47e7-a028-52b6cdda2a2a",
                "port": "ccf5c727-66c5-46d2-a7a7-6d1754e0fe14"
              },
              "vertices": [
                {
                  "x": 344,
                  "y": 224
                }
              ]
            },
            {
              "source": {
                "block": "25792ebb-a5c0-4e1c-8b50-38c1649e1fcb",
                "port": "b1ca63ac-2667-4270-80cf-fe88c5950d13"
              },
              "target": {
                "block": "a8e0f8b5-5d1d-47e7-a028-52b6cdda2a2a",
                "port": "c7a2cab0-edf0-4ba2-915f-e24d9cad3cfc"
              }
            },
            {
              "source": {
                "block": "25792ebb-a5c0-4e1c-8b50-38c1649e1fcb",
                "port": "b1ca63ac-2667-4270-80cf-fe88c5950d13"
              },
              "target": {
                "block": "afa40dea-ac44-4f86-a628-76c87d3b4886",
                "port": "c7a2cab0-edf0-4ba2-915f-e24d9cad3cfc"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 64.5435,
            "y": 176.0435
          },
          "zoom": 0.8098
        }
      }
    },
    "a27ebf3edfd3e3cb5cb8b8f4632c3511b398a848": {
      "package": {
        "name": "Mux-2-1-1bit",
        "version": "0.1",
        "description": "Multiplexor 2:1 de 1-bit",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2246.347%22%20height=%2290.454%22%20viewBox=%220%200%2043.450545%2084.800884%22%3E%3Cpath%20d=%22M42.044%2021.324c0-7.134-3.893-13.724-10.206-17.275a20.674%2020.674%200%200%200-20.365.08C5.189%207.728%201.349%2014.347%201.407%2021.481v41.836c-.058%207.135%203.782%2013.755%2010.066%2017.355a20.674%2020.674%200%200%200%2020.365.079c6.313-3.55%2010.206-10.14%2010.206-17.275z%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222.813%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2216.068%22%20y=%2270.768%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2216.068%22%20y=%2270.768%22%3E0%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2216.018%22%20y=%2227.719%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2216.018%22%20y=%2227.719%22%3E1%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "64c9e1b6-08d3-4582-bc94-1cd9136e5781",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 232,
                "y": 224
              }
            },
            {
              "id": "317c458f-c7bb-49b3-8c4a-58fb0e649e05",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 952,
                "y": 296
              }
            },
            {
              "id": "ccf5c727-66c5-46d2-a7a7-6d1754e0fe14",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 232,
                "y": 344
              }
            },
            {
              "id": "c7a2cab0-edf0-4ba2-915f-e24d9cad3cfc",
              "type": "basic.input",
              "data": {
                "name": "sel",
                "clock": false
              },
              "position": {
                "x": 232,
                "y": 488
              }
            },
            {
              "id": "c520c8e6-25f1-4787-a6f5-09e2f4ae4407",
              "type": "basic.info",
              "data": {
                "info": "Mux 2:1 with logic gates",
                "readonly": true
              },
              "position": {
                "x": 616,
                "y": 184
              },
              "size": {
                "width": 224,
                "height": 32
              }
            },
            {
              "id": "99a89ff4-cc15-4bfb-b5b1-37172826bfc9",
              "type": "493ea8bcb6894bc9ff0ddaaa0e4295cb5a1e8713",
              "position": {
                "x": 808,
                "y": 296
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "69de2912-87eb-403a-b4ba-c21d07aec0a3",
              "type": "91abf148146a61dd0ce91850f8b25b50d215342c",
              "position": {
                "x": 664,
                "y": 240
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "eb5903fc-b92a-4200-8e69-3319971ee753",
              "type": "0ec0772bb73356cd1b754fe7d840a322387a9f3a",
              "position": {
                "x": 488,
                "y": 488
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "dadc4bb5-5319-483e-a231-072740702fb3",
              "type": "91abf148146a61dd0ce91850f8b25b50d215342c",
              "position": {
                "x": 664,
                "y": 360
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "2949ffdb-e692-4bd0-9022-679dc660f367",
              "type": "basic.info",
              "data": {
                "info": "Entrada 1",
                "readonly": true
              },
              "position": {
                "x": 232,
                "y": 192
              },
              "size": {
                "width": 96,
                "height": 32
              }
            },
            {
              "id": "262b908c-5aba-4ee4-8524-8a73d15817cb",
              "type": "basic.info",
              "data": {
                "info": "Entrada 0",
                "readonly": true
              },
              "position": {
                "x": 232,
                "y": 312
              },
              "size": {
                "width": 96,
                "height": 32
              }
            },
            {
              "id": "33026f80-1163-459d-b378-402cc35c04b0",
              "type": "basic.info",
              "data": {
                "info": "Selección",
                "readonly": true
              },
              "position": {
                "x": 232,
                "y": 456
              },
              "size": {
                "width": 96,
                "height": 32
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "99a89ff4-cc15-4bfb-b5b1-37172826bfc9",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "317c458f-c7bb-49b3-8c4a-58fb0e649e05",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "69de2912-87eb-403a-b4ba-c21d07aec0a3",
                "port": "e23ec09c-c612-4db0-ae91-83a6b9f91044"
              },
              "target": {
                "block": "99a89ff4-cc15-4bfb-b5b1-37172826bfc9",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "dadc4bb5-5319-483e-a231-072740702fb3",
                "port": "e23ec09c-c612-4db0-ae91-83a6b9f91044"
              },
              "target": {
                "block": "99a89ff4-cc15-4bfb-b5b1-37172826bfc9",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            },
            {
              "source": {
                "block": "ccf5c727-66c5-46d2-a7a7-6d1754e0fe14",
                "port": "out"
              },
              "target": {
                "block": "dadc4bb5-5319-483e-a231-072740702fb3",
                "port": "4f1a05d0-b11c-490a-8792-876ebf3a8f05"
              }
            },
            {
              "source": {
                "block": "eb5903fc-b92a-4200-8e69-3319971ee753",
                "port": "40d86778-65d1-4ba9-beec-fc5be175aaed"
              },
              "target": {
                "block": "dadc4bb5-5319-483e-a231-072740702fb3",
                "port": "60ce79f4-7963-45bf-9a9c-06c84ec9839c"
              }
            },
            {
              "source": {
                "block": "c7a2cab0-edf0-4ba2-915f-e24d9cad3cfc",
                "port": "out"
              },
              "target": {
                "block": "eb5903fc-b92a-4200-8e69-3319971ee753",
                "port": "1a93168d-3764-4337-8a5a-2f4fc62a1ecc"
              }
            },
            {
              "source": {
                "block": "64c9e1b6-08d3-4582-bc94-1cd9136e5781",
                "port": "out"
              },
              "target": {
                "block": "69de2912-87eb-403a-b4ba-c21d07aec0a3",
                "port": "4f1a05d0-b11c-490a-8792-876ebf3a8f05"
              }
            },
            {
              "source": {
                "block": "c7a2cab0-edf0-4ba2-915f-e24d9cad3cfc",
                "port": "out"
              },
              "target": {
                "block": "69de2912-87eb-403a-b4ba-c21d07aec0a3",
                "port": "60ce79f4-7963-45bf-9a9c-06c84ec9839c"
              },
              "vertices": [
                {
                  "x": 432,
                  "y": 344
                }
              ]
            }
          ]
        },
        "state": {
          "pan": {
            "x": -189,
            "y": -102.5
          },
          "zoom": 1
        }
      }
    },
    "493ea8bcb6894bc9ff0ddaaa0e4295cb5a1e8713": {
      "package": {
        "name": "OR",
        "version": "1.0.1",
        "description": "Puerta OR",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22101.139%22%20height=%2251.744%22%20version=%221%22%3E%3Cpath%20d=%22M46.271%2050.244H22.25s8.008-11.225%208.203-24.813c.196-13.587-8.397-23.827-8.397-23.827l24.36-.104c12.257.514%2027.418%2014.102%2032.471%2024.72-8.603%2017.813-24.32%2023.694-32.615%2024.024z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M1.014%2012.924h26.284M1.232%2038.752h24.874M78.73%2026.541h21.393%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2234.663%22%20y=%2232.448%22%20font-weight=%22400%22%20font-size=%2217.5%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%2234.663%22%20y=%2232.448%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EOR%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 224,
                "y": 128
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 712,
                "y": 144
              }
            },
            {
              "id": "97b51945-d716-4b6c-9db9-970d08541249",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 224,
                "y": 200
              }
            },
            {
              "id": "c3ee684b-dd2d-4d36-b6a3-7b8d7533f05d",
              "type": "0ec0772bb73356cd1b754fe7d840a322387a9f3a",
              "position": {
                "x": 392,
                "y": 128
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "266470be-ea22-4ae0-94ab-a816feb40dcf",
              "type": "0ec0772bb73356cd1b754fe7d840a322387a9f3a",
              "position": {
                "x": 392,
                "y": 200
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "ea3ed535-7c01-4da1-90a7-2d5a47dddf78",
              "type": "4b9553351d0d968f4d279e4831626414f5cfa9ec",
              "position": {
                "x": 560,
                "y": 144
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
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "c3ee684b-dd2d-4d36-b6a3-7b8d7533f05d",
                "port": "1a93168d-3764-4337-8a5a-2f4fc62a1ecc"
              }
            },
            {
              "source": {
                "block": "97b51945-d716-4b6c-9db9-970d08541249",
                "port": "out"
              },
              "target": {
                "block": "266470be-ea22-4ae0-94ab-a816feb40dcf",
                "port": "1a93168d-3764-4337-8a5a-2f4fc62a1ecc"
              }
            },
            {
              "source": {
                "block": "ea3ed535-7c01-4da1-90a7-2d5a47dddf78",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "c3ee684b-dd2d-4d36-b6a3-7b8d7533f05d",
                "port": "40d86778-65d1-4ba9-beec-fc5be175aaed"
              },
              "target": {
                "block": "ea3ed535-7c01-4da1-90a7-2d5a47dddf78",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "266470be-ea22-4ae0-94ab-a816feb40dcf",
                "port": "40d86778-65d1-4ba9-beec-fc5be175aaed"
              },
              "target": {
                "block": "ea3ed535-7c01-4da1-90a7-2d5a47dddf78",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": -66,
            "y": 67.5
          },
          "zoom": 1
        }
      }
    },
    "0ec0772bb73356cd1b754fe7d840a322387a9f3a": {
      "package": {
        "name": "Puerta-not",
        "version": "0.1",
        "description": "Puerta NOT",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22111.588%22%20height=%2268.24%22%20version=%221%22%3E%3Cpath%20d=%22M24.372%201.5l57.29%2032.619-57.29%2032.62V1.5z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linejoin=%22round%22/%3E%3Cellipse%20cx=%2291.101%22%20cy=%2234.017%22%20rx=%227.572%22%20ry=%227.677%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M1.014%2034.281h23.1m75.26%200h11.2%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2228.438%22%20y=%2239.46%22%20font-weight=%22400%22%20font-size=%2217.5%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%2228.438%22%20y=%2239.46%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ENot%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "1a93168d-3764-4337-8a5a-2f4fc62a1ecc",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 224,
                "y": 176
              }
            },
            {
              "id": "40d86778-65d1-4ba9-beec-fc5be175aaed",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 584,
                "y": 176
              }
            },
            {
              "id": "d4b97983-237a-4278-8cfd-bb44f0abc518",
              "type": "4b9553351d0d968f4d279e4831626414f5cfa9ec",
              "position": {
                "x": 424,
                "y": 176
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
                "block": "d4b97983-237a-4278-8cfd-bb44f0abc518",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "40d86778-65d1-4ba9-beec-fc5be175aaed",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "1a93168d-3764-4337-8a5a-2f4fc62a1ecc",
                "port": "out"
              },
              "target": {
                "block": "d4b97983-237a-4278-8cfd-bb44f0abc518",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "1a93168d-3764-4337-8a5a-2f4fc62a1ecc",
                "port": "out"
              },
              "target": {
                "block": "d4b97983-237a-4278-8cfd-bb44f0abc518",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              },
              "vertices": [
                {
                  "x": 392,
                  "y": 216
                }
              ]
            }
          ]
        },
        "state": {
          "pan": {
            "x": -82.4973,
            "y": 5.3883
          },
          "zoom": 1.2451
        }
      }
    },
    "4b9553351d0d968f4d279e4831626414f5cfa9ec": {
      "package": {
        "name": "NAND",
        "version": "1.0.0",
        "description": "NAND logic gate",
        "author": "Carlos Diaz",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%20110.69932%2059.082348%22%20width=%22110.7%22%20height=%2259.082%22%3E%3Cpath%20d=%22M-199.56%20458.482h-29.045V402.4h29.045s26.365%202.6%2026.365%2027.715c0%2025.113-26.365%2028.367-26.365%2028.367z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M-250.986%20414.96h20.255m-20.255%2029.887h20.255m73.582-14.656h14.835%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-225.644%22%20y=%22434.883%22%20font-weight=%22400%22%20font-size=%2214.576%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%22-225.644%22%20y=%22434.883%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ENAND%3C/tspan%3E%3C/text%3E%3Cellipse%20cx=%22-164.682%22%20cy=%22430.037%22%20rx=%227.572%22%20ry=%227.677%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
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
                "x": 144,
                "y": 32
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
                "y": 56
              }
            },
            {
              "id": "97b51945-d716-4b6c-9db9-970d08541249",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 144,
                "y": 112
              }
            },
            {
              "id": "00925b04-5004-4307-a737-fa4e97c8b6ab",
              "type": "basic.code",
              "data": {
                "code": "// NAND logic gate\n\nassign c = ~(a & b);",
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
                "x": 304,
                "y": 40
              },
              "size": {
                "width": 240,
                "height": 96
              }
            },
            {
              "id": "f715be14-cf0b-4e3e-b09f-3101aa56b939",
              "type": "basic.info",
              "data": {
                "info": "Implementación en Verilog",
                "readonly": true
              },
              "position": {
                "x": 288,
                "y": -16
              },
              "size": {
                "width": 224,
                "height": 32
              }
            },
            {
              "id": "4dbb5547-f8a1-491f-8096-4fee2eacf7dc",
              "type": "basic.info",
              "data": {
                "info": "Las puertas están construidas a\npartir de transistores",
                "readonly": true
              },
              "position": {
                "x": 288,
                "y": 224
              },
              "size": {
                "width": 272,
                "height": 48
              }
            },
            {
              "id": "74ce1022-b775-4125-924d-3bb8f3a4fe89",
              "type": "basic.info",
              "data": {
                "info": "NIVEL 4: Transistor",
                "readonly": false
              },
              "position": {
                "x": 320,
                "y": 176
              },
              "size": {
                "width": 176,
                "height": 32
              }
            },
            {
              "id": "2cb0d26a-81b0-49d8-97bb-f06f9121fb1f",
              "type": "basic.info",
              "data": {
                "info": "Pincha en algún transistor para\nbajar de nivel",
                "readonly": true
              },
              "position": {
                "x": 272,
                "y": 368
              },
              "size": {
                "width": 272,
                "height": 48
              }
            },
            {
              "id": "612b3dd4-1b97-41c9-a82d-35818c7a9a7d",
              "type": "44391c1e3c8ed8345059f7b281ed543e24d804ab",
              "position": {
                "x": 296,
                "y": 280
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "d4865d01-86ec-4751-a989-30de894ddc52",
              "type": "44391c1e3c8ed8345059f7b281ed543e24d804ab",
              "position": {
                "x": 432,
                "y": 280
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
            },
            {
              "source": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "c"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 30,
            "y": 63.5
          },
          "zoom": 1
        }
      }
    },
    "44391c1e3c8ed8345059f7b281ed543e24d804ab": {
      "package": {
        "name": "Transistor-mosfet",
        "version": "0.1",
        "description": "Transistor",
        "author": "Juan Gonzalez-Gomez",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2263.78%22%20height=%2278.887%22%20viewBox=%220%200%2063.779652%2078.887375%22%3E%3Cdefs%3E%3Cmarker%20orient=%22auto%22%20id=%22a%22%20overflow=%22visible%22%3E%3Cpath%20d=%22M-1.2%200l-1%201%203.5-1-3.5-1%201%201z%22%20fill-rule=%22evenodd%22%20stroke=%22#000%22%20stroke-width=%22.2pt%22/%3E%3C/marker%3E%3C/defs%3E%3Cpath%20d=%22M1.25%2023.827h31.404V55.4M39.953%2018.904v10.524M39.613%2034.012v9.675M39.274%2048.95v10.354M40.462%2023.487H62.36M40.123%2054.042H62.53v23.595M62.36%201.25v39.042%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%222.5%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M39.962%2039.104h17.02%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%222.5%22%20stroke-linejoin=%22round%22%20marker-end=%22url(#a)%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "8151ec8b-a30e-41c9-a9b5-d881406c4505",
              "type": "basic.info",
              "data": {
                "info": "Nivel 3: Semiconductores",
                "readonly": true
              },
              "position": {
                "x": 280,
                "y": 72
              },
              "size": {
                "width": 208,
                "height": 32
              }
            },
            {
              "id": "0249f66b-7f89-449e-801a-63e0bd8912c2",
              "type": "basic.info",
              "data": {
                "info": "Los transistores se crean a \npartir de uniones entre \nsemiconductores, de tipo P y N\nEstán integrados en los dados de\nsilicio en los circuitos integrados",
                "readonly": true
              },
              "position": {
                "x": 272,
                "y": 128
              },
              "size": {
                "width": 304,
                "height": 112
              }
            },
            {
              "id": "597eb358-6beb-4a4f-a997-9af9411cc3b7",
              "type": "basic.info",
              "data": {
                "info": "Pincha en el bloque para bajar de nivel",
                "readonly": true
              },
              "position": {
                "x": 240,
                "y": 328
              },
              "size": {
                "width": 320,
                "height": 48
              }
            },
            {
              "id": "6b6cb50e-5865-4685-a931-1822b5ce4662",
              "type": "74d69b705b2e3c49127fc63881e0b1cacd5cde00",
              "position": {
                "x": 288,
                "y": 232
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "d72b50fb-a689-4c5a-844a-41099393614f",
              "type": "74d69b705b2e3c49127fc63881e0b1cacd5cde00",
              "position": {
                "x": 400,
                "y": 232
              },
              "size": {
                "width": 96,
                "height": 64
              }
            }
          ],
          "wires": []
        },
        "state": {
          "pan": {
            "x": 42,
            "y": 39.5
          },
          "zoom": 1
        }
      }
    },
    "74d69b705b2e3c49127fc63881e0b1cacd5cde00": {
      "package": {
        "name": "semiconductores",
        "version": "0.1",
        "description": "Transistor cmos hecho a partir de semiconductores",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22500%22%20height=%22325%22%20viewBox=%220%200%20468.75002%20304.68751%22%3E%3Cimage%20y=%22177.161%22%20x=%22117.054%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAfQAAAFFCAYAAAAaQB9aAAAABmJLR0QA/wD/AP+gvaeTAAAACXBI%20WXMAAA7EAAAOxAGVKw4bAAAAB3RJTUUH4QgOEDAG62BuwwAAABl0RVh0Q29tbWVudABDcmVhdGVk%20IHdpdGggR0lNUFeBDhcAACAASURBVHja7L13nFzVef//ObfNnTt9drZXrbTqWtElmmg2YGOKcYwx%20Drjzs53Ezjff5OsSN2xISGLHduwkOBh3G2wT22AwRpgmQJiOepe2951+5/Zzfn/cmWUFGFS2as/7%20xTDSau9qdMv5nOc5z/k8AIfD4XA4HA6Hw+FwOBwOh8PhcDgcDofD4XA4HA6Hw+FwOBwOh8PhcDgc%20DofD4XA4HA6Hw+FwOBzOAmbbvn38JHA4nBMOwk8B50QQ6DUdHUd1DGMsPjA6evnerq76g329dGB0%20FIMjIxjNZKUL1637ku04Vv/wELKFAoKBgEQI2dlYW7txWVvbQ1dccOHjx/v3czgcDhd0zgkvuLph%204FB/P1zXxdDYKA709WJfVzd6h4bQ2tiI1oZGjGfSKJZKKJZK+J8v34Ste/cuFkXxxtH0uPHs9m0o%206iXsPHDA7WhtPae+uuaSYklHQdcxkvaPs2wbhBz97U8pRXtTEzxKH1m5ePFDF5919oPtTU0vffW7%20t2H1kiU486STUVdVxcWew+FwQeecsBGx2DcyIj2/fRsGRkbQNzKCfd1dOGn5Crk6kZTGMxn0jwyD%20MgbdMIQbrrjyYkWWzhwZT7vdgwM41NeHwdFRp6mu7qSW+oZLMrmsL+iGAd0wYJgmKGMgwIRQE0LA%20GJv4Ogg57M+PFcaY/w5AkWW01tc7oWDwgUVNTX9MRKIPPPb8c4PrOzu9y8+/wNVU1a0cd9cDv8e1%20b3s7v4E4HA4XdM7cEGcAMCwr6rqu+KetW/DMtm0wLYv1DA6KJ69YEZYlWSkUCxgeH0emUMDw+Lh3%207dvefm5VLHbu/t5umsnlkc7lMDg2Zne0tl6WiifasvkcRtJpUMYwls2CUXqYQFdejDF4lPq/r4hz%20+dezBaUUAOBRiua6OoQ1bagulXq0Kh5/tGdg4DFRFPWL1q8vrO9cW5h8HBd4DofDBZ0z1dEzAVDT%20Nzws9wwO4KmXX0bPwAAbzWSE01avTmkBNTY4OkILpRIKuo6u/n7r+suv+Igsy9HeoUHWNzwM1/NY%20rlCItjc1n6/IsmaYBrKFAoqlEgzLgud58CiFIAiHibRHKWhZoAVBAAAIZP7elpRSsEmR/NLWVlDG%209lQnEo+8uGvXj5e2ttphTRv+7Ec+OkoIsfkdy+FwuKBzJvjFY4/iPedf8GqRbtrb1RXZvn8f6x4c%20RO/gIA7197PLzjv/dM/zWO/QANK5PPLFohePRBqWtLSudz0vWizpdHh8vCLEcnNd3emaqsZyhQJM%2024ZpWTAtC7brgjEGYZIQE0LgeZ4fWRMCYVJkvVDxPG8isxDSNERDoTxj7ClZkp4Jqup+j9Kdbzv7%20bOvis8/ZOfm4R555BheuW8dvbg6HwwV9ofGbp54MFkulf3z86acLRrEYbWtqWssYS+Z1nRqmCcOy%20YJgmOlpbz6aUIl8swrAsOK4Lw7Im0sYVIZ4QaErBygJNpmgNeqHCGJs4l5Qx1CQSMG17W3UiURrL%20Zu9d2trqGqb1x8/deGMxrGl7ucBzOBwu6AuQHz/8x7huGJmt+/ZBLxRgFIuwDAOgFEQQJgTZ9bzD%20Ut7gAj1rVGoEGGMIKAqi4TB0w3i5OpEoMca21FdX71/Wtmjr1W95y1OEEIOLO4fD4YK+APjMD74f%20dD3vx5bj/AUAuI4D17JgGwZKhQJs01zw6e95IfCEAIxBU1WIomgQQobB0NvR1moKhPz4ygsuNFd3%20dNw9+TheXMfhcLign0B87df/q+qm+e3RbPYjlcpvlFO8nuvCs20U0mlYpdLEui4X97kLA4Dy9jhC%20CDRVheO66YCi0Iim9S1uaSlRSv/l7z/wwScJIWku8BwOh4/oJwi/ePwxdSSX+87uvr4P/7kqcUop%20GKUwi0Xo2SxMXZ9Ix3Pmj9CLggBJFOG6bkFRFKcqFusNa9rGlYsXP3zDFVc+yMWdw+GCzpnH7Oju%20VvcNDHxn44svfFgsV52/oTAwBte2oWezKOXz8FyXC/t8fYj9bAyljNFkLCZqweCfOlpaNrY2NGy8%206sKLNnOB53C4oHPmEWP5vLr10KFv/eqJTTdKonhUYkAphVUqoTA+DtswJpzQOPM4ki+vxy9qbARl%20bOPS1taHNFV94Fs//enu6y67jJx3+hn0jNWr6eRjuE0th8MFnTPL7O3vx9LGRrzvX/9lUSoaPUiP%20RZDL29Vs00Qpl4Op63BtG5SxibVczvyjUklPGUNE01BfXV0MBYMPtjc1PzKaSW/MFYuZs086ybrk%207HNMQojLBZ7D4YLOmQPcfNedyy3b3pUpFo89fT6pWM7UdZRyOVi6DkopqOf54s5T8/M2aq9kXyil%20aKipgRYMdjfV1j4RDKibhsfH/hQJhQpXXnBBbklLa5YQMjGT46l6DocLOmcG+Y9771leNIxd/WNj%20E+5tx3VzlKvlPceBqeswikU4lgXPtn271vIEgDNPo/eymRBjDIIgoL2pCQzYnorHnwPwTP/w8LOn%20r16d/+A7rz4w+Tgu7hwOF3TONHPnY4+tSBcLO7d3deFo1tGPJmq3DQOWrsMyDDimCde2wcDNaU4E%20KtsZKWNIRCIghPREwuGuTC63cXFzc277/v1P/t373++dc/Ip27jAczhc0DnTyH/+7ndNWV1/ZCA9%203jFdDU4mmqq4LmzThG2aEwLvOQ7fBneCMNEitvxeU1WFsUzmxea6Oi9fLD7U3tSky5L06Aeuuqq3%20vrqmb/Kx3MmOw+GCzjlO/v57tyc8Sv/T9bz3zsjNQwgYAM+24dg2HMOAqeswdX3iz3lK/sSAljvl%20UcagKgqCqgrbtnergcB4PBLpFwXh8cvPv6Bvw2mn3fsqcScXrlvHqyo5HC7onKPhP+75bXK8ULht%20PJ9/90xHyYQQMErhuS4c24ZRKMAsFOA6zmEpe86JFcETQqAGAqCU5gKKUvI8r3vt8uWsZ2DgP/72%20+husJS0tv+HRO4fDBZ1zlDyy5eXkrt7e23Z2d797KorijmvAr7jSlUowCgWUcjku7AtA5AVBQEBR%20YNt2Vg0EWCqRSDfV1XXXVVXd+fZzz3u6Kh7bMfkYvv7O4XBB57wOOV1PPrJly/9sfPGFd01pUdwU%20DPSebcPUdRSzWTimCTLLEw7OzCD4kzhGGbM1VXXbm5tlRZJ+tKSl5c5r3/b2R7m4czhc0DmvL5yB%2072/c+KkXD+z/F2EOR8K2YfiNYsr72zkLM5qvTiQQVNVNiUhkY+fy5Q++6y1vff6z3/wGlra1oSoe%20xxXnX8BPFIfDBX3hUXGL+6v//M75oig+OtftW4kgwHNdGPk89FwOjmX567LclW5BiXoFURRRnUjQ%20SCj0QEtd3R89Sh/YdfBg34r2drp22TLngjPWcRc7DocL+sLi5jt/fmHJth/O6/q8WK8mhIAIAixd%20h57LwSwWuSvdAhZ4Br+ivjqRgBoIjCVjsUc0VX0sWyg8EgmFisva2orvvvgSndvUcjhc0E94vnXP%20by/M6frDw9kshHkkhpX97dTzYBmGH7UbBlzX9Qvsys1GOAtI3Ct74QE01dRAUZR9YU17OhaOPDUy%20Pvby4paW7DWXXDqWjMXSXNw5HC7oJxx3PvbYW4YymYf2DfRDnKeFZ5X9665lwSgUYFsWHNOcSMtz%20y9mFx4RNLQBFklCdTCIYCGwJa9qLgiC8QAg5cOrKlf2XbTivlxCSrRzHC+04XNA585bbfv/7k0az%202QeGspk6Yb6LXjlqZ5TCMU2Yuu670xkGXNvm2+C4wIMyhlQ8DkWWS5qq7qQMu1Lx2M5t+/Y99Pkb%20bzQ6ly3fOfk4LvAcLuicecNNP/tpY8Ewvms5zmUn1I06qVGMY1mwy650VqnkN4rh4r5wxb1SXFd+%20r04mkc7ltlQnEqZhmi821tZ2x6PR5//fBz/0HCEkz88Yhws6Z17wyyc2Ne/t7//eUDp98YkqcIQQ%20MMbgOs7E/naz3AmOMcb3uHOBh1BuMqPIMmRJshilg5IkDTTV1pZKpvnzS84+u/j2czf8avJx3KaW%20wwWdM6fY3dvb/Mi2rd/b0d11sbAQLi8hYJ4H6nlwLAulfB5GoQDP8/yiQB61L3gqCi0ACCgKHM/L%20KLLsiYLQv3bZMns0nf7m31z3l6NNdbUPvUrguU0thws6Z/YoFootd9173x3Pdh96i1pTBea4C2vw%20LvvJ24aBQiYD2zAmonoO5/C5IIEkinA9ryhLEq2tqnKq4vFNS5pbNl132WV3EkKGubhzuKBzZk/Q%20GAt98UN/+9XtL237P5HVSxA5bSWEoAosUEc2z3GQGx2FVSrBdRwu7Jw3FHgAjDJGY6EQXdLaKjuO%20888XrVtvnHf66V+d/L28uI7DBZ0zrWx/7iWsPv1k3HDO5TfYlv0jq2RACCgILmlGeE0HpGR0Ya4v%20EwIw5nvJp9N+e9fy1zicN5gc+0s6jKGuqgoBRXm4KhZ7qL25+Q9/fcst2z92zTXCivZ27/1XXkUn%20TxS52HO4oHOmjE9eecP7c5nsD/OZ3MS2L+Z60Ja0IHrGakjxCIgsLTxRK1fCu7aNUi6HUj4Pz3H8%20Kmku7pw3E3f46/EBWUYyFjMCirKxOpF4mDK2cTybHV/d0WGdfdJJ5srFS5zJx3KjGw4XdM4x86//%2054sf6DnQ9YO+A4cgTOq6xjwKUAptWRvCnR0QYxGImgoIBKALS9CIIACM+a50mQwswwB1XX9/M7ec%205bwJtGxw5FGK+lQKhJC+mmTyCUEQntANY7MkivmLzzord8EZ67KEEMoFnsMFnXNMfPfmf792z5ad%20dx7YuQfi67RRZa4HAFBb6qEtb4NSk4SU8NPxbIGttVe85F3b9l3pKsY1jgPquty8hvPm4k7pRLaL%20EIL66mp4nrerOpl8VpHlZyzb3t1QUzP84avfNRwMBMa5uHO4oHOOmL+9+oPrxoZGfqwXikvfSIyY%205wGUQalLQVvaikBLHZTqJAAGRtmCTMcDgG2asIrFiUK6if3tXNg5RyHwjFJoqop4NMpEUXxZDQS2%20iYRsCWnawfNPP/3QhlNPOzTZ6IavvXO4oHNewycue9/yzOjYHZZhnXUkV5h5flSu1FVBbW1AoLEG%20gYZqEEkCc92F91CUhbuyt902DJilEuxSCR6P2jlHwWFNZhhDPBqFLEk5LRjcTyndV59K7Qtp2q73%20XHrpUw3VNT2Tj+UCz+GCzsHtt3xr5fObNt8x0j+4/miq2plHQQQBUjwMKRGFtrQVWkcrIJCJNP1C%20FXfXceDaNizDgFmO3ispVr7ezjkaga+8C4KARDQKSukYpXRvSNP6JVHcfMrKlQc/eNU7732VuJNr%203/Z2XrnJ4YK+0Hhp87Mr7/z2HXfs3bpzvfA6a+hHMOqAMQYxFIRcFUd4TQeCS5oBkAUZsU8Wd1o2%20rqGu61fKFwpwbRtEEHjUzjlmgQd8FzvGWEGWpGLJNHvXLFnCxnO5b1/91rfaF61b/ysu8Bwu6AuQ%20Yj6/5hufvvn7zz+++TRRko5ntAEIgaDIkGIRhFYvgba8DUQSF2zEftjpoXQiLa+Xt8GBe8lzpuLe%20gr89znXdnCzLTFPVdEtd3YAoij9827nnvnzaqtUvTP5+7mTH4YJ+AvPuUy76iuu4X5jKqJEIAoiq%20INy5FJGTlgGisOC2u71RpEVdF3ouByOfh2NZlbCenxzO8T97ft0GY4zZoiB4i5ubJcrYTzacetrB%20yzZs+DdCiMPFncNHmxOUv7rsfV/MpjM3lYr61KeCGYMQVBE9YxVCq5bwk/06g69ZKsHI5VDMZvkJ%204UzrRFINBLBm6VJYlvXli9atL513+un/9s/fu52k4nG2dtlynLFmDT9RXNA584FN2zZhw5oNr/n6%20Z//yr74w2Nv/lVw6M21ru8yjEMMaQivbEVrWBiGi8XTzq4Tdc11Yuo5iNjvRKIZxVzrOFEMprUTx%20aKqtRU0yORgNhX/WUl//+L/98PsPX7RuPc5cu9Z5+4bzDiuC4ZX0XNA5syzWr2YsP5bYenArvvKz%20r6BgFJRTz1oXqNkS/L8DW7o+mekbnV6RZcyvjhcFhNZ0ILxqMcRo2LeWLf85F3a/Et61LBSzWZjF%20ol9Y5/E6BM70iDsrP3shTUM0HM6osvxIKpF4bCSdfkSW5Xx9KlX8+w98sEgI4QLPBZ0zk6LNGItt%2079oeu+3+2+h9z9xHz197foPrupHdvbvZC/tfcL9w3Rc+OZQZYo9teYx51Gtau3jt2Qd696N0MMda%208jUkaocgUgGMTK+4MseFoCoIrV6C4KImSIkoRE31I1Iu7H6BYblS3iwWJ5zpPNf197eDt3nlTPV8%20m030g2eMoSoWgyxJBwOK8nRY0zY7rvtiWNMyG047bezCM9aN8zPGBZ0zBaKdL+Vb//eJ/w19/8Hv%20e7FwrHZp09KW53Y/R/KlvLiobtEZmqp17Oze6faM9NgdTR0XiIIYGUoPYTg7DMu2yr2dJTAwOK7D%20RFEkkAhCjorGYjWqjRjiZhgiE0EJnc4RBNRxIQYUBJe0INBaj0BdFaRE1LeV5UV0E8JNBAGOacIs%20lfyo3XFgWxaY5/GlC870RO+TJtaSKCIVjwPANk1VXyKEvEAI2b+4ubnv4++5to8Qkp58LLep5YLO%20eWV2vHJP357wV3/2Vewf2C+eversi3tHet0X9r9AJVGKN6YaO3VTj/eO9LqhYGhRXbKucXB8ECWz%20hLHCGMAAURAhCAJczwUDg0j837/h3wsGV/AQtUOoLSVQU4qjyoyBMDLtws5cDxAFqC31CC5qhNpa%20DykRnUjTczDhOscohWtZMHQdtmHALpXg8qidM90CX7GpZQzRUAiSJJkBWd6pBgK7ArK8KxaN7l21%20ePG+Ky+4cA8hxOACzwV9QUTYADCSHbnk1l/c6j2751kvIAfa2+vbz97ZvdPZemiru6JlxWkAtP6x%20fliOJbTUtKzUDR3jhXGYjgnbsUEIgUAEMDB41INIxIlCl+PWV8JAwRBxgkgaUTToVUgZcf+hJtMr%20rszzQEQRgYYaKA3VUFvqEGioBkB8P3nOYcLtuS4c04Rj2zB1HWaxeFjRE4czTUFHOQjwJ+TxSASC%20IKQFQegOBgJddanU/qpEYsu1l166JRGNbednjAv6XBZtsmHNBvYmN/wpT25/csmtv7jVKlml1jXt%20a87d3bM7PJQZYvsH9qO9vn3VeH6cmrbJJFGKx0KxRNEoQjd12K4NABCIAJByVSrIjA/SDAwggOYE%20ELciaM3XosqMgoGBTvcaO6UgkgQprEGpTSK0pgOBxhoesf8ZcWeM+eJu27BLJRiFAizDAAF4Sp4z%20YwIPAKIoIhwMggGjAEbqqqpGQ5q29eQVK5674vwLfjr5OO5ixwV9Tog2Y6xzW9e2dd+9/7vOk9uf%209FpqWtbFQ/ENewf2sq6hLoEQEhMFMaibOgOBGgqEIrZrw/VcWI4Fyl4RaQbfPrXy+zn3sML/bIon%20I2lGsCTbiKgdAiMMr5TRTNtI4ReIBQMINNYg3LmsHLFzYf8z6u670rmu3+a1WISezcLzPB61c2ZF%204AOKAkKIKwpCXjeM/pOXL3d3Hjz49U+9733Zs04+5f5XCTyvnOeCfkyC/aap8YODBz/8wHMPhO57%209j5sO7QtetVZV/39ocFD5o6eHUw3dZVSqjiewyilEARBkQRJdqkLj3qgjJZPGjlMFOf1QwpAAAFh%20BC2FGrTl66A5gWmP1ieEXRBARBFKTRLhtUsRXNLst26lXNjfaGClngezWEQpl4NtGKC8vStnFpEk%20Ca7r6qIo0lAwaDXX1j5bU1W18a1nnvmbFe2LJ7rIcRc7LuhHJdgvHXjpgvH8+IYfPPgDezg7XF2X%20rLsir+cXdQ93e10jXczzPJGBwf+PEUEQhMktDhc6qqugqViN5kI1VC8w/dH6qyJRMRJCbH0ntGWt%20/vo6vyxvimvb0LNZ6LkcPNflws6ZfWHxbWqpLElsUWOjlNf1r//FxZcULlq37qbJ38cFfp4L+pGI%20cs9Ij3hw6CC54w934BeP/wIffdtH5dHsKLv/2fvZl67/UqK5uvnyPb17lj7w3AOmLMmd9Yn6d/SP%209wuHhg8hU8wA7JUCo4ogzdXU99yM2hmCbgCthVq05+pnXlMZg5SIIXZmJwJNNSCiyD3R33wABfU8%202KaJQjoNq1TytwlyOLM9npSzR5QxRDQNKxcv9kbS6VsuP+/8/ovWr/+fW793u7J8UTu99JxzPTWg%20MC728yxCZ4xJo7lR9d9++W9kW/c21jvaK21YsyG8o2sH2/TbTeZ/ffO/rvOot+r+Z+73Ht36qHvN%20hms+mS6ksbN7J3KlHIpGEQQEguBXhFcqgAXCW1hOnaj7lfERW8PSTBNSRgwCEyBghoLmctZETsYQ%20WtmO4OJmiJrqN4ThUfsbZjkIIaCui/zYGKxSCa5tg2ehOHNF3CljEMrjdGNtLapisa0N1TWbGdjP%20hsfGDnq2XXzHORvYutNPK/Rks2jx98pzpkvQj9DdLPTgCw9GfvrwT2nXcJfS2d6Z7B/rV3Z273TO%206zzvtI7Gjg2PvPwIGRgfYPlSvu6UjlMu7hrqQu9oL3J6zt9nLYgQBRGWY0EgAkRR5JH2TD+A5e1u%20STOC9lwDElYYiieDgMxMOp76RjVSLIzIycuhtjVAjGi+tSwDd6B7o4e7XAlvlRvFmIYBz3FAPW8i%20auJwZlHd4VE6MdmMR6NY1NICF7j7lDWd1lvWr/+/CVke5idqBiL0rr4uxSNe9d1P3q3+6olf0bpk%20XbImVtPw3F7f3Wzd8nXrRUFctaN7h62bek17ffvZOT2H8fw4BsYHYLs2JFHyq3RBYLs2EwWRiILI%20B5o5CCW+P3S1EUdzoQYJKwzNUWemKr788FPLgVydgLasDWpTLaRkFGIo6FfGc2F/g6Dd95Knrguj%20WIRZLMK1bTiWVd4+Cb6kwZmR6LySeQMhkBUFkqJADgQQ0IKQVRVqNMpC0SgJxeL4yPoz31sdCt3F%20z9wMCPptj97W9sL2F/7hpT0vdfaN9VmxUKw9GUku6hvtg27pKBpFMOZH2SCY2GIjEOFN3c04cxeP%20+Fvzakpx1OlJVJkxROwgPIHOUMROQV0PUjSMYFsDAi11CDTWQIyGwRyXC/uRRO2MwXUc30veMGAb%20BlzH8X0CyuLP4RyveE8IOKUQJQmBUAiKqkINhyApAWjRKNRQCMFIBFosAkEQ/ZQ8pQgrMm489QzS%20k82SlnicP9TTLeiP7H7kpC/c9YWf/Gnbn1YrjgJGGSijEASBp8UXiLCLTECVEUONEUetnkDECcIV%20vJlbY/cohIACtbUealuDn44Pa4BHeUHYm4ftvl+C58EyDLhlVzrbMOBYFojA61E4R/EsVl5lK1lV%200xCMRBAIhRAIaQhoGoKhMBQtCDUchiTLE+ZJE8dNmgy0JRL4i1Vr+A14lEjHeuAFyy7YqQv65mB1%20cDXNUpASgV8yxVkIiMy/1qNaFmk1jyEtjbpSEi35WkhUhCdMs6UrISCSCOa6KO3rgdk3jMD+Xsi1%20SWhLWiBXJ/xtb7wZzBsOwiAEaigEhEJQw2G4tg2rVJp48aid87rRd2Xtm1LIgQC0SAThRALBSARq%20OARFDUJRVUgBP6UuiKJ/z+EVH4U3erbzpvVrfqZnSNA37dkEQoh96ldOHYqGosiwDIhAgCI/oQsN%20gREwwpAO5pEP6BjRMmgq1KBeT0JgZPoNaggBEQmYZcPsHoDVPwJjdxfUtgZETlkOMRbhEfsRDNAA%20IEoSRFmGEgwiFI/7rnSFAox8Hq7jTET1nAV2f0wSbwAIRiKIVldDDYcQqapCIBiEKMmQFBmiLEOU%20pIlJI45EwF+HiBrYys/8DAn6hmV+hXtzorlnrDhWYoRpJFZ+0AvgDvELEMIIPEIxruaRDRTRFxnB%208nQLYlZ4ZgrnKr4Dngc3X4S+4wBK+3ugdbRCW9EOpTbpF89xYX/TyJ0Q4ou7JEFRVUSrqmAZBkq5%20HIxi0Y/aeR3MiTu5m5QGl2QZ4aoqhJMJxFLV0GIxyKofcQuCAEF8pYh5ornL8T5jjKEuFA7wqzFD%20gl6hK921q2AWegQiLAcAxMBFnTMh7JsbdqBWT2BZphkhR50ZO9myuDNKwQwLxe37oO88ALWlAaHV%20i6EuauTFc0dzKgUBRBDKqdQwGGPQMxnouRwc0+Tp+BNIwAVB8FPnVUlEEgnEa2oRCIde6RfwZzI0%200+Fv0BCJbuJX5xie1+M5+BfP/mL9l+/98h2Hxg6tFMikGXuOizpn0gNPGBoLKSzNNEP1lFm82wmU%20uhRiZ61FoC7F0/DHGUU5tj0h7ty0Zr6N/ARKIIBIMolwVQKxVA3CySQESZz1yW5AklCwLfF9a06i%203FRmBgWdMRZf+rmld/Zl+y59TZOSAoA8P8GcV0QdAFryvp2s6ikgbBZmfOXBSl3UiPCaDsipOISA%20wqPMY9YFAkopSrkcSvk8HMuaWHPlzP61mbxbIRiNIl5b44t4IgEtGj18e9kcuGaUMbTEYhAEQXz3%20qjV8xn2UHHPKvVwYlz3j5jMGc0YOBatweOexSHm6kAe36uRMiHd3dAi9kRG05evQVKiG5gYgMmHm%20bpHy4GYc6IXZNQC5Ko7IScugNNb41rLlfdqcI57UgxCCcCKBSHmt3SwUoGezoJSC0nLdAp8wTcvk%20lE0Sb1GS/LVtUYSkKIgkkwjFY4imUtBiMUiyfJiAe647JyNMh7LHRMa1fEYFvVIYt6phlTGcH0bB%20LLw23g8DEMqi7vGTzQGE8na3/fF+9IZH0FqoRW0piYgdhMjEGevuRkQRAGCPpjF2/yYEGmsRXrsU%20Sl0KYliDoEh+G1cu7kcs7MzzoAQCUFQVkWQSVqmEUtm8xnNdUNcFA3il/DGe34qAEwCSokCSFYiy%20vzNBDYUQqUpCi8agxaIIhsOv1JKURXwuCvjrTbg9xp4VCOEP3kwKeoWR/MizJbv0HhBUve43hMp3%20YI6LOmfSrWsofgAAIABJREFUjUdFuIKHPYle9IVH0VqoRXUpURZ2YcYK6IgggKgB2KNpjD/wJNTm%20OgRa66E210NORiEE1XIbVz6+HI3wgBCo4TDUSARe2ZXOKpXgWBZc2+aWs0ci3uWXJMv+vu6gCklR%20EAhp0CLRCeEORiIQJekwk5Z5Id6vA2UMy6uSDeuaWw974G7++c34/HWf5zfHEWQ4jou7nrnrbZ/+%2030//z0h+pOkNZ95mWdRdftI5rxrACANhBFFbQ00pgZpSHFE7NDP72F/9Wcq+8HIiikBzLdRFjVCb%206kAUmQv7cURdpBwt2qYJxzRh6br/a8ta8PvbJ0fRABDQNMhqAMFQGMFoBAFNQ0ALIRgOQwmqCIQ0%20gOF1Xdbm/URfVvHi5jtGXtq1+TtRLbpnecvyvbf/7e17CCEGF/cZEHTGWGLRpxdtHC2MnvaG6VJS%20FvUMj9Q5f2Z2ThhEJiBsB1FtxNGSr0HE0cp2sjMs7NQXdjESgtpUi+CSFgQaUuWInTeDOXZt97c/%20eY4Dx7Zhl0pwTBOlYhHUdU94y9nDXNYYgyRJ5UxGGFok6m8PDIUgBRQEgkEEQiG/TfQcK16brnvD%20dW185RvvREhRIRAhLQhCdzAQ7G6rbdvfuahz69dv/PrvCCFZ/iRNg6Bv2rMJG5ZtwNovrX2oO939%20Ftu13/xvswCMA+A1D5w3iNhFKiBia6gxEmjJ10BzAzPnE3/4COwPvJEQ5FQcSl0K4c4OX9hdHrEf%207wDOGAN1XV/cDQN6NgvHtn2Dm/luXjMpbU7LFrrBcBjBaBShaBThZBKBkAZJlv2uY4oCUVFAUK4j%20XmA97EVBwsDwPtz+07+DaemvfF0UEQlGIAnSmEvd/acuObUUDobvfu/5733kyrOu3HOYJh1Ba28u%206G/Cx3/y8Sd++9Jvz8kZuSM7wAEwCl79znnj8RAMIhOhuQE0FKvQlq+HTEV4ZBZmg+V1YSJJEEMq%20tOWLEDl5uZ+K58I+FeoORimo6050gtOz2YkujfMhan91FC3JMrRYDNGqJCJVKYRiMYiyBEGSIIoi%20RFme6H5XOX4hI0kKXtq2Eb954N/hONZrzm1lEhgOhuF5Xt6jXqaxqrEQ1aJPXLbusk3/+N5/fIwQ%20MlQ55icP/wTXX3Q9F/SjZf0t62/YObDzWy51j9wFwAUwBp5+5xwRAiMIeApa83Voy9fOyvr6ZHEn%20kgRBVRBa0wFtWRukWJgL+xSLI/U8WLoOPZuFqetzbq391TapWiyGcCKBcCKBeG0NgpEIQIjfgbKy%20lEAIv0f+DIoSxH0bv4PNz/0aHj2yYitREAHAIYTYkWDEXdO2Zlt7ffsv/+Gaf3hkUe2iHTxCPwY+%20c/dnrrl90+3/bThG8qgO9MqROhd1zlEQ8BR0ZBvRnK+ZMKyZ1cmGGkBwSTPCnUshJ6P+GjtnSvEc%20B6V8HoV0Gp7rzo6wV/Z9MwZRkhCpqkK0KoVYbdnjXPENinj1/jE+1wENv7znFry47SFQemyiQAhh%20lFJWFakSUrHUjkQk8eCG1Rs23nTDTQ9WvudELqojU3Ofs5bU36aeMGyj5egPBpAGYIBbxXKO/LYh%20DEE3gGXpZtTrVbP/gSgDRAGh5YsQOX2Vb1LDB/VpwSwWoWez/v52b5qigbIwV6LqYDiMeI1vjxpO%20JhCMRkCIcJjIc46PoBrBN2//EPoGdk9dBgWARz10LupEIpzYfNaqs35/0/U3/dP1/3p9QBRE59uf%20+DaNaJHDLt58Xoc/7hGnUhjX/pn2XSP5keX0WBx+KPzqd5Pf1JyjmwsyQhG1Q1g1tghRW5vo0z5r%20n8nzQEQR4ZOWIbioEVIi+oq1LB/0p0hry5XyrotSLgc9l4PnOEdvOVsxaiHE7xomCBAEAXIggFA8%20hliqGuFkEqFkAtKkfd4nQrGabZpwbRtqOAxhDhQfVjIu3/juBzGW7pvyDAylFAwMBAQNqQZ0tnVm%20C0bhX5KR5KNbD249eOaKM+1vfOwbZiKSmFi8n49r8FN21t5/x/ufv+ele061PfvYPoUHf596iQ9Y%20nKOP1gGgTq9CS74GcSsMaQZd5173MzkuBDUApbYKkZOXQU4lIISCE0LCmaIBTBAASmFbFvRsFlap%205LvSed6ELe1hUXRZvEVJglTu3R3QtLI9ql95HoxE/Mv0qj7gJxJ//P4PcPDll/Hem76EWKr6qPuV%20TzWiIGFo9BB+9IvPIlsYAZnGdC1lFB71IBABMS2GRDhRqE3UPr60aemT6UJ606HBQwd//OkfszVt%20a0YmHzcfUvXSVP2gkfzIQx7zOgHIxxRqiXil/SoXdc7RDOpln/iB0BiGtTSaCzVo0KsQs0KQqDgr%20xXNElsBcF2bvEMzuAQTbm6CtbIdSnYQY0UBEga+1T8XEqSy2iqoiUF/vN4rJ533jGsuC5zgQRBFy%20QIEcUKGoKtSwb9gSSSahRaKQAsph4u05zgl/3nY+9RRMvYRo1dzoOkgIQaE4Do86077yKhABguhn%20JQpGAflSPtI10vWOzTs3v2Nt+1qM5EZ+9/W7v24v+9Cy2+uT9WPrVqwbvPVDtw5MzhrMVXGfsnN3%200703ffjrD379Oy511eP6NDxS5xwnruBBc1TU60lUG3GkjBgEJoCS2Ru4mOuBiAICTXVQW+sRaKiG%20XJMEEQTfgY4ztVE7AMc0wShFvK4WAU2DFo0ioGmv8Tg/UTImlX39R8ItV12NRH0d/v5nP0UpP/tt%20MWVZxdPP/wYPPnr7YXvQZ3zs8FyIggiPeqhL1EEUxAOyJG+PBCNbU7HUnvM7z+/+7LWffXKuRu5T%20FqHfcOYN/V978GvHNzJNjtQJAJ0PTpxjuKmpCEu0cSA+gGEtg5QZQ62eQE0pAQFkVvaxE8lvBmN2%20D8DqH4acjCHQVIvg4mYEmmsBSnkzmCmO2iVFgRaNoqGjw19jny8NSo4BRVVhFAoQ5cMTpJXlBRAC%2017bLGQgX+fFxLD715FlPtU+OmtOZAbiuPbtjhyhNvI/kRgBgMWNscSQYuTKjZ+hgevBA0/uaHt6w%20eoNJGb3nu5/67vZYKDY2+WfMZlHdlAl6W6rtwVgwZqf1dGhKRD2KVzq18WJhzlEnewgkKsKQLHRH%20hjGm5jAQHkNjsRo1pQQAzErEXhF2eywDeywDs3sQSkM1QivboaTiIAEFzOEND6YuWveL5+g8XAev%209DN/M9EVJQl/uudejPX24vJP/g0cywKlFLKiYLyvH13btsF1HKw65xyo4RBGenogyTLiNXVz5ryI%20ooTxTD8c154zXgMCESqDCXRTR9EsCoyxDlmSO57b+xwKRuEdKz6yor/zY529NbGa5z586YdfuPb8%20a58hhEw8wDNdWDclgl7ujc7ef8f71bufv/v4i5FYWcwj5fccH5g4xy7sIiMwJAuGZCGtFhCzwliU%20r0PKiIGBzc4aezkt7GbycHMFWH3DkFNxqC31CK9eDAiCb1TDOU5RFObhZyZQQyHouRxGe3pR177o%20DVPpaiiEZ+69F8FwCL27doF6LmrbFmHzr3+DJ3/xSxSzWTBKkR8bw3nvvRb5sVEIoohEXe0cWT8X%20UCiOo1BMgzEKQsS5ObkCAYhfMd871gsCsgQES0zHRP9Y/5Wfuu1T6Vt/eWvh/H84//fXbLhm+8ff%208fG7CCETBRkzkZqfEkGv9EbfNbz7axTs82SqYmoCv/2qBN//ncM5DmEHAFN0YGkZpNU8kmYEHdkm%20xKwQGMHsVMUL/ufy8kV4xRKsvmHo2/cjcvJyaMtaAcLX2I9nEBZlac4uYxBBgCD64lUpxCOCAFPX%208dMvfhl9u3dh3RVXoH5JO5jHJv5clKSJFqlKMIhn77sfI13dABh+9JnP4q0f/jDUUBjP3PM7iIqM%20xaecjL3PPoueHTvBGENueASCKCJeWztnCuIMU4fnzZ/MlDBpomjaJgBEGGMR0zbRRbo6thzcYn3z%20N9/8l9P/+vSn66rqHv3opR999Iozr9gxSdzJ56/7/JTfmNJU/rCPV12V+Wz3PuQEc+qy5ASACqCK%20izpnam4nwC+cG9WyGNGyaM3Xoi1fB81VZ2+rW2V7lePCGc8i/fAzKLy8G+HOZQguaYIgyyfk9qmF%20TG50BPufewGe5+Ksd70LjmlCVhQ8d9996NqyBcVMBpIkT/S8EEQRo9092Proo2hcthTLzzwT+557%20Hr/7j2/DtW3IqormFSvRunolApqGt3/iY2hathSFTAaD+w8gUuUXYY4PDEAQBMTr6nBMviHTEKFn%20coMwbX1ed9ojhMD1JyUBAIH+8f7owPjAVbt6d73j0S2Peuf+3blGXbJu4yWnXXLnRy79yL2Tj52q%206H1KBf2dl1yProefwreqHocFb2qXvlUAqbKo87ohzhRQuY26okMYDKXRXKxGc6EaqhuYAx+OwRnL%20Iv3HpyE/H4W2YhHCazpAZIlfuKOJ0CV5zg4Xt1z1LkiyjOaVK3HqpZdClGUIooienbtglfxtPomG%20OjAAjmXhsZ/9HI/feRdAKTzPw/Vf/SridTWobW3F/vFxfODWf0Zb5xpQzwMRBKSaGvHwj36M7Zs2%20Id0/gNUbzgURBKQHBkEEAcFwaE6MpQIhKBTTcBwTJ1LBFGMMDEwAoIABL+x/IcjArn3guQeuPfWv%20T8Wi2kVPxUKx7yxtXPqHT7/n09kv/viL5Ir1V7DTlp428TOOdg1+yhaY+rftRLyt6RvtaiP+ZmwD%20AtNh7BEAkAQvkuNMcdROYIsO9sX78XT9LvREh0EJm1VjmonPJghwcwXkNr+MwR/ei+LLu8Fsh0fr%20R5mRmWMzDRj5wkTRm1UqYXxgAJIsY+jgIQzs3YfqlhYIoohgJApGKXp27MCmO+/Cmg0bsP6qqyDJ%20Mg5tfRlNy5YhXOW30AhGwhNNbbb88WF856P/H7Y+8giC4TCIIKC2vR2iKCIzOAhRllG7aNGcqHIn%20goh0dgCmqZ/wYzsBAWUUO7p34L5n7jv7Jw//5M4f/fFHmc6Pde7JFrPfeX7f8+88+/+cHbvg/12g%20bj20VXm1mN/885tnRtAb16wEAIRrq416J4p35jshMRF0qgdFFUBiKj85h1N+GBiBKVrYXnUITzZu%20w1AoDUdwfXvQ2RxpCAERRTDHRfaJFzH4k/ugb9sHZzQNajt+up77xr+eUrxmG9dcyRykhwYhCCLC%20iQQ8x4ZZ1CEpCvY//zwAIBSLgjGGqsYGuLaNjXd8H3Xt7Xj35z6DVRvORaKuFo5p+0Y6uTwYY0jW%201QMA8mNjeOj7P0CyoQGfvOMOnHH55SAgCEbCAID00BDCicScmRQSQpDODvkp9wUSrQnEtxmWRAkH%20Bw9ib//epbfdf9snPvXfn/q1JErZsdzYN+5+4u7Pxd4Za3rXV95V97ONPwsDwOev+zxu/OWNf/bn%20SlP/DIn3EeCaM4xWeIThN9GtcOBBmMoLpZXfc+Cd2jhTPoMmjECXDbxYsw8JK4K2fB2SZgTBcip+%209tbZASJJYJaN7KYXIIY0qC310FYsgpxKQAwGTiijlCmYB5X/N/fOh1nUIUgiWlevxoGXXkJ2eBiM%20MfTt3oO69naM9/eDUYZoKoXxvgEceHkL2lauwC9v+Wcc2rIFei6HdVe2QJJlZIaHIMky1EgYrm2j%20kE5j4NAhXHjddTAKeby08SGYtoVEbR30bA5msYjOC86fG9E5IbCsEkqlnD/BWICBWsVLv+Je9/Su%20pyEIwsf+/X//HfWJ+i91DXVtvuORO56+7rvXPdPQ3PD7r739a/qMCXowEdvOgGsEEJxutKAoWHg4%20tBcmcSBO1dViZVEnALJc1DnTMNAwAhEE2UABL1UXkDJjaCymkDSiiDhBULDZa91KCIgkgZoW9J0H%20UDrQC62jBcHFTZCrk5AiGsDA0/ITVe5zL0IvZtIQRBFVTY3Y++yzMItFjPb0YGDfPpx77bV4+Ic/%20RDRVBTCGwQP7IUsSSoUicqOjWLruDNQvXoxl69bBNi1YegmheBy9u3ejMJaeEIYdTzyBgy+/DEVV%200bRkCdRIGI5t4syr34mTLroI7hywuCXl9XPDLM7LLYZTDgMkwb9nPXjoNXrBKDvLsZyzzms+D4qh%20dALYNmOCvuriiwYObn4GTCRQmIgL9A4AwCOhvTCJO3WROgMQLIt6HoDN7wXONMyey93bxtUcxtU8%20UkYUNSXfdS5qa/AInV1hlyXA81Dctg/moX4oDdVQWxsQqE9Brq0CXG/BCjuZFPXMNfJj4xAEAdXN%20zRAlCdmREQwdOAjXdRGrToEIAmI11QAhSPf3QwoEcMolF+OCv/xLhBJxZIb8qNxzHXiuC6tUwi9v%20/iekmppw+Sf/Bu2rVwMATrn0ErSsXAmjWEAwHIYSDOLdn/k0HNueE571hAgwbR22XVq4tVGs/KLw%20l5SD/ouECUiEABpARIIe0vOUWTDfcK/XlAt6OJW6R41EvmfrOijBhKibxMGm0AF4oFO3TsLKJ0CE%20337VAi+Y40yrsI8Fc0irBQyHMkiVYmjUUwjbQXiCN3uBICEQFBnUsmHs7/FNasrWstqyNih1VWC2%20u/CEnWBOrskSQlAYHwchBFo0inA8juzwMHolCfGaGgiSCNe2EEkmJ4Y56roY6e7Gnmf+hO5t2+FY%20Ns59zzVItTRh0dpO7N78NCJVSay/6kpEU1W45h8/C0opalpbISsKQADP8e8BU9dn+wSASCKIKIK4%20DOP9h1AophdWhF4RcAK/nVkEvuW5Vta0QPnr1P9ez/Wwtnpt+sqlV7pP4+mZEfT+bTuRbGkcu/cL%20t6B3y1YIol8UF2AiLimuQElw8FywZ2rXIFn5H56En343uKhzZiJizyOrFDGqZdFUrEZDMQXZk+AJ%20s7j+U07FM8eFNTQGe9S3lg001SK0qh1yIrrAHOgIBFGaE7sVXi3o4/39IGW3tmh1NXp37sJoTw9O%20futbISsKHNNCsqEBALB8/Xrc91//jZ1PPIl9zz0Px7Jw3nuvRSgRBxjwto9/DGddfTXitTWI19WB%20UYraRYsA+K5mcyK1LoogogBIIrxsAfq2bpjdg/D6x9Ff2IqSl53Xe9CPKhKvBKLJspBXBDwAv4ag%208j2THlNVUjFWGvvdDZ03jL0f758ZQa9UujNG9xBCllW+7oEhSGVcUViNcUnHfnlsajW34v+eKIt5%20iYs6Z7qFnYARhkygiKJsoC88ipZCLRqKVRAYmRU72cOEvWxU44xl4GTyMA/2QaqKIdy5FGprPUDZ%20CR+xk3Lv8zlXJEgI9GwOhBBUt7aiurUFe595Bon6etQtXoxCOgPHspCsrwMA1LS14gP/dAtefHAj%20otUprDnvPDSvWA5FVeG5LhJ1dUjW1x/Wu33WC94IAREFv3cBZTD296B0oA+lHQfgFUughgVq2RAt%20hmJoDHbEPjEr3CeLeCUKjwIIl9VXnKRVlaj9VXjUQ3uiHbIo9xJC6E+2/gTXd14//YJewTHNP2CS%20oAOARyg0quDDmfX4ZvJxDEuFqb98AoB4+ddc1DkzEgP6rnPZQBE5RcdAaAzLMs1lO9k5EBsSAlAK%20t6DDLZZg9Q5DqU8htr7TT8UzBlB2wl4cQRTmTEexyRONzPAw1HAYkiwjGInAoRTVLS2obm7G/hdf%20QKlQQKymxh/WRBGrzj0HS884HUQQICkKBEGY8HdnlM6NHIQggAgEAIGbzqK0pxv6jv2weodBLRvM%209fzsEPM3goIArgiUJAseoZCYeGLcdxUBF+Cvh6cAVANQygMGeZU2sSMYZIDxSCCSAfBnxXzaBP3k%20d17h/eHWr4NI0qv+nQwqlfGJ9Dn4dtXjGBNL0yfqDDz9zpnZ55gwjAVzGA1mUVtKYHmmBSEnOHdS%20voyBeR6svmGM/GojlMYaRE5ZCbWlzn9g+G63GZtklXI5tK1ZA1GWUN3cDABoXrEC8doaLD7lFHzu%2013cjHI9PpKGJIEAJBiddSjZn/i0gAC1ZsHoHYezphr67C/bQ2CtbBtnrHIOyoRNxYJITpKK5PE9B%20DEBN+V2ZGg1SRXVLZ03nyG/x2yPQ/imkf9tO/PhDH9dql3XoZvH1vXkJCAqCif+o2oQxsTg9qRYK%20f5+6zkWdMzvPNiUUTcUUOjLNCLrK3EspMgZGGeSqGCKnrIC2tPWwAXe+E4xEUL9k8ZyK0AkhKGaz%20+Np734flZ67H9f90C/Jj48iNjqKmtWXuryOX7xkQwBnNwNjXg+KWPbD6hkFN2y9sI0fWnouAICfq%202BzZgX5lDCKbZ0VxZFIQmSi/kvBruhimbILMGENHsuObT33gqX+MBCKlGRV0APjt574cdUwrN7L/%204EQ3ode9mIKBf089irxgTp+o58uizuHMAv5aOkNLoRaLcnUIuoGJwrq5NUhTSPEoYuvWINBa71ch%20C/O46pgAoVhsztibTo5ObcNAemAQtW1tfoqaEAiEzK2e7ZWJBWO+1bBHQQ0TZtcASvt6UNp9CM64%20XwcAUTime0UAwaiUwxPRbUiLhak1H5suhPJLhr8Wniy/BExUpE/p+MEoarQa1IRqbnz+I8/ffvMT%20N+Pz5/75Ji7TknKP1ddTs1A0RvYdCP75CIYhRoP4WOZs3J54GmOiDmmqBzqxnPYQABTBU4qcmX/+%20mb9g1h0Z9gvn8rVoKqYQcoKQpqPfwTEO3kQU4eWKGP/DU5BTCYRWtSPQUAMpHgFRpHm4zk7m5h50%20xqAEg2joWOILeNnZj852Cr1SSAmAOg483QQ1THjZIvTdh2D1DcM80AtqO+WKdRGCcpy2uozAFGyU%20BGvuSTl7lUrK8NPnFRGvtPWuiLg3XR+DIRqIYmnV0tLzeP4NxXzaBH3sULdt6fodRBT/+s0+bL0T%20w7XZU/Cj+LMoiNbUinplTSNafi9wUefMDpV04sH4APojo2gqVKNBTyFiByFScfbMaQ6bfRAQQYST%20ziL72PMQoyGEli+C2tYApSYJIkt+unUeWMv6rq/C3Pys5QYqsy7gApnYxujli/AKOtxsEfbwOIwD%20fbB6BmGPZSeyNUQUIaiBKb1GLvHgEAdzYl2UTdKMyj7wYFk/4mURx/SL+OGPpIAhfehpeUx+6Ui+%20f1oEfeXFF7LhvfuzucEhEFF807O4xK7GVYVO3BPZhrxoTn2kDvhbBiquclzUObOEREW4xMP+eD9G%20tRzqi0lUG3HE7BBEKszudrfKQCsIgCCA6iZyf9qK0p5uBDuaEWiqhVKXghgKgnnenI/a53Lr1Fm7%20ruX0ODVMWP3jcNI52CNp2H3DsAfHYI9l/LXwsoCLmjptn4cSBl0wYREHCpulJjqVrWIC/P3gWvkV%20Kb9PFvHpisKJbyMt0Nfqnkc9tMXbjLuuustc8tElsyTol1zkDu7a84AoSZ9/s2pMv7qf4BSjCRZx%20cX9kB0qCPT0FEhVRz3FR58xm9EggUwlF2cCB+ACGQxlUl+KoLSVQbcThEm/OROxCQIFXLCH/3A5I%20+3oQqK9GoLkWaks95GTM7/Y2F6Pgyh70BX2jTdoLzgB7cBTW0DisniG42QLsoTE441m4uaKfbi9v%20OxMCyox8PIe40EUTwkx3ZKF4ZVtZaJJ4V14qXtfcZUpFXPCr/wkIFFOBlteQT+UPe+4ZGCJKBCLE%203UuqlhyctQidEMJ+85kvDVa1tmDkwME3fbAYGCQIWF9qhUco/hDeBYM4U18kwcoXkMC3iuVwZlMv%20mX9/55USdNnEqOZvd2sq1CBqa3AFb26ssQtla1ndQGlvF8yeQZT2dENta0BoRTukaAjUceZcxD5X%20fdynVcAFAogiiEDg5XUYvUMwD/bDHh6Hm87BzRXhpPMApa8IuDLz0TEBgUNcFEVjZpLtFREX4afP%20w2UhD+KV9DowI6l0QgnCmTA82UMxUUTDQAPAgHxV/jX70wNSwFUkZQ8AbOrehA2tG2Ze0AFAjUYd%20PZ0ZB1B1ZOebQYaIc/V22MTFQ6E9cIg3PdXvlU5taS4qnLkh7AwMBbkEPWpiWMugppRAW64OmhuY%20XZ/410R8IpjtwO4fgTOahrG/F8H2RmhLWyHFI75T2RwR9jnpEjeNUTizHFgDozAP9cM82AdrYBTU%20tOHpBqjp7/Umgv/9mAOTHZu4yAs6CJsmSafllwS/kC0Bfz1cmvSqiPgMbTBghEHTNSzethjj9eMo%20JAuIjEcw1jj2mjICQggMx+geN8a3A3hTMZ9WQfdsW7eN0uNEEK4+8vPPIEDAW4vLYJSbuUybB1LF%20wWccPP3OmRtjM3w72YJsoBQ1MRgaR2MxhUW5eihUgkfmyLam8j5j5npwRsbhZnIovrwHaks9outW%20Q0pEwTw6q2JKKoJ+It4n5RoHIotw0r6tr759H6zeEXjFEpjj+kshHq1UB/oiPsfwCIUtuJjSgrhK%20JK7Ad2ergp+VFcsvYdJ4P0u3Z8AIIJKOoBgvQstrkG0ZpUjpNctslFE0RZvo197yNe8SXHJEP3va%20BP2kqy9n+5/Y7GZ6+l7jGPeGM5jyWb46vxYDcg57ldFpPLPlC85FnTOnhN0vGDIkCwfi/eiNjKAt%20X4dFuXpf9OfSzUrIhKVnaX8PSgd6oC1tQ2z9GohhzY/Y2ex8rhNK0AUBhBC/W9qhfpT2dkHfeRDO%20SBrMo68/gRLInL7HHeKiIBoTS0/HHvaW3ysiXtlWJrzOXGGWHx3REycEXLZlaEUNtmqDivR1bmGC%20A5kDz1+y+JLHj/TnT5ugN65ZVdr9x8f+RAThmmM53iUebsycjf9MPoFD8vj0ino1/DV1G9xVjjOn%20YAAs0cHuRA8OxgbRkWlCS6Fmjn5Yv9CntPsQSrsOQW2tR3T9GsipxKxE64Igzu95evmcebqB4ta9%20MA8NoLTrILySWXZkm8/3NYNFHLhwoeA41vBD5aAsDn9NfI5dcNEVQUU6EX0LngDZklFMFCE5EmIj%20MRghA57kveb8JNQETms4jd6Le4/475sWQe/fthOEEPvnn/i7Z8KpKhTHxo/aSYjBX1v8cHo9/rPq%20CQwgkdSeAAAgAElEQVRI+em7f5XyDZEF4IDDmYMRDYEjuNieOoj98X4syzSjXk/OPde5SSGY2T0A%2041A/lLoUYmd2QqlPzaj73LxZQy93xmOeB3gU1LJhD42huO0AjL1dsAZGy2l24m8nE+Z/sZ9LKLLS%20Udh+VxqaiPCXS5Pwl0xVzHgKXfAEUJGieW8zAqUA9p66F4In+LUAzK9gJ4ygZXcL6rrqoEd0bDt3%20GwgjEF0RwUIQhUQBsbEYYukYhluGXzdC96hXlAX5haP5bNMi6JU2qk1r13jpnl4URkaP6SZkYNCY%20gk+kz8V3E0+hV85MT5EcK0fqibKonyC9AjgnHgITYIk2Xq7ej4OxEFamWxGzQpCo+P+z997Rll3V%20uedv7XhyuDnXrbqVVKqgkighBBIYWyIJCZAAgQ0Ydxvotoftdhg9bMs9ug3dmPZrt+3nRD+/JweM%20wSBjgh/JJAGSkJBQLKlyvjmcHHZYq//Y+9y6pZKQquqGc6v2N8YdVYUu5+yzz9rrW3POb34T0W4B%20ihAIXeBMzTLzhW8RG+knfd0OzI5s0Bqlr6zxi6Zr7TPEZCl5E6RTle8HY0QdF69Qpn7oBPXDp2ic%20nMSv1gMBm3bhjmxSKcpODV1opO1E+90DQCKp6i9i+d26XH3JT5Igk5oJA7DW762SrET3dXRXJ1FK%200DnRyezgLPFKnKmRKXQ3SKOnCimspsX00DR9J/pIFpOUc2WshnXOYUD3dKqZKvnpPIlSIojQdf88%20caCu6YWbhm969j7uW1tCb2HywMETlZm5f9N0/W2XkppJSov/ceFV/Lf8Qxy15lbGeEY9L1KPSD1C%20G0fruhKUrRoP9z1LTy3PSKmHfDON6Rvt0cO+9HrDw3zj5ASNk5PYgz0ktoxgDXRj5jOBcn6ZfcyF%20CKJZ1QaObIvtZAr8ag2/UscrVfDmitQOHKdxfBxnKigrBraq2kuSuEAEk3GfR9YCQdmp8sUDD7Cj%20ewOvGtqB63vBbPiQPBVrbzXrCUlx6WCu1uVoYXBlh+SdDn9inBW8raI2VAmF1bDoO9FH96luDM/A%20NV2mRqeYHp6m2F2k52QPvSd7MRsmru3iGz7puTQndpwgVo3Rd7xv8fWshoVQglJHCc/wkJo8L93e%20+h5NzWzctf2uqd/gN9qD0F/xzncY+7/57eSJHz92SQIVhSIjY9xdvJZP5x7luDm/OqTeJKqpR2jj%20aD1YnJOJeeZiRQYqXfTVOuhopDGkgRSyra635RrZPDNN4/g4Vl8nye0bAwe6ng7QtWVTx2uGsYZf%20jLY4dEU2HbyFEt5cEa9QoXFqIvj8R8+gXC8wfdG1CzJzEULQ8BxqboO0lcDQ9HP2yrrbxJUeaSuO%20Ugpd0yg368zVS7i+R0c8TT6WXlNxpY+kRhPhi7MWqzHOtVptKdIV4K0cYQM/tXWuZfyiSY2ZoRnG%20N46DgKt+dBWP/tyj5Kfz+LrPzNgM+ek8qUIKz/aoJ+t0n+qmmqkGBzApiFfjVHIVpC6p5qp4locT%20c857f0u3yMVzk0PZoZ/845P/KN63+30v68ta0VW/8YZXzD/3re88pun6LZfOtYp+L8OdxT18Kvdj%20JowSlloBFetSUi8CjYjUI7Q3dKXhC8Xx7CTTiQV66nl6ajl6avnwv7UbsWsI3cKdL7Jw/6PYfV3E%20RgewB7qxh3oRlony/Esidt0wVq9+HmYDRHgg8Qol3JkFnKk5muOzuDPzOOMzuAulJb+rB2R+MVuU%20UhycO83xwiSv3bCbrJ1CodCEQAFlp46pGZi6gS40ZutFHp04xNGFCXwlGUx18patN6x6fUYphQzH%20o9sxjWJXFREXQQSeCslcXxKFr3ByRQmFXbcxHZN6sn62jr2kdiWUoJFscGrbKTY8u4FyrkwtU6P3%20ZC+1dA2pSWK1GMevOo4SisxcBs3T8CwPq2GRm8lxaO+hwBUurKGXOkoIBNND00hd4pv+ed+FUsqJ%206bGHAV4uma8ooYfCuNo/ffjXH4tn0tSKpUue9atQDLs5bi/v5N/STzFjlDFWktTznJ2pfoWZTkVY%20XxAEPvFN3eV4ZpKZeIHx5Bz91U76qh1oiPYjdk1DWBrO7ALO9DxGLo3V30VsuI/ElhGEbaHciwvN%20VtolTuitXnADv1ILppEdO4MzORfYqS6U8RaKgSJdD4abLIelqkDgSo+J8hya0DA0I3Da1HRKzSoL%20jQpVt4GlGyTMGDWvyWMTh5irl9jdu4njhUkmq/OUmjUyq1Bfl0rhK4WGIGkZdCdj9KUTnMjOUB9x%20SJj26kwtE+q8KFiTGn0n+tB8jdNbTuOZwVrTfR2pycXf9ywPqx58d07cQQlFej5NNVvFrtsYTYN6%20qk7XmS6aiSYA+ck82dksCz0LVLPB/G6lKeZ752kmmggpcGLOi2YHhBDVHV07fvQjfnRBn3MF29YC%20YVx2oL9UODPeQKkYl0zooKGxq9FPQ7j8W/opKloTnRVKv+tLUj+VKFKPsB6IXWBInYbuMJ6aZSFW%205nR6huFyD33VjmCTbUNiRwO/XKVWqtA8OUnt4AkS20dJbtsYpOIvMGLXxDLvCS1HtrBs4EzM0Dgx%20Qf3YGZzJWfxKHb9Yxq83A6c8LRhHuhK+6Iamc+Pw1SggZliYms7B+dM8OXWMutdEIIgZFmkrzsni%20FCdL07x6eCdjuQGavkvFqdNwm2TtxIoE6S0SR0FnMsZQJkln3CZpmSRMnbhlcDo1BXEREPgKkPhi%20Kh2BFBKraS0S9lJUchU8M0h7pxfSDBwZwHAMju46SiPZQIQujvFqHKlJPNNDCUWqmGJydJJ4NY5Q%20gmQxSWY+w5mxM5iOSXYuSylXYnxs/JxrqqVriwT+Eg55zide/4lj93JvexB6C+XZ2VONSvVJIcT1%20y8OzCoHgFfURPCRfyjy9Mr7vizsDZ+0CCxGpR1g/xC6UoKG7NOIFCnaFE+lJxooDdNVzgGqLyW7n%20kaYQyEaT5qlJ3Ol5qk8fIT42THL7KFoy/rKJXdOXoQc9TKMLXUM2HKpPHqJxeor6weN4hQrScZGN%20JsoLLarF2cPJhRw8dBGaxiiFp/wXjJqFEGhC0HAdGp7D0zPHiZs2O7tHmajM86Mzz+FJn5FsL0fm%20z5C0bHzpc7o0S9pK0J3IYeo6ru+hlCIXSy1rdC7Dme6aEPSm4vSnE/SlEiQtA0vXMEJjHJTCweeE%20MY8ml38zbRG52TTRfR3P8tj+k+1MD08z3xt4fbdS62bTRHd16ok68XKcscfH8E2f1EKK7GyWeqoe%20kK4Au2EjNYlrucTqMeyaTTVTpXOiE7NpsumpTSz0LVDsKmK4BpVcBd/wzxO8vRybW01obMptqvSk%20eh654MPeSj+jN3/og/7Dn/6cN/7Ms8vm3BSQOtxY34gS8KX0UzhiBQsurak8imD8aoQI64bYA7ia%20x1y8xEKsQr6RYmthmFwjBUK1n/lKmMmTjhtMBJtZoPzjp0nuGCP9iqvRbOsl1esXJYoT4Qx1XQNf%204kzPU336MPWDJ2ienkL5fuDK1jpUtFrQLrIvXAjBmdIMz8yeYKFeJhdPs69/Kx3xzNmauAosQOfr%20Je4/8SQD6S62dg5xpjzLaK4PSzd5euYYVbfBO7a/hphhMV1dwNRMNKFRalZJWfFFQi01a+RiKWKG%20ha8uLVMjlUIpMDTBQCbBhlyagXQCS9fQwgPI0lbK1gFCopgwSssehAkVTC7zTI+R50Zw4g4zQzPY%20VZtmPEiF677O4OFBAOrpOp0TnVSzVQaODlDuLHNy20l2/nAnuqcvJRyMpoFru3iWR7wSRwlFPVUn%20WUwyvmmccmeZYkcRoQRSlzj6xbdJ6ULnqq6rjMd47GUNZFlVQh/YuWPCbTQOCiFuXNaTWEjsr62O%20UdBrfDt5aOV831s749LxqxEirENIIZmLl/ixfYCBSicbyr0k3FhbX3NApD7lx5+j8vRh0nu3k9qz%20DWEZLzoIJggeXuZ+EGYG/Gqd2rNHqR04Qf3YafxiBSXVC2cELrF8KBD8+MwBnpg+gia0IFZo1rB1%20g1cN7mCmVuSZmeMMprvY0b2BA7OnqHsOY/l+yk6dqtvA1k2ansNUZYHeZJ6OeIam5yxG85rQcKVP%20WjcxNYPjC5MsNMrcOLTjkhTuUilsXWcgk2Q0l6IrGcM29Bek5xd6F19Ijlpzyzo2VShBz8keuk93%20c3T3UeyGTSVXoZ6sc/C6gzSSDXRP5+oHryZeiTM9PE05X0ZpgTAuO5vlwHUHcGIOdt2mlj2bGjcd%20k1gtRjlXxrVcugvdFLuKKKFIlpKMj41T7AzIfDkGzbjKaz4589QfARdE5itO6KEwrvjpX/mtZ+10%20imalesnCuOfDET5vL+2hqjk8FD+x8q0YqXCVlon83yOsW7iax/HsJOOpOYbK3QyXu0l47U3sKFCu%20R/GhJyk/+izJHWOk9mxFT8XPI1hN1178+ZQKpYKpcO7sApXHD1A7eJLmqQmUL4OIW6xcbU0TgkdC%20Mu+IZ7iqewML9TLPzpxgvl6m6buUnRoTlXkmqwsMZro4WphkIN3JUKabp2eO40mflBWn5NTwpE9X%20IgMqINuG5zCS6UETAls3OV6YQKAYr8yTMGNs7Ry+oD50EUbaMUNnOJtkNJ+mKxELMwgXvuP6KI6a%20c+iX2Hqsuzodkx0YnsHM0AymYzLfO4/UJZqv0Ug26Dkd9Ijvv34/wweGkZrkyZuexDM9usa78A0f%20s2nixB08yyM7m0UJFSjRlVjsQxdS4MQddF9namSKqQ1TxGoxdFdfbEu71AOergQ6Gq9ojPJ/3fRH%20zX28+YJfZ0UJvSWM6908JqcOHqJZrqzIg9IQLu8s7qWg19lvTa18mTsTknklIvUI6xdCBXayR3Jn%20GE/NsrkwRH+1A11paEpDtenibhnGlB9/lvITz5HYNkr62qswMkmEGRiy6IZxdq+REul6wRSyhkP9%204HFqh05SfeoQsuGEKnQR1sxXdqCLEIJCo8rj00cYSHXyps3XY2o6C40KC/UyC40KTd9lW+cwT0wd%20oeo2eOD0M2hCsLtnI570cTwXqRQxw6LuNZFKoQsdX/nM1Ao0PQdLN4gZFtlYkulqgWOFSdJWglvH%20XvFTa+cqTEIamkDXNJKmwVA2RX86QW8qhgB81WpBu7j1saDXaGoOCWlf3LlOKGK1GNse2YZdt5G6%20ZGZ4hskNkwgEiWICoQSe5QUp9XQVu2HTe6KX/Tfsp5qtYjom8UocJ+agezpW3cJ0TAaODjC1IbBi%20FTKIuF3L5cSOE4vq9OA+KRKlBM1kc/E1LijLgUJHYCkDWxnsaPZxY3Ujb6xcRVJPNPbe+OZ7v/zN%20e8Vbb/ngBd3kVXFfqJdKzzm12gRC9K/k8f2X51/FX3b8gMPWzMpYxC5d9dnw7xGpR1jn0JRGQ3d4%20susIR7PjjBUG6KpnsX0rmNUu2pTYQ/KtPXuM2oETpHaOkdwxhp5KIKTCK5TxqzWcyXnqx05TPxD4%20orf+v0LXVkSF/lM3XKHz2OQhdKFxbd9mdKHhSYkmNEzdWNy1LN1kNNfHszMnmCzPs6VziIF0F47v%204fgelqZjajpN1w1q8eVZLN1g/+wJLN0kYcawdINresfoiGcwNJ2N2T4MTT/noBaI0YN6vW3o2LpO%20yjLoTycYyCTpTsTwlUQq8Jdpzv0xaw5xCel2pSk2P74Z13YZHxvHszwUil0P7mJi4wSu5eKZHp4Z%201LsLPQWSxSS+4bPQt4Du6hiOgemYVLNVnJiD4Rrs+sEuyvky47vGF4kbgrY1V7jnpdM90+Po1UfR%20/Jf3WWQoRLWlQbefYNTt4Nr6MLdWttPnZfCExBUe1raRCsCFkvmqEfrQnl1TC2fGZ4EVI/TWyfKD%20hVfyqewjPGNPrkw72/NJXSMQykWkHmE9R+thyq9mNnii+wi5ZoqRcg8djQwpNx6ku9uV2EODlsoT%20B6k+e4zYhgESpxZQ8yUaJ8Zx50topgGGvuoEfu49Bke6TFTmMXWDrmQOX8lA4Y7CVxJLN9CEhlSS%204XQP+2dOIISg5jZo+i6e7wd95oaJEIKOeBpD05mtFWl4Dnv7tjBRnqM7kcWTPkkrzs7uUQB8KRdt%20XxWgC0HKNombOjnbojcdpz+VIGWboRhP0VwB69wFvXbRtWalKdILaeKVOE+/+ukg3S0FiUoCzdco%2058vkZnJ4poemNKyGRTVbJT+Vx7Vd7LpNrBKUloQMou9yrszs4CxSSMY3j+Na55P3C/271FlafJ2f%20RuKekOgIhtwcPV6a7c1eXlPbxJZmN2kZo6G51LQlIjpN/PtFHxhXYyHvuePNJw98+7vjQohdK/k+%20CkhIi7uL1/Ev2Z/weOw0ljJW9g1bQrkygT1h1NYWYT0TuxLoCIp2hSftCh2NDP3VDrrqWbJOEolq%20X2I3DZCS+uGTFE8voOsGQtPQk/H2uD4hmK+W8HyPzkQGWzfxpB8Qve9SdRqkrASWHpjFHJw/Rcyw%20UMBUtcDxwiRDmW4anoOtm+hCoyOWZk/vGDW3SV8qz2i2j22dQ+hCR4YqdjdshfOVwtQ08nGbrG2R%20j1t0JmLk4zZpywwPFQrXXzmfAgU8Z0+hX+RGqYTCrgap+t4Tvcz1z1HOl7FrNkoofNPHrgWqds3T%200KRGPVmny+3CbthsfGojhmtw/Orj1FN1apkaTszhyO4jAZe2pqa9nO/zRYhcovCFDN1Ns2xpdrPJ%207eKa+iDbnV56vBQN4eEJeS6RhymT3LbNR9qW0ENh3NSnPvxrhwzbfoPXbK7o+ykUWRnj7aXduMJn%20vz2JqXRWdIWmwzu5EJF6hMsDrbGsC7EShViZfCNNdz1HX7WDXDOFp/ntWWMXAmHoGLbdfpeGoOI2%20wuhYX6xlK6DYqFJoVNjSMUjGSnCqNMPhhXFe0b8VBTx85jn2z5ygN5knbtqk7QRxM+g139WzMejf%20lxJXeoEroJJIGRB0zNDpSMboSsTI2ha5uEXWtkhYBlIqJApXrpbZkOKEuXDRLWtCCeqZOo7tMHRo%20iOxMlgP7DhCvxvFMD1/zsZoWlVyFWCWGb/iBQ1vfPMlSEt3Tmdg4QTPeZHzTOE7MQZPaJQ98UYAn%20fCSKpLTZ3uxhT32QHc0+tjk99LtZPOHjCUlZa/7UQ2l688avtS2ht4Rx/Tuuip956hncRmPZle4v%20dELq8pO8rbSLZtbjkDWDvZKRuiQYLNDB2UltEalHuIyIfT5WpmBXmEos0FXPMloK2t18zW/LalPL%20qKXdrqnhNYHAQMbQdIQSND2X48Up4oZFbzKPrmk8PnmEzniG7Z0jSCQnilMMpDvRhcbO7lEMTcfW%20zYBIpB8Gd2pRsBYzdfozSbqTcXJxi5RlkLJMTF0L6uYrHIm/6HpCcNSaXVxXF3wPpaCerHNkzxH6%20j/fTeaaTWC1GspCknq5jeAaGY+DEHDLzGRqJBkooCj0FmvEmnu3RSDTQfO0Fh6JcKDwh8QiMhXY0%20+3hlbZSdzX4GvAwDbhZLGfgvFIm/0KFAKVKD/WQ2jjw59cAj9N64r/0IvYXy9MzXnWr1NiFE72q8%20n0Qx4GW5rXw1n83+hCmjvDIT2pYe0Vr+7wsRqUe43Ig9WMxFu0LZrDEbLzJYCdrdTKm3lU+8JkRb%20alpUqEwXCBbqZQ7OncbQDQ7OneJEcYrtXSP0pfI8O3uSUrPKjUNXYxuBav9nR/dihzavlmEGmgbU%20Yq3bV4pszGIgnaA7jMYtQyem6+haMLRFKbVswraLy1DAvF6jJhxiyry4exiWe4pdRQzHoOtMF/VU%20HatpUeguYDgGgkDhPjMUCCB9w0cJteip3hKxXXQdH4UrJJ7w2NbsY09jkFsq2+jwE+T9BElpoUSY%20+bgAwzMhBI2Z+f8KXBSZryqhb7ph30LhzHjdrTdWtMfz+aS+xenmjvIuPpf5CUWtsXIWsS2YEalH%20uHzR6s0tWVUq+TqnU9NsLgzSX+0MCKYN6utCtOdDJ5ViKN2NqRvUPYcfnn4aBTQ9l9FcL3v7NgOC%207kSW27bcQMI86wuQthKLJY5WKl0TkLZNBjNJRrIpMjELQxMYQkMLR48qWPPZ50spfdwoXvQe3GpX%200z0dzdMYODLA7OAsruWSKqaY2DhBNVvl0DWHcGLOeWvxUqNxH4mj+aSkzS2V7byxfBUb3A5sZZCU%201iLZexd5uFVK0f3KvROXco2rRui7bnvjc49+/t9mgdFVfYhQ7KkP0BQe92WeoC7clefYiNQjXAGQ%20QlK2avyk5xAnGpNsmx8h56TWvLaui/YcjahQWLrBnt4xfjx+kLrnkI+leEX/NjbnB9C1QN2esZMv%20uI+1SgidCZvNHVl6UwmSlr5os3ouObRhlgfBQfviW4qVUMQqMUafHcWu2rhxl8N7D6P5Go/f/Diu%205YJg0eZ1ub4zPzwY7GkM8obydm6sbyQpbXR19miyLC6lSpHfedX9bU/ooTDu9L3v/9CkputIubrp%20OU9IbqhtQKK4L/MEjvBW/k1b6fdWTT1ChMsY87EyPxx8it5anm3zI0GrW4TzozwluaprhB1dG3Ck%20Fyjafwr7ijDjMJBO0B/+ZGNWG0XdF5LdgXGjeGkeIQIq2QpzA3OMbxpHagGXPH8IynIdQIbcPG8t%207+Sm6hi9XjpUr6/EaU8R6+ogf/W2bxYOHCa3bXP7EnpLGDd8zR7/5GOP06xWV30xOcLnNbWNNDSX%20r6SeuaDaxkUe7c6vqUeIcBlDUxrT8QITw/MMVrrYsjBEwrMvWgB1KRtxu0OhMDX9PDIXQqALgaVr%205OIWw9kUYx0ZDE0sitnWI5kHXCw4bM8s6jEu+HuVGoXuAgs9C8E0wWWc1qZQ6GgYSqfTT3BVs4/3%20F/Yx5OYwlB6I31ZQJ6KkJDHQx7N//XcXTearRugtNMqlB33X/TmC2WWrjobw+LnKNhrC42up/UhW%20OBuuCNLvLfV7I9r0I1zeaM1jn0jOM56cY7jczWipj4QXw5T6qiTjNe0CBrOsJamHl2jqAkPTsHSN%203lSC0XwqELXp+mL/+FqK2ZZzbSxo9Uvac5drAIpCIQEdQVJaJKXNVc1ebqiP8nOVbcSlSVPzLljY%20dtGfS9Ooz8z+0aVOJF1VQs8PDT438ezB6loRekDqLreVdzBjlHk0dmp1SN0ISX0BqEebfoQrIVoX%20gOBUemZxAMxAtYuMk8D0jRUVz2ltKopr2awKwNR14qZO2jLpScXpSsToTsaIGTqeDOrlnpSXzXoQ%204d57wppf2W6jl0CrGyPl23T5KcacLq6rD3NzbYxuL4UnJI7wqWvu6q4NqejYdfUZK51aP4S+5223%20FZ/79ve8pbOE1ypSv7twHSIreChxHE1pK0/qgiD9rgFVIkS4ItCaqHU8O8lEao7+SicD1S5yzSSG%201JErQOyijVLurZnhCkXKMsnELNKWSTZm0ZOK0ZtMIMLfk0rh+PKyXAcaGgetqUuesHaxJO4h0dHY%202uym38uwtzHM3voQW5xuBAJHeFS1NaqLKoWZSvLYPR//2zuf++H6IfRkR/7+RC7nuPXGmps+aMDt%205Z1IFD9KnDhHsbiix9QcZ61iI/V7hCsEhtTxhM+x7CRz8RK9tTw9tTz5Zgpd6shlrE9qQqxpwr1F%20zpoQZGIWOdsiGwtsVjsTNknLRBcCeZlF4S+VsTlpLazed4DCEUH/+eZmN1ucbjY73VxbH2LIy9Hl%20JWkKj+ZqCKRfks8Vdle+vvWXf8Hit354SYXZVSP0UOkuH/6nf/nj/f/xnb+oF4prSmcKSEqb28s7%200VilSL2FTEjmpYjUI1w5EAhMqVMzGxzPTDIdL9DVyDBU7qazEVhjXmoqXrH6KfdWr7eUCl0T5OM2%20PckgjZ62TVK2QdI0EQJkKGzz1JU1zUlD8Jw1uaLbXct+1ROSXi/NdfVhdjcGGHO6GHLz9HgpXOEj%20hVq7aPwFHwwBSn1N6Jee5181Qm8p3a//+Xf91Xf/6m93P/O1b35YW+HZwy+9ABQZGeNNlR00NJdH%20Y6exlL4aO9vZoS7FiNQjXGHEHoqaqladutlgLlaiq55jtNRLxklesk/8aqTcWyTuS4Wpa/SlEvSn%2043TEbVKWScI0sMMpcK0JZ1fyREaBYNaorchrB2NHfTQl2NsY4ubqGFc3++n3MnR4yaCkIdSq18Vf%20NnxJeuOGSnLD0CWvkFVNuZ95aj+Du3Zw04c++OtOrf6qw9//4W6hra0JhESR8+O8rbQbT0ietidW%20p84jgNQSUo8Q4QokdgVUzDo1o8lMYoHuWp6xYj8JN4anXZy6WF+hPWVpJG4bOsPZJMPZFJ1xG8vQ%20sTQNXROBPEixbtvLVgK6Ehw355Z13/ZC+9UdzX5eXd3EzbUxcn6CjIxhqaCjop0siV/03sRs6tMz%20f7Ppve+45D6oVSX0wV07eOQz96EbevOZr3/rxtM/eeKHjWp1z1pbNSoUnX6SW8vbmdErTOnllZ2l%20/nxSVwTp9wgRrtDoTQlFzWhyMjPFZHKOwUoXY4VBTGksa339osgjFLbFDJ3hXIrBTIKeZBxDE+hC%20O0/fG/H4+dtcQ3OZ1y89Qm/Zr25yOtlbH+Ku0jV0+EkspS9mVxXL5Ny2GtzjS+JD3aCYFUJwsUNZ%201oTQAfbdfSf3f/Jern7Dz1YPff/B33vw7z7175XZOdY6UveRbHQ6eW/hOv4h9wgLem311LKZ8Jso%20cMlj/CJEWM9QKJq6y9HsBKfSM4wW+9hY6r8AMxK1LNavrWEmCdNkJBd4pfem4osNKxFePjSlcdSa%20vaRoWaKwlcFr6mO8tjrG9fUNxKV5zh69Ls9RApRSx4QZ1CMuhczXhNABbv7wB1vp9/9+32/f83a3%200fhCs1pb86EKvpCLw1w+n3l89YQTCkiEfxYjUo8QAcDVPA50nOJYdoIthSGGyz0I9VI18ovfQ1pi%20urRtMpJLMZpLk4uFQzeUisj8IqEjOGLNXnDUHDi3aQy5OW4r7+Q1tU30eOnFueOXC4x4/KHU8CZZ%20YPcAACAASURBVGBlWV5rrT5ESyS39Wdu/tbE/ufuP/yDB26mDQwhHOFzfX0EBYukvipXpQjS71oY%20qfvRRhAhgqYEnubzdOcxDufOsHVhiIFqF5rU0F4gKjNeRqav9f/RCOrtpi7I2BZD2SCdno/ZgZBN%20qqgOvhzfIRoTZumnCh1b/01HIyVt8n6Cm6tj3FrZzmanm6bwQtMX77K6N0LTUL7/wOAtr1sWdxJj%20LT/M/Z+8l11vubX8ud/+vbfnh4e+WRyfuFa1wQPUEB6vrI8ggM9mH6Mm3NXxh5ZhpE5E6hEinBOt%20KQ1Hc3mq6yjjyTlGS33kmyksP0i7tgjhxZ7TlrmLrmnEDQ1b18nYFgOZBAPpBLm4jSclUnHF9Iav%205qHshDl/nomQRCGFwlAaWRmnz80w6nZwZ2kPm51uLGXgCp+K1rws74uSklhXB77jPmEk4+7JL3+D%20kbfeemkHhLb4YErpD/7dp99x6P4f/GWtUOhul8SWrQy+kzzEl9NP0xDe6g19EAQWsQXAI8rzRYiw%20lAiERCDoquUYKffQ2chg+QZSKExdpzOWWayBK8DUNFKWSdzUycdtelNx+lMJ4qYetJ6FveERVgZp%20afOhgc/yVOwMMhxHqlB0eSn6vQxjThe7GwO8qraRLj8wfGn9zuUMJSXJoYFavLf7dds//P5H1n2E%20DouGMz7wua9+/P/ZMHXg0B/XFgprLpIDaAqP11Y309A8vpJ6OvRhXgV2VUCcsy1t0Uz1CBGWRHzB%203jCdWKAQK9Nb7aC3lqOrlsOWFp6UxE2DbGiz2hG36UrG6Ijb2LoeRIby8rVZbScIBFXN4ZS5QE24%20JJXFVY0etjk97Gz0s7MxwIibR4Ye6m1l+LLS90YIpON8RxjG+HK95poTetDK9nn23X0Xm1/z6k/V%20C8W9zWrt3b7r6qINauqu8HltdYymcPla6tnQInaVSD22hNQbgBZtEBEitKArDQ+fk8kpZmIF8tk0%2012gbudkeJhe3yNoWadvENnT8cOCJG6XTV/nwJThuzTPqdnB9fQO7GwNsbfYw5nZhKg1XSGralTlb%20WkmJ3dkxv+Htb2rwP1wmhA6w7+67uP+T97LlphsmD93/wMef+NJ/f9XciZMbpdceAghDaby+spWm%208PhO8jC6YvVI3SLwfy8RpOGjSD3ClY6g0TiIcuICI6/jpF1Oxqd5VX2EPbVONI3F+eFuFImvGaRQ%20dPgJfnXuZjr9JB1+Ah+JLyQNcQV/L0phplNI13041pFfNsedton5bv7wBwHYcvONT49cu/uXzZg9%200U77R0wZ3Fq5itdVNyNXu7pjhqSe5Iq2j4wQkTg+QTfIELAD2AlsANEj0LMadizY0vxQoR49Lmv9%20tSlS0mKj20FK2otq9eh7AaHrNeV6RwAKBw5fXoQOQT0d4Pr3vutbO990638YttVW+0lSWrypvINX%201jfgiVWWoOtAlrMq+AgRrgQSbz1miYC4eQVwNTACdBJoTcI8o1SB0Co69bbj13j5i9wuAs+Y6eQp%20gNy2zZcfobfq6QGpv/P9vVs3/yttZLOiUMSVyR3lXexpDK6+uYFGMFM9Hj0JES7j3b/1kwO2A9cB%20e8KovEXg+pLfX/LXjB+L7mGE9l/mShHr6ZJDt926rPzWdjKrfXffBcAX7/kot//hPXd2j22sttUX%20gSIlbd5ZvIYhL7f6p04BdBAI5iJEuJxgAN3AFuB6gnR6N2CHO5V46aczJe0oDozQ9tAti/rk9Jcz%20mzbsn3rgkWV73bbVTd/xsT8A4Jq3veWGeCbdbKc+UYmiw09yd/FauvzU2lxEZ0TqEdYxRBhlx8K1%20vB14ZfhnL4Fu5CIeeS1SjUZYB9G5kUqS3rhBwqX7t68LQgd45DOfZ/Nrbty/9863/Zpumm1l/uAJ%20n41OJ3cXryXnx9emPhSReoR1sYO1whKCro0EMBhG4NcSiNs6OSt8u8hHSQpFv5eJ7neEtj/LKulP%20C0N7brlfu60Jfd/dd/HIZ+5jz+1v+v/6t2/9pJWItxWpO8LjqmYvd5WuIR+2Y6w6ugjU7xEitBOB%20tx5TM1yfnQRCth0hiW8kUKtDIHxbpsc6Ja3o/kdYB6QuTma3jB26ogg9IPU7AXjrH/7+/9QztukZ%203TDaSsTaFB57GoO8q7SXDpnAW+3eypZ4qDXYJSogRlgrEm8Rc4xAvNkHjAJXhUQ+FJK7XF4Sb0FX%20GrGI0CO0O5lrGkqpY/2vf82VFaE/f8vo2jT6gdzQ4Ljvt9fEHUd4XN3oCyP1+NpE6jmCuep6ROoR%20VgktYiY8UPaHBD5GIGwbI6iHx8Lf81dubSoUaRnVnyK0O4sp9EScxGBfRQjhnfzyN5b15Y31cA8e%20+cznEUKglHqs9qd/dU+zXP7b8vSsphl621yjJyQ7G/1UNIfPZB5FolZXoKPC6EcQuMpFQ10irBSJ%20q3DnaGWGUgTtZEt6ws9pP1ut5S+taMlHaPPwXCBdt+BVag8ClzxdbV0SequWLoRQynP/4Uv/+8ev%20lr7/W7WFghKa1jbPsERxbX2IhnD5Uvop/NUmdQgERy3/94jUIywHU7bEaiZBy2QOSBMI3EzO7Qlf%20I9cIJRRpaUfLPULbP0+abhSz2zYfX4mXN9bLfdh3951844//DGGY/uSzB//0oU99Zp9Tb9zsN5sg%202ucxNpXGq2qjVIXD19PPolbL930pWsYzEalHuFQSj4Uk3rEkAjc4W6xbxSj8pRC1rEVYH4wuiqN3%203XZ0ZZ6BdYRbf+fXAei7auvpbH/fLyLlA6r9vi4spfOz1a38bGXr4v+26ogTWMXq0SMU4QIWb4vE%20Bwnc2a4FNi0hdDM8ILYRkUOQHevyUqt/eI4Q4UII17KwO/IzQogjVzyhw1m/95/51Q8d2337m7+U%20yOfq7dTK1toXbaXz5soOXl3btHY3OUGgNo7GrkZ4yQVLoELfS+CXvjE8EBrrY/0oIC3t6LuM0N7r%20VMkmqIdh+QayrGtCH9y1A4D7P3kvN7zv7k/omv6fdMNotuMGYyqd28s72dHsW5u4QYVRVWdE6hGW%20QIQ/6ZC4rwf2ESjU1+lEv8CSORZF6BHaG1KVlVQ/huUbyLKuCb2F1rjVX/jb//yX+aHBp4XWfh9F%20orCVwfsL17PF6V7b6KuLIF0a4cqLvkUYadsEqfMtIYHvIUitm1ySQ1u7fMxUpHKP0ObQbEtu/aX3%20rth8knUdt515aj9CiKmhPbtuyfR2T7XlgQxFTBq8rbSbAS/LmkwCVgSK5IjUrwwCV+GTbYdReF9I%204tcQ2K32LCFxebl87GAwS+TBEKFtIQQoppODfV+feuCRFTl7rmtCH9y1gy/e81Fu/ODPL2x57U0f%20N2y70G71dAh61IfcHO8r7KPPS+OLNdhFW5t8y/892vguHwJvEbMREngXMBCS+O7wz87wv3vrPxp/%20wdsgICXtKOUeoX35XNPIbB4tAPTeuG9FnsB1X1m942N/wP2fvFfse/c7/mzk2j1/ZcXjqDZkdVf4%20DLpZ3lXay4CbxRX+2lyITiCUS0SkflmQuE3QF95yadsKbCOojedaJ8o2IXEBUpcooVbkpkQ+7hHa%20+7lVTWEa31jJt7gspFI3f/iDCuDW3/n1P80PD35K00RbHtNd4bOl2c27i3sZcfM4a0XqGoGCOSL1%209UXiLetUi2BO+BiwOfwZC0m95UHg017pdAGGY9B7opeeUz3ovr7sNygSxUVo7xBdyI7dO1a0NHzZ%20aJ/DevrMtp+56X8d3ntN1XfctrxOT0g2up3cVbyGHi+1+sNclkbqEam3N1pe6T6B+nw4jMC3hxH4%20IGf7w2FFvdIviFqFwtd9pHZ2bUshSS2kGD4wTH46j5DLT7yRKC5CO0PT9UbPDa/414jQXwYGd+3g%20kc98nqvfeMt4qqvz9txg/5z0/ba8Volio9vBXaVrSEgTf612YZ0gLRuNX23PSDxHMHJ0F8HEsuEw%20Ms8QpNpbafc2OpApobBrNkOHhuia6ELq8myE7hnono5v+Cty41J+1IfeDtCFwBBa5Nx3TnQOyeFB%20QwgxO/XAIyv2NsbldM/23X0X3A21QumHQvDJYw8/+nvVufm28ntfum9vb/bwtvJuPp95HB+5NulC%20LSQOBdSj527NFoMKD1ipkLQ7wn9rL3DsbtOMim/4bH58M7mZHLqn45kexc4innnudETP8Ja1jh54%20PpgYkdnCWvIVutDwleRwtUTRcxiNp+m0bHwVpQBRyMrJ0/8JoPfGfVGEfiFI5DLN0euv+0SqM//n%20hmWJdt0ABYJX1jbwlvIOBGt4mYJABZ2OnrtVJfFWRrqbYF74dWE03hdG4MY6e0IF2DUbs2mi+Rpm%2002To4NBilC6kQJPaCtxKRVLaaCqKCNcCGgJHSb47N85fn9jPfz15gH8ZP8JXp09RcJ1I1xA+G8Nv%20/rnySr+NcTneu0c+83lGrr2m9Mg/f/4vm9X63sL4xE3tuqgE8NrqZiqaw/eSh9emT71FMNnw7+Xo%20+VtRtJTpneE917jsdAy+5aM3dfLTeRKlBLVMDc3X0HwNN+aitGWM0IWi202iRxH6qkMXgkeLs/zb%205HEcKRdNCKWCqWaNkueQNS2iIF2o3te96jsrf7i6DLHv7rv49p//Dfvec9fBjuGhj6c6O6ba9VqD%209nCNt5Z38uraxrXdlFqkniWa0LacT5hBID5sDTzZR9AbnufsoJPLZtsSCCU4tuMYAoHVsBg+MLwo%20kFMr8GHV4tE4wqovbyHYXy7gSElCN9iX6+aV+V48JRFCXPHRudA0X+h6vXPvrhkzHn98JfzbL3tC%20B3j9r32EL97zUfHG3/3Nr2YH+v7STrWv8qu1yd1ZvIY9jcG1FZMogtR7ROoXft9aXGUQmPdkCURt%20uwmGnmwiqJG3oZjt5e1OL72OrYaFUIJKrsJc3xyar5EupM8K5EQQUS8vsSuS0oxEWGu0JKq+iwbc%201jvC+4a2sDfbSVw3SOkmMf0KG/cYpiI005BmOjWT2jTyL9s//P7f3P6h9/U/+9d/J1bCv30pjMv5%203t7xsT9QALf/4T2fuO+3f//quXrj3e2qfFcolID3FK/FR/KT2Om126BUSDwQzFSXEbn/lNDwrM2q%20QdAxkAt/YkuIu6VeX28fUSgQBHVxT0PqEifmvHgtXJyN1E/uOEluJoddt+k600U9VUcoEajcl3E9%20SSAj42gqSrmvBSabNYQQdFkx6r5P0XUoey79sQRZw0JdAfl2JRWaaaCZRlPo+onUhqFHht5yy19k%20x0YfAph64JEVc4e7Yggdgnq6EMIpTk7f89X/8/++auH0+O52vVaJwlQ67yrupaI1OWBPY6zVJqU4%20285WCskoIvWzYjadII0eD+9TOjwE2UsI3GujMOoithKpSeyGTXo+TXY2i9WwcC2X2aFZCl2F80hd%20KHH2fQQ4tsOZLWcYfWaU9HyaZDGJkGLZ3eIUiqyMo0cLdNWXVcF1cMPaeY8do+g1eaw4S960GUtk%20iGk6rpKX8X6gQAjszjxGIvZ9I5n4Su7qbf8+/IbXP8OvBb9SOHCYlY7MrxhC33f3XTzymftEtq/n%208EP/8M+/Kn353cL4hCba00wOH0lSWtxdvJa/zz3MUWsOS61h2ioZRqDFkKCutD1TLSFxK7wfqTD6%20ToY/9pJIvJ2icAG+7mM2TXzTf3EzFxGQoliiEpeaJFaLMXRoiJ5TPWi+Biqwbk0X0jz5midRujrn%20oKB7+tmaqQqi+7n+OXpO9RAvxwMhXHhNyw09Uriv+llQE4J5t7n4mEw26jy0MM1TpXmuz/ewOZnB%20u0zJXMngc1mZ9LTVkXsm1t35hZHbbv1Cor/3dOt3WkS+WmQOV8iU7H1336m+8cd/Jm54/3u+33/V%20tnti6fbuz/KFpNtL8e7itWx2umiKNQ714gQpZJMrw1WuReB++Jk7CJzZthLYrI4SCNyytOXAk1b0%20azgGm57axManN5IsJV8wKvaNgOjj1ThCiaC+LRR23Wb44DBdp7uYGZzhwHUHOLn9JEpTmE2T7FwW%20ucTlUAkVROzhAci1XIQSuLbL+KbxgBykQPM1fMNf9gg9Ka2obW05D0hCENN0fAWGpvFCbtoCwYLT%20DL5ypbhv4hg/Kkwzlszwus5+bE2/vLYLpRRKITSN5NDAfHbrpj+zO/PvGbn9Db+8/Zff958T/b2n%20T37lrFX7ahL5FROht3Dr7/y6Anjdr37oE/LP/2b3s9/89t262b6zRH0hGfKyvLu4l3/JPs4haxpL%20reHXFSNIMy8AzmUYqS+NxG0CBXrLRc8Io3PteYTfZqGUFBKpB5G1Z3oki0kGjgzgmR6zg7OoTLC9%20Sl2i+RpKUwwdHCI/k0f3dGrpGsd2HsMzPDJzGTomOij0FDi99TT1ZB3TMRk8MggENfXnrwHN1849%20KCiB1CSFngKTGybRfZ1id5FapnZONuBSIYWi04/a1pbtUdd0jtXK/Lg4w3ijRsoweWvvBnKmhVxS%20D9cEnGlUgwOcksw4DV7fOchrOnvpMO3LJzpXCuX7GKmkEIb+WHrjhq+a6dS/b37fO58SQlT4XTj5%20lW8wctutjNx265peqnElLdSwni4P3v/AR9x64/rDP3hgUzuTukTR72W5s7SHv889zKRRwlzL9LsZ%20Et0C4F4OD+oSck6GkXjHksNLy6lNLfn9dvsImkJqErNp0jHTQX4yT7wWZ/8r9+MbPtVslenhaYpd%20RYQKIvH+o/24lovma/Se6sVwDKQuses2pYkSswOzZBYyWE2LSr6CYwciuJZBjBIK13bPux+6py+2%20rbVS70IJXMvl1PZTCCXOc41btqWp9MjA5HnQEBfsa2FoGt+eG+eB+SkKbhNfKXSh0WnZ3NE7SlP5%2050Toc24TiWJXuoNbe4bIGTYxXb9s3OGk52Fl0qQ2jZzUTeu3CwcOfW/D299cTg701Xn/2bT6WhP5%20FUnoYT2drTffWPzWn/31q/u2b52YOnBIaYbRtjuBQjHk5vj5wnV8OvcoU0YZfS3VvCbBvO3ZdUrq%20S9vLWrPDc2FUvk5sVlvKc93VSc+m6T7TTWYug+Zr6J6O1OVi69jTr36aRDGB1bCoJ+ski0k6pjoW%20I+rJ0UmkLhk6MITma2TmMix0LxCrxkBBPVlHGhIUJEvJxfcv58vnRdmtGv183/x5921l/NvPIi5N%20ROQw2krW4CvFnNcgrZsvmvoWz1vitqbzvfkJvj07TsFt0h9LMNNsIFGcrFXQn5d214VgvFFFKsWN%20HX302QmkUudE8ev2rC8lum3Ted3ukp3P/Url9JnPbf3F97hmKin5k48Cqyt2iwj9RUn9Tu7/5L1c%20c8dbpo88+PD7KnPz/1ibX0Bo7ZuuUyhG3U5uqW7jvvQTNIW3ttGIFhLhDO2j5H65O12WwKGt1Va2%20DnfrjqkOOic6yU3nzklzIwIynRmcwTd80vNptj26Dd/wOXTNIeqp+uIObtdt9t+wn2JXESUUneOd%20iyS+uMsLMB1zUZnefbo7IPPOMk7MQffOZouEEjSSDZ686cmzA1lW8QlJKjvqQw+XeNFz+aczh2j6%20Pu8c2MRIPHVexKwI2s3ShklKt9AEnKiXeWh+Ck9J/pdNuxiMJfnC5HEenJ86r8IkgJLn4qnAUSBp%20GJeHG5xSGIk4uZ3bvzFwy2t/Nz0y9NjEd38oNt71VsVvfGQxtQ60HZlfkYQOcPOHPwgfRv7z//yb%20nzZtO6bp+n9p915JheKVtVEc4fOV1DM0hLe225cG9ADTbUrqLQ/Klktba+CJ+bwofb3tN0Kx7ZFt%20QeuXFgjYdF+n2Fnk6O6jQa93GCnbNRvDNfANH2nKxZnkuqfj2A71ZH0x2vdNf/GeKE0hDYnUJB2T%20HYGyfT5N9+lufMPn6K6j55D5akbiz4eORlrGGXAz6GhrZ528xpBKIVFoCPaXF3iuXGBvtouMYZ21%20QVAKQwhO1Cv8w6mDlDyXwViCXxzeRn8szuPFOc40aryld4Q+O4EAEpqBEBDTz43yNSFYcBpIpRDA%20gJ1Yv2n2IPPg65bpZa/a+sDIHW/8vWR/70NLovDFD9YuqfWI0J+HL97zUe742B/IJ7/8ta+f/MkT%20Pz756E9e0c5ROoBE8urqJoqiwf3JwzhijXukREiU7ZJ+b6XM9ZC8WwNnDM6q0C8DnU4z0WShe4Fq%20rkqqkKL/WD+e6SE1iZBiUa2+2EEWzidvRd1CCTzbOyfn2hLJNRNNPNOjlqyR03LkZnLkp/N4hkcj%202eDo7qN4hresoraXd6BtHWshpgxiyqTPy/C66mZuqWwn7yeuKDIXYX3ckT4V3+MnxVkOVYr8ysar%20aUqfwXiSvdlOuqwYjvQ5VivzwPwkr+3s57+cfBapFKamUfE9jtVK6EJwrF4mrhtck+nECNPrFeli%20Co3BMJ1+9lETTDVrOFIyGE+uvzuvQOgaaMKN93ZXUiOD/7D5/e/+TSGE5CNr03IWEfol4I6P/QH3%20f/Jedr/1jae++L999L3Z/r4vl6dntrVzpB7ux9xWvholFN9PHFl7UtdCUp8Dmqu6uwc3QyNQoNsE%206fRM+KPTnr3hl7qRS8ETr30C13IxHINEKbF4P15uGUYJheEGj77UJfFynFQhRTPWZL5vHqUppjdM%20Y7omyWIS3/BZ6F1gengaz/JevJ99RQ6xCikkCWmTljZ9XoZr60O8uraJXY0BpFA4wrsiyFyEkXFT%20+pQ9lzONKgcqRR4vzVHzPDYlM+hC8KqOXnZmOkjpBp6SzDpNPj9xlOlmnVONKiPxFALBsVoJqRS+%20Ukw168w5Dfrs+GKLmgRO1CrYus6uTMe5qnUBFd+lw7LZkcqvHzc4pRCGjtCNeTOVmMjt3H7/2Hve%208ftCiAU+cDeH/v6zbPnAu9cdkV/xhA5h6h24/f+459h//Mlf/L+NSuWPnGot194HS4UU8NbSTiSK%207yYPr8jAiwveaTqAAtBgZdLZS9PksZDAYwTp9FxI4nBuD3k7fW+tiFlxydGtr/vonn5Jo0gNxyA3%20nSNejdN9MqiN19I1aulgKloj0eDwNYcDkZ0WpPeFFKtC5hKFLyQagj43Q6+X5rrGMNuavdxcHUMg%20cIRHTXOuqP2q4nucaVQ5Wa/wdHmByUaNpvRJGyZjyTTbUllcKXmuXODZygL9doI39gxT9Jrh2Vcw%20Ek9x98AYEsUfHnwMhUITgqIX2LUOx1MYQmBqOvvL80w0amxKpOl/XoQulaLPTvALg1voj8VxZPum%20vlRYFhCmgZlKLhjJxIOJwf7Pbv3ge/5JCOHz3rNtZ1s+8O51vUauaEIHOPPUfoQQHvDJL97z0e2z%20x0/8RrNSpV2d5FqkrgS8ubIDX0i+lziy9nIgnaClrQRUlpHEZRiFx0MCj4fkneasMr0NCfz5ZJ4q%20pjAcg3qqTjPePI/UW4Yui17oYer8Bc9Py5Du9gyP0f2j6J6OEoqF3oVF45jWewtfBP8O/77Sa9oV%20Eh9Jp59ki9PNVqeHPY1BdjR66fHS+EJS19wrcp9ypM+3Z8/w0MI0Vd/D1jRAsCOVZ0c6x/Z0jm4r%20TsVz+fLUCWq+x2hvGgFUPA9XSkxN4+19oxhC0JRBZJ7SDTosm5O1Co6UlFyXebfJmUaVr06fIqkb%20/EzXAIbQzrFw9ZViLJEJr609yVwppfClsLvyKM9/GtTXO67Z9eSmd99xnxCiyi+9l5Nf/gYjb721%207WvjEaG/TAzu2tGqp7PjDbf8+eNf+OLWuXrjjUrKti6oSxSGCsauVrQmD8aPY6+l8YwKyTUTRuyV%20i4zU5ZLXak0sS4dEbod/Lo3Y10E6PTOXYXT/KEIJzmw+QyPZOIcgfcPHrtkkykF7mTQk5XyZZqx5%20SVH4iyZUQkV6LVPDMz2cmEOhp7AYnZ/3va7gkpFC0hQeSWlzQ22EbU4P25o9jDldDLk5dDRc4V+x%20RN5CU0oeK87iSMmGeIq67zHjNLips49d6Y4gqxFG0E3lkzJM0oYFQNlzaEqfXjuOqWkooOg51H2P%20HjtOlxXjZD1oS5tu1vn3qZPMOA1qvsftvRvYnsq9oB9724rglEL6PnZHTli57AEjmfiUYdtf3/6R%20DzwCwN1L+sffeutltU6ueEKHs/X0LTfdcOzQ9374sYf/+XOvKk3P5Nu9D2OR1Es7aQiPx2Knia01%20qYuQgAVQfhmEoJb8CIL0eZYgld5Kq1vPi9jXGbJzWbKzWSr5Co1EYzHCVkIhEAwcHqBjqgOrYWG4%20BlKTFLuKnN56+gWj+UuNhAGkIRkfG6cZay62mZ1H5iu4bl3hoyEYcLO8pXI1G51Oxpwuur0UcWXi%20CRn8IKMNiqDne2e6g12ZDiqey3fnJvCVIhHWyVuPmaMkFc8jG7NIGAaCIJ3ekP6ich1golFDF4K8%20YdFtxeix4mRNi4LrsL+yQJcV487+jVyX7brY2T5rEZEjADOdUomh/sf0mP3PyeHB/xh5yy1PADz9%20J3/Dzt/8CMC6rZFHhP4y0aqnb3ntqx+8/5P/7QMHv/v9T7uNZqrdr1uGk6beUdqNI3yetifWltRZ%20QuoQpOBfjMRbA09aUXg2/LdJkMJfxyS+FHP9cyihmB2cDQh6SR16wzMb6DrThd2wceygJmw5Fl0T%20XdQzdU5vPv2iLWLn3O8XiKaFCrzTBWeV74ZnoHmB57qv+yhdrYpiXaHwhMQVLr1eln31EW6pbKfX%20y9DnpRezSwq19rML2hAxTeeNPcN0mDZPluap+x4508LWzl0bBbeJUoqYppMzLDwkZc/FlQH560LD%201nTun5sgZZjsynTgK8WWZJa3923kWK1ExrDYlsrSa8dXOkmzPGtLSoSmYaVTpDdt+LqVy/ypmcs+%20M/ymnx0XIlANL+0fv5wREfoSnHlqP4O7dnDzh3/pyz/61Gd/8Ni/fumN68EtQaHo8BO8q3gNZOEZ%20e2Jt0+//f3vnHWVXWbb963l2O71P7yWTTHoCgWAgCAIiRmqUoFhQ/LDz2T4biIIIvii8hWz/XAAA%20IABJREFUwIsvIIJYMBIiBAIkkSCGEiCQAOkhZVInk+kzp5+9n+f7Y59zkoEAATKTOTP3z7Vcrsx2%201pm999nXvtt153irqOeEOWchmxsr43i7S9swdWjLLyF5H6ScKfQH+lG8uxjdxd3oD/XDUizUratD%208Z5iCCaw+bjN6Av3wRlzYvxL48FMBkfU8d5inj1Xkkt7m9khpB1pbJ+4Hd2l3Ug70gdtWQ8V8EE+%20zwJ2F7pHGDg53oCPR5vRlCqCU2pwCT1vTzpa58ePFM4YPIoKS0qkpYW0EFmBZgMuZVcmBQYGlXE4%20FAUx00RSWFAYw/Z4H3bE+7Cqpx2tqTjKHS40ewIwhT2fPt4TQJPbD84YNMYKQsghAXdlOax06qby%20M2Y/Hd/X9lz9JRfGGLN9A7N7yEeFmJOgv4WKSeOxav5DmDFvLk689OJPPPKza5/at37jx4Zzg9yh%20X+aI5cFFfZOR8pvYoXdAPZa+74eKOgMQh+0uF4Ltm66g4Ba8hNpC8HR70Frf+s6e5AwDpg6YZIjs%20jaBufZ1t5uJJoDfSC2+3F4H2ANS0ipbxLegq68q/MET9UXi7vOAWP+ihLt8tQLed3AQXAzzUe8O9%206Av3HdxsJjFkExFW9u2tLhPG+X2TcUq8AV7LdnM7dLxupAs5A8AYsxd1HYXvOGNAv5lBn5lGieHP%20z4vn6E6nbSMYriCsGdiXsjvhFcbQlkrgT7u3QEgJhTFcWFoHt6rlu9c5Y9Czv2/Yi7lpwdtYC9+Y%20+v9uX/nKjzW/1yr76CyLMSbxuYM18pKPzBhVGkaC/hZmzJub/9+nfv3ynz518+0vtW9vQWGIukRZ%20xl7m8nf/q9in9kEZDqrpBjAWhbV+VR584bAUCxXbKlD5ZiW0lIbukm5EA29v5WeSwdvpRagtBCNh%20oKO8A51lncg47EUoTLJ8NO3p8UBP6WCS2bPfLD9Mnt9UZmomTNV814yAZBIJTwLRQPTtws8OL+BC%20FUi5Um+L6D+8eNknzCV0XNw7DdOTVZiYLIPJxLEfrTxGUfW+ZAyv9XZhii+ECqf7sD7nb7lk7/6i%20JCXSQkBAwqfqUNnAtFZXJgmFMRiKvawmZppIWhYMhcOvGujOpBDSHZhX3vCOn2d4fy8ldL9vXfj4%20Kcv9TfU/CU+dlMin06/+fv6wkVojJ0H/gOxduwHByvKX1/zz0ROj7R0vJfqjBSHqFhNoSEcwp38C%20HvS/hj6eGB5bqDKFcbdxwRHcH4S/04+EJ4G9jXvzAswtjrgvjqQ7OVDIBIO/04/KNyvh6fbYaXmL%20Y2/D3nd88dJSWr4JTahiwO8y4gZMzUTKmXrXveFCEWhtaMXO8TttB7j3mBHngqO7pBtdZV0DLGI/%20zDuPAgZdKnAKHR+J1+H0WBOOT1TnDWEyzBqVzw8Ghv2pOP6xbzu2xnpRYjhR5fQMyEgIKRGzTGyO%209aInk0Kp4USDyw+X8s7LVBKWie5sWt2ralAPcbeUEujOpGEwBUW6AxISMSuDhGXBp+i4tKIRKuco%20NZzIiAJaosKY5ApPOMtKdxWfdPzNZafNui87ajxqauMk6B+SXPp92oXnvvzULXf8cNvzL95kmWZB%20iHqamZiSrEC/ksJiz3rEeOrYi/pwbGyTgGqq+XQ1APg7/Bi3ahwyRgb7GvblvdLbqtsQ9UfRV9Q3%20wK+cCYayljJUb6yGUMSAOfO4L/5OT3twwcGE3ahmxI38OlN/px+uPhf6wn3oi/SBy3ePzjNGJh/5%20v+dzUTLEvfH85/4gAi6z/3FLAwHLiTHpIpwRHYtZ8To4hYY0s5CmpjYAEq3JON6M9qLR7UOR4chn%20KRgYYlYGr/V14j+drWhPJaAwDgmJi8sbMDNY/I4jYaa07V6llPBrGlTGB1z6rnQSnDE4FfvRHrdM%20pIQFXdXgUlT4NH1Ym8Dk30wAKA4HGOdtqsf1urum8paxX/ncc4yxKDD81paSoBcAufR7y8qXby5u%20rJ/e2bLrknQyWRCinmEWTo01IsHS+JdnMxLHepnLMAsGuMXhb/cjvD9sR62lB2vYOcFW02r+syc9%20SXDBUbatDPvr9iPmiwEAPD0eVG+shqVZaK9ox54xe/IRfM5e9XDnImNk7DWngqFqcxX21+6Hq9+F%20yjcrkXKl0F7Zjmgg+t6jZO/zvL7fjnaZbVizmIBXOBAx3Sgz/ZierMTJsQbUp8OwmD2GFh/ls+Jv%20vSxORcVUfxgnh0rzG88YGOJWBo/sb8HLPe0IajpKDFd+Vnx3IoqJ3tBho3QG2/Y1ZpmQAHyqPqB5%20zYJEj5lGpcONMsMFCSBmmYhbJurdXiiMDe+oXEpIO6UOALvcNZVvlJ5y4u/CUyY+AwC4/NKC9Vgn%20QR8m5Ja4PHfP/d8WQpx4YMvW+kL57CmWwceiYyEBLPNsOra+7yZwLAdac6lrJhkEFwi0B1C/rh6u%20fhcEF+gu7oZUZD5Sz0XSgJ3aLt5djMotlVAzKrrKuxBDDNziKN1ZaqeyQ93YPXa37bGeefevFRcc%20PZEeRPZE8s1xof0hSEWiL9iHA1UH0FbbNmRz4YdPqNgi7RY6ii0vGlMRNKdKMSFVhmnJSjAJpEeR%204QvL3rzyiI8Hmj0BlBhO9GbSiJkZuBQVnAGPH9iNNb2dGOP2YWawBCrjeKZzH3YnoohaJtLSggvK%20YX9pWliImvbCFLeigjOWj+bTQmBmoBiTfSGUO+ztZ7FshO5V9LxH+7DTcSHBOIPm95qM85Xeupod%20wcnND5ScNGMpAOxavIxVzzlLAiAhJ0H/cJz3q6sBACdf/sXO5bf+/uvx7p4H+toOhLmiDPvPbjtx%20SZwRGwtVcjzsf2PIt2QdohBD//dzW6DVjAotrdnJ4qxoM8mQcWTQ4e1AR2VHvkHM1A9uEnvr49tS%20LDtNnv13Lnh+vWjSlXzbjnDJDj/jzSRDwptAa30rUq0p6CkdpmYiGoyiN9KL/mD/MRFzmRVxkwmU%20ZfxoTpVgarICjekiTElW2IYvEEiyDEbT6nGdK4iaGXCGtzShvV30ObNr46aU2Nzfjac798HFVZxb%20WgO/pmNDfw/W9HbAo2qYW1aPWpcXPZkU3oz1oiXeD4PzAaNob8u8CYG4ZcKtqtDesh3S4Armltnx%20hpAScctENLuz3K9p7/p7j8nzyRJgCoce8EEP+FY4wqGH6z930SO6x92SFXJUzzkLOTEnSNCPCrlR%20ttO/8/XlS//rv28yU+kb4j29jCt82H/2XMp0drwRGS6wyLsWqhziz82GVtAlkxCKgL/Tby8giTrz%20S0a6yrpwoOoA+kJ92Dpl64Bu9txLQE501Yx6UJQP04qspTQopmKvJmUHswCCC3DB4Yw5kXQl805s%20A6J0i6OrtAv9oX6oaXtnecqVyv9sKF/6TGZlo3EDp8TrMCFZiuZUKaozAUQsD1TJkWECCTb6UuqM%20MTzTuQ9bY30Y7wlgZrBk4NYxACpj0LmC7kwKXekUApoOgOGN/i5sjvZiVqgkG53bv0sCaHB7Ue30%20IGmZMKXdlyCkhEfVoHPlHb9G8azla63LA4+iDbgtVcbyn42BISlM9GRScHAFRboTChsezytpWeCa%20BldlmZQZ83+4oT9d9ckz14WnTNiKK74A4GCNnCBBP+rMmDcXq+YvBGPMinV03Lzs5jumSiHmJaNR%20FMqMOoPEqbEGWBD4p+91uIQ+IiN0ySX0hI7y7eXwt/vhiGfNWbJ169b61rxohvaHEGgPoC/Uhz1j%209kAq8qDAS+THxZhkMHUzL/ZqSn1bZJbrWjc1E4H2AMq3l6O7uBtJVxKmakIxFdul7S0jaGkjnXeI%20G+q1pCluQpEcU5MVmB1rwPhUGYpMD0KWC4ZUYTGRNYYZHZ3q9hw2z+4ZF+CMYWc8iuXtexGzTHvt%206CFlIwZA5RzbYn14secAOtNJJC0LX60eB55Nj6uMwcEVGFxBWyqBjnQSlhQY7w3m/dHTwkJPJg2d%20KyjWnXBw5fDjbRL5kbNalwdBzfEuNXH73yf5QpgZLEGDy3eMe2js+jhjDJ76GhjBwB1SinuLTzhu%20S+S4yVH8FAOEnMScBH2QRf0iLLvpVrgjkcxrjyz+Rao/OiGTSk0SZmF09EoAiuSYHWtAL0/gac+b%20cApt6D7AEAR3ktnjYDWbahBqDUHNqIj6o4j74rBUC6Zuoi/UByYZjISB0P4Q3L1uJF0Hx9DSjvTb%20ovZc1J37t1wEbeomTM1O0QfaA5jw4gRILuGIOuDqd6GnuMf+0x0Z7By/Ex3lHUg70gMi8KEsgeQ2%20mjEAxaYXn+gdjxPiNSgzffAJA4bQ7OxGNvU+muCMoTuTwr/a9yKsG5gVLIVHVbEh2o2olUFANTAl%20a5MK2KtITQgsa9uN1b0d6DXTMKVAseFEQNPRlUmh38yAwW6OcyoKtsR68///oGpASjsDkBYCexIx%20hHQDId14R+EVkIjoBiK64z0b3PJNeb4wVMaPqR+7tAQUhw5nafF23e+/XkI8W3LyCftDE5v7AeR3%20kANUIydBH0LO+uGVAICp58/Z/PqjT1736oML70hmMkWFEKXnMKSKs6PN6FWSWOPYMzwsYo8STDIU%207S5CoC0ANaNi26Rt6KzoHCDGOU9zyWyrVMkk1Iw6YGHKkWIpFrpKu1C0x94n7u3y5q1VW+tb0Vna%20mY/C9zTuOepGLkf8OSFhMgte4cBpsVqc0z8BY9JFMKQKTSr5h73FRs8ilEPt7zkY9iZiuHf3ZvRk%200ji7uAoa5xBSosbpwanhcpwQKEJIMyCyC0BMKbCkfTde6G5D2hLwqhoCmhOnRsrtcyklEpb9UqQz%20nk/Jm4dsRFMYQ0KYeL57P6JWBtMDYdQ4Pe8q1Lnx0yPpVudg+Ua4Ib/zshE51zR462v3BCeNuzbe%20uv+houOn94cmNw+YIS/0HeQk6AVMrp4+5dxPLFj557+ftH7Jv76ZSST1QvobvMLA3L6pEJBY69gH%20bSgsYgc5kSGZhJ7S4en1QEtr6Av1oaus650tWvHePcvc4tDSmh2FHyZuEorAzuadUCwF3m4vUo4U%20+sJ9aKtus6P+w9TmhzwrA4aZ8VqcGRuHj8TrDts/Mdo6jjhj6MmkIaRAUDMABmSkQJ+ZhpASXlWF%20nt3/3ewJoM7lw+reDgQ0HVo2Jb+yuw0vdB2Awjjmltdiuj8MJRsJC2mvMu0z03AqKlyKCilz49X2%206Nr2WB+klFjf342XuttR4/Rghr8YBleG71rSI73vhIARCsBZUvSsv6nh94GJzU96ayp7cz8faTvI%20SdALmNxs+oq77sNJX7jke3/+yrecZir9VSmEUjBfOABBy4m5fVMgILHRsR/KUDTKCQxqd7SaVu19%204lzA3e9G8EAQPUU9tqizg8tVIG0xlly+XagZYGnWgH3lTDKYqpmP3lXz4NcmY2SwacYmyOyDGhLH%20bpIgK+BccpSaPnwiOh6f6G9GyHLBzNbDRzsa53iodQdWdrWh2RvEl6ua7GmQrKXqoZ3gGuN4umMf%20lnfuhSUkTgoWgzGG1kQcL/W0I2Zl8LmKRswIFL3tzJpZQQ/rDjgVFRISTkUBB4PCGJ7t3I8VnfvB%20AJQ5nJhTUo0alwcZUcBZEsYsxWGIQPOYTaEpE64oPvG4lbkfHdrkNtJ2kJOgjwBy61Y/f8/tN8z/%209g/P7NmztwEFlHoXkCg2vZgTHY84T2O31jP4TTMCwCC+9ghV5KNpAYH6N+rBJIOlWoj74jhQeQDd%20pd32DnBuu8NJSBhJY4AIm6oJ3RqYdMkdb2nW29eUCnZMnPhyzm2aVOCSGtzCwEnxOnw01ojpycps%20ql2Mmqa293zYMY4N/d14o7cz++6WS59L9Gbr3S5FhZOrkFnxf7GnDWkh4OAKHFxB3DKxPd6Hlng/%20xnkC2UY5e/nKodclIWzjBY1x6JzDlAJj3H4ENAPt6QRUxqFxhlLDhY8XV6HB5R3+Dm6HF3FwVc2o%20LmeHu7by8ci0SY8Wzzz+MWCgLSvVxknQhz17124AY2zXM3f84ZRkf/+2RG+fs5Dq6RlmoT4dwYV9%20UzDfvxr71T7wwRQma/AEnUmGhCuBjooOOOIOaCntoNgKBnePG/U99WjvbseW47YMTIe/RaFzY2pc%208LzQW6pdL4/5Y+gq6TqG2RUJwSS4ZPAIA6WmD03pYpweHYNpyaqs/aqJ5Ci2X2Ww0+pCSmSkzG8X%200znQm+0mdykqPhapgJWt9aaEfb4MrkDn3D7TUsIUtugHNQMSQFJYaE3GoTCGsG7ArWp5MedgsLLW%20uL2ZNFj29zmza0+DmoG55XV4rbcTGucoM1yY5g/nF64UTIZPSCiGBilkt+Zxd/rHNi4dc9m83zHG%20dmSFnFXPOUtSSp0EvaComDQei666Dh/95ldbX/zrP65/49Enfmqm065CEvUUM9GYjuCs2Fg85l2H%20Hp4cPEm3MKhucVxwdJZ3IuVKwdPtgTPmtNPwCR3ufjcgAFe/C0bCgKVa+fnww819Z4wMUs6UvcJU%204eiL9KGnuAdMsiE3fZGQsJiECQsB4UJVOoC6dBjNqVJ8LNqEgHDmO9jjPD2qv5MKY4hbJvYmY+jO%20pNGbsc+HHU27Md4bhENREdEdCGi6nW7PCjWyTWR2IxnLWqzar3uOrJFUWlhoT9vfEQdXoWVnu1XG%200ZlJQkjAr2qIZ6dfVMahZ48xpUClw41ap9fO+hSckAsohgHV7exX3e5XpGX9ZfJPvrNCNYxt+PIl%20h/qrU22HBL0wOe9XV2PFXfdh5qUXX//E9TeV7V27/puZZEqyAlL1DLMwM14LAYmHfW8gztKDk0Ie%20imeXBPqD/egN9QLcjtCd/U5MWDnBjtrZQeOXXE1cS2r5lwzJJPY17EPaSCMajNr192xdXBnCNolc%2013mamfBaDjSmQxiTLsLYVDGmZN3bOBhSzESKlqHkxXNnoh8v97RjXX8X+s0MMkKg3OFCo9sHBpbt%20Mpd4uecAmtx+jPcEIaRAzLLPoTvbxMYAu0ku+7u9iu00mJESvWY6a7kqwJntJLcrEcWS9t04OVgK%20v6qh20xBAojoBryalts3AktKWLKASiC5+XFFgREM7NEDvjXextqH6+ae+xfGmIlf/DB/KKXVSdBH%20BLOvuAxSSnRsa/lNtKOzomvn7vNlgXWqppmJGdm1lwt9ryPNzKMv6kMg6LmmNw4OadlWr1raNn2R%20XCLqjyJjZKAndXCLQygCvUW9+S50yST2NO4Bg52qH+oGN9vIxYQuVdSlw5iSLMfEVBmq0yE0ZUfN%20TAgS8bfgVFQ829WKlV1taElE7b3z2be0aqcXVU4POGNY29+FpQd2o9/MYKwnkD/nMdMEY3YjnMI4%20wICUsPLpJJ+m5aPqpGVlXx6ieK5rP4SU2BjtwZZoL84tqYEEENYcOLuoClP8IXgUrfAaEqW0U+sO%20A86Som2M8weMUOCZhi98+jXN5eoCaHUpCfoIJhuQ737hT3/7uaJqn2zduElTNK1wvr/Z/z4hUQNN%20KnjA/yrMrAnJUWOQAxMmGIyUAQBQTAVaSoOrz4WiPUVQTRUJdwL76/bb0Tm3I/HW+lYk3UnbvjWL%20YilDfu5tD3V7Vvys/nGYkCrDhFQpSjM++IUjv/EsSUJ+2Mh8c7QHy9v3oSuTREgzcEKwCKWGCyrj%20iOgOqMx+PW1LJiCkhMZ5fqOZXUO3r7/GObTssf1mBiKrww5uj57Zq0mVfOr9mc5WJC0LGSlwcrg0%20X2uf7Avl6/GFNIYmhZAQgml+HxxF4T1GOHin7vM9XveZc9czxjL42hcP9Vinm48EfWSSm08/6Yuf%20Xb/khps/6y0u+mO0o9NXCEtc3irqU5MVsJjA/YGXj+6M+iA+1ySTUE0VZdvLEOgIQEKCCw41o0JN%20q+gP9qNlYgsSngSYsDeu9YX7BmxhG2osJpBiFlTJMDvWiBMTNZiULEfQcsEjDOhSgcUkdam/20tc%20NsJe3rEXvWYKLkXDl6qaUGw4YfBDTHOkhM5tI5fsOLg9g57dddBn2laGLkU9ZJe4lY3yJQKaDgEJ%20n6qh2RPA0x37YHAFMTODWpcXH42UYaw7kP9M7uzvKBgxl1IK02Su8lLmqij9d7K98xeuspK2xi98%20poUxlsLFtIOcBH0UMWPeXKy46z4wxkQqGl/67N33Prj79bWXJ3p6JeO84HZTTU1WQPbMwB+DLx49%203/fBDi4ZoKXtqDxXJ4/6o9jZvBOdpZ2HHzkbYiHPLUORAManSnB2/3jMTNTCIww4ss5tuUYscxQ5%20t31QFMaxrr8L+1MJmELitEgJKh3u/Gz5W8U/JSwIaZ9fd3a5iZBAwrLH1rhdbAEDQ28mBZE1hAnr%20Drs5jis4OVwKl6rBFAJjPH6UGS44FQUKDu4mL5iYXEpIS8AIB5m3oWa1YhjfMYpC65q/9iXbCOaL%20F5O/Ogn66CQ3m254XP173lj3k44dLZ50LDZPWIX3YFYkx+RkBT7RPx5LPZvgOBoWsTljmUF42jHJ%20IBSBrtIupJwpZIwMuku6kXakDxrKHENyKXOfcOC0/gk4JzoedekQVKkMGBUk85f3K+gMbakEUsIC%20Y0DCMqEwnn8pklnxZgBilpk3bnEcsilRQiKV/XenouY72hPCytfhD7WKDWsOfCxcbv87YwN+VmgY%204WA6OKn53uCk5pu2//2fu8Z/+6uWq7RYAgdr5CTkJOijmlXzH0Ll5Ikd65c+/fD6JcvO6tjeEmKc%20F96XXSo4MzYWcZ7GC64dHz79PsiZY8EFOss60VneOSyervbwE4MqOU5M1OKM6Fh8JF4HDkbCfRTP%20cb+ZgSkEVMbxYvcBrOntQKXDjUqnB82eAGpdXkACKWHac+cAnPxgf4uQQDLru65ylq+3J7Kd74wx%20hDTHAPMYzgp0Ibz9uYXmcaWDkycsrL/kgmsUVd0G2Cl1V2lx/lBKrZOgEzi4bnXCx09/8Mlf/9YR%206+y6NdkfDRTa3yEBuIWOT/aPR4Jl8IZj34cznhFD+MGPyfmy7V81qUDNriWdnqzCBX1ToEsFJkR+%20JSlx9DIfQU2HxjlSQmTT6gJbY33YEuvDis5WnFlUgbOLqtBjWnlBD2h6/k62sj7uWnZmXGU8X3dv%20dPsxwRuET9OOaCHKsNVxhQNSJr0NdQl3Rekv6uddcBsA4PO0spQEnTgCUb8Ii666jn3ipz/486Kr%20rj25fduOr2aSqcJ8YFouXNg/GYJJrDdagQ860CYw4jaBiGxy15AqvMKBYtOLWfE6zI43oiEdya4i%20pVnxwcIUEsf5i7A93o+diSgywn5hMqWEyhhMKbAnEUdSWEiLgy9Th3a1JIXd06Bzbju/QSIjBM4s%20qkBYs2vnpizMfgamKoCUba7Kslh4ysQ/VJ1zxo0ArSwdqTA6BUMQuUnpXPDdHy/u2rXndFmgb/ma%20VNCq9WKB73Vs1ds/+N1WCYAX+PXMeqRrUkGJ6UWR5cHYVAlmxeswJVkBh1CRYtaoWkd6LOFZL/V1%200W7sS8SREhZ2J6LYlYhCAJjgDeKzFY3Yn4rjH3u3oS2dwAmBYswtq4MEsCXai7/ufRNNbj9mh0tR%207/LBkrIwSyP2knVwTYXqdrXqft/z/uYxd9Wef85TdKdQhE58SFbNfwiMsUT79pYrn/z1bx+PtndU%20F2I9PcMsVGQCuKBvEh7wv4o9Ws8Hi9MLNELPiTgA+C0nJqbKUJkJ4KR4HZpTJYhYbiSZCZMJxHmG%20bvyhzJJkd5RP9YYx3RcBA9CVSeGaLa+Cg8GnavCpGnbELViwvd2d/OCjz62oOL+0FtN8YRhcQSYb%20jReSmEthd5waoQCkab7qKIlsDE+b/EDFGbOfzB2TW1tKkKATH5BsPZ0V1deuW3LjLV9TVPWJ3tb9%20KERRTzETtZkwzuufhL/7V6NLib1/UTezd10BPCtzI2YZZsFnOTAuVYLpySpUZ4I4MV6DkOW2t3Ux%20gX6eopv9GF+rjBSAtI1m2lIJcABeVbOb4mCPrCUsE05FRbnDCcBOGtW4PKh3e5ERIi/mhSPkEhAC%20jtIiqE7H85rf+7AzHF5aN+/8rYyxJHDI/DiJ+YiHUu5DxKKrrmPn/epq+dQtd9y489U1P0pHYxKs%20MFtlValgk6MN9wVeRIJljlzUGYBiAM7hLegCEiluQpMKmlMlOC5RhXGpUlRk/KjNhGBIFRlmUXPb%20MIAzBpXx7EQBYEFifV83Hj+wC62pOMa6A/hydRN0pmBDtBstiX5UGG40un3QuVKwf7cUAlxRoAX9%20vUYw8AY39PtLZs14rui4qZtzxxy6g5wgQScGgf2btzjeeGzJgi3PPDunkKxh3y7qHOscrfhT4GWk%20mHlk3e8MQBiAZ3gKeoqZsJhAienFabEmzIzXoiLjR8TywC1spzDBSMaHk5gfSCWwvr8bCcuEKSXa%20UnF0plPoSCdR6nDhkooGVDk8MKVAWggwZq80zc2nF6KQM0WBIxLKuCvL/yQh/xIY27i77KOzWgDy%20VydBJ4aMnD3syw8sqNi7dv2qvWvXlxWyqAPAVr0ddwdXwmTWe0fqDEAIgHf4CLrJBDLMgiI5PtU/%20EVOS5ZiarIRb6HALI+uDI0nEh+NLZdYlbnHbLvSa9v7xtBCwpESD24sLSutQ5nANGDdjKMw2DmlZ%204IYORzjUpbpdtwWaxyxzV1euDU+ZEKU7gSBBP2aivhAz5l2ExdfeODHe1bO2fdt2yVW1YK+DhMQ2%20vRO3h1dAke8RpzMAfgCBY/tUPbTBbUaiBmdEm3BCohZuoUGVChRwkvACQOMcL3S14fEDu5CwTAgJ%20FBsOnBwqxYxAEVTGC/+PzHat+8c1Ck915ZUbbvvj3WMuvwSNn5ubYcy2P6TUOkGCfsy/p1J/4d6/%20fmPLf569JdHXX6jldAB2zXmdoxX3BV8Ck+8Rp3sBRDB0JjMDhNy+4asyQZzTPx4fizUhZLlIugsU%20hTHsiPdjdW8HvKqGSocHY9y+wnVxO4yYO8tKnovMmLqk+pNnXr/v6edY+ekn52986GVwAAAYkElE%20QVRXEnKCBH0YsHftBlRMGo9tL7wU2fjUM7/ftfq1T7MCfwiZTOAZ91Y85l0L9d0sYt2wG+OGYjc6%20AAUMiuTQpYKZiTrM6Z+AyclycMlgUT18RDzAOGNZ33YUfmaFManomvA21K2qOPu0qwNNDU8BVBsn%20SNCHNbnU+2uLnpi4/YWX5u/ftHlCIY6yHbyRGFLMxJOeDXjGvTW7r+owOACUDY6g24suJVRwGFKF%20U2iYlCzHrHgdzoiOgwYFGZDhCzG8onBwDq6qgutap7uybFPJyTNvLpox9RE6OQQJegGx4q77MPuK%20yzD/Wz84KdHX/49UNFolC9gvWgFHD0/gUe86rHbuznubD8AAUH50Bd2CgGSAS2gIWi40pYsxJVmB%20s/ubEbRc+VlyisaJYSXkjEF1OaEYxg7f2Ppna877xM+NYGBn7hBKqRMk6AX53Zb6E9ff9IPW9Zt+%20mkkm3YX8t6iSo1tJ4FHfWqxx7IWAHHiTqQCqPrygWxCwmIQmOaoyQZSaPkxMleHEeC3GpCNwCA0p%20btKsODG8vutCgKsqNK+nHwyveGqrtpWfMfs2f2P9WoBS6wQJekGTq6cDwKKfXfuPA9u2f8ZMpQv6%20b9Kkgi4ljgf9a7DeaB0YpasAKj7Y77UXndjjcVWZAMamitGQLsLkZDma0sUIWS6ksvar1KVODKdo%20XEoJrqrQA76E6nYvd1dVLGr8/NyFjLHurJCz6jln0U1LkKAXOouuug7n/epqbPnPC80v/W3+PdH2%20jpko8BUmmlTQpvbjId9r2GwcOPgDBXbK/Qj/upz9qoCEVzgwPVGJCakyjE0VY0y6CMWmF5nsIhSK%20xonhJuTCsqD7fdD93j1mNH6vp7523bgrPv8fxtgBgNLqBAn6iGTFXfex2VdcJl9b9PjH33j0ySdi%20XV0FP0Rrb2jrw13B59GhxGw3OQVAKQAN7zqLbjKBNDOhSxUTk2WYFa/H2FQxqjJBFFluqFIhESeG%20b0QuJBSXA+6K0j7F5bxJ93mfGPOFi1fTySFI0EfVs0CyZ+64e97W51Y+UOipdwDgYNin9eIPwZXo%204nFwhdlja8bbBV1mU+omE5iY7U6fGa9FULgQsJxwCA2SSRJxYvgKuZRQXU44S4ufV52OW7Wg//Ux%20n/9MC2MsDQzcQ04QJOgjmEPr6f++/a6XNvzr6RO4ooyAm4xht9aNO0LPIqma4BE2YEGLxQTSsBAQ%20TpwZHYuPR5tRkQnAkCoMqebFniCGpY4LIQEw1eGAr6lhjb+58Zr2l1c/M+XHV8YYs2ckqdmNIEEf%20heT83qWU/JGf/GJl68bNJxTyfPqh7NF6cEfkWaQiJuC2N2NxyXBCogZnRsdiZqIWhlShSE43AlEA%20Sm57rHvqqqDo+j0lp5z4aMfqtUubv/4lMy/ktIOcIEEnAGD3mjdOf+FPf13e2bILI0XUdxrduKd+%20JSqcfnyqdyJOjtcjaLlgMVqBQhSQlkspnMUR7m8e87C/se7/FJ0wvQOgJjeCBJ04DLn0+7N333fW%20myueX5qMxsBGgEc1ZwxhjxsV7gAUwWGS4QtRME9LBq6qad3v3eUb17gkNGn87eEpE7YAlFInSNCJ%20I+CNx5aoe15fe83u116/yjKtghd1xhiKXB5UeAOwJFmwEsM6DLdfQnUd0rLajXCwMzRlwt9rL5pz%20K2Osl4ScGHYBE52C4cvTt92JyZ8621RU9aZQddUTqqblHzKF/JDMWBZdXGJ436ZCQHE5ofm8+1zl%20Jf9ylEQun37tj06rm/upaxljvT2btwIAiTlBETpx5ORMZ5bcePO4rl17lve2tpYX+mXzO5yoD0Qo%20QieG3cumlBKKrluqx73biIRWRY6b9ED5aafkF6VQjZwgQSeOCv/63W2f27t2w+/j3T2+Qm6S8+gG%20msLFMAUJOjEconEJMEDzuKH7fasALAhNmbC65ryzl9PZIUjQiaPKIaNs2hO/uunG1o2bv5uOxVgh%20iroE4NZ0jAkVU1c7cWzvRUsADDCCARjh4Brd77vPP75pWdkpMzfnjqEaOUGCTgyCqNv70zu273Cs%20uPtPyzpbdp1iJpNAgTXJSQAuTUdjqIhuPuIYReRCSiGYt64aRih4f3zf/jsjx0/trD7349ty8+OU%20WicKEZVOQWEwY95FWHbTrYjU1yVXL1z0fxO9fYv6D7RXygJLWzMAUkpYwoLGFYrRiaEUckhLwFNb%20ydyV5Q9m+qPXRGZM3V90/NSe3DE5IScxJyhCJ4aMNY8s/uqqBxbcYmUyBbc/3VBV1AbCcCgapd2J%20wRdyKcEVDldleUdwwtgbzERyvhH0d1d+/PQEQGl1ggSdOEbk6ukA8MJ9f/vz2seXfFZYVkEZvuuK%20ippACC5Nh5Qk6MQgPuA4g6Mo0h2eNum20tNn3W74fJ1SyhFh0kQQJOgjhBV33YfZV1yGxb+8oXXP%206+tKC0kYNUVBtS8Ij+EgQScGQcQ5mKKkfWMb9rnLSr5Re9GcJ3M/o9o4QYJODFuklA0PfON7z/Xu%20ay0tlK53lSuo9AUQcDghSNCJo/UwU1UTQnT6xjZEi46fenXJrBP+DgBv3v8PNuaLF9ONRox4yCmu%20gNm7dgMYY9tCVRWznX5/wUS7EhKmILc44kO/zQIAFEMXesC3y1tf/eemyy89feKV/6exZNYJf9+1%20eBkDABJzgiJ0oiDIOck9+4f7b9iw7KnvWRlTH+71QYVxlHp9KHJ5KEIn3r+OCwGuaVCdjiRTlI2u%20yrKXqj511h98tdWrAVpZSpCgEyOAR6/59V/2b9pyqZlKSTaMVT23oKXc6ydBJ45QxQEpBRjncBSF%20oTgdT+p+36Limcf/O3Lc5C25w6hGToxmaA59pDzvpGQbli6/vnfvvtJYJnPGcE6/SykhpASzp9Lp%204hHvfr9YFhRDhx4M79O8njV60De/+lMff8pVWrL/rUJOYk6QoBMFTbaWLgFs+tdvb7+xa8+e0zu2%207eBcHZ6XVwK0mIV4r5c+CQnGNQXuqop2R1HoLpExHys55cTW8OQJu4GB8+Mk5ARBKfcRQ66WLqVU%20Fv/yxss7drTcnOjpdQ3HzncpJQJOF+oCYUq5E2+9OSAsC0YwAKYoL/kaax9RHI7HGz530VbGGBnB%20EAQJ+uggN5tuZczI4mtvvPfAlq2fyqRSw85EQ0oJv8OJ2kCYLhpx8L4QAprHDd+Yuu2a1/utjlWv%20Pdf8ncvT/obaFED1cYIgQR+l7HrtjbIV/3vPX6MdXacPN793KSW8hgO1gTA4OXYRUoIpXHjra5cF%20xjfdX3XOGfO7N2xmwfFj8+kbEnOCeG+ohj4CWTX/IVRPndy6funyR9YsXHR834F237CK0rMfRUgJ%20hTFqixvFUq66nFZwYvMTdRef+1PN7V4P2Cn1Q8UcoBo5QVCEPqpFfSGbMe8iufQ3t/x4z+vrrkkn%20Eo5h8xQH4NI0VPtDtKBl1EXiCsBYWvO6Y9762hfq5p3/c8PnXU1ROEGQoBPv+QyV4cW/vGFB6/pN%20p1mmOawEvcoXhFPVSdBHg5CrCriqpo1IaH9w4ri/1V7wyZ/mfkxCThBHB0q5j2Cy42ydUsrz/v6N%20763oad0/dbik3i0hYQoJGkUf2ULONQ2Kw2hTXM5t/nGNzzVccuH1jLE+4GC3Ook5QVCEThwBuXWr%20qxc+esLaxU8+Ge3sCnHl2G5blQB0RUGlNwCfw0kb10aShmcbMBVdh+b3tWse99OBieMeqp5z5j8Z%20Y+JQIScIggSdeJ88fdud7PTvfE0+8aubPt21a/eDfW0HJOP8mF57lXNU+AIIOlw0iz4ihFxKKSzm%20LI6AqeqrViz+z/CMaZvqLz5vCWMsDlBqnSBI0ImjQs54Zulv/vuOlpdf+YYQQh7L688ZQ7nXjwgt%20aClsIZcSsASMSBBGOLiO6/qdnqqKFbUXfnJt7hgScoIgQScGgdcXPR7a/dobD7WsWn2aomnH9MYr%209fpR4vaSoBeokDMAmt8HIxT4O9f1B/3jGjZUn3PmFgB48/5/YMwXL6YTRRBDCDXFjSJWzX8IU877%20ZNezd9/37dJxTf/Zv2lL+FiJushFd0RhCbkQYIxB93nha6p/1FlS9NtkR9drY7/82f7cMVQjJwiK%200IkhZPEvbjirv6Nzadeu3ZIrypDfB0JKlHp8qPD6YZGwF0REDinha6oHZ/y6ktkzn9r39PMrJ/+/%20b5rZxUC0h5wgjjGcTsHoYtlNtwIApn/6/Oc8kdANTp+PHatI2RSCxLwQxNyy4K2vRtUnz/zN5B98%20k3Fd/7mntnrFlB99K8MYkz2btwIAiTlBUIRODDW5UbaWV9bUvrrg4bsPbH7zTAzxfLqQEhGXB5W+%20AF2QYflkYFB0zXIUhdcEJjYvrznv7J8xxixKpxPE8IVq6KOQGfPmYtX8hag9flrLa4ue+HUmkazv%202rmrYahXrVpCwBICCqdE0bEPw+3Xe6YqYIx1u8pKdxR/ZMatpaee9Jd8Sp3EnCAoQieGJyvuuo/N%20vuIy+Y/v/OjcWFfXval4PIwhSoHnVqhW+ALQuUJmccdUzCVUtwtMVXYaweAqIxL8/djLL30xt3+c%20xs4IggSdKJjnuXQ8evWvftW6cfO3pRD6UAm613Cg0heAoagk6EN/zW0hdzpiqsu1z1lR+mLZqSf9%20b2jS+JW5Y0jICaKwoJT7KCfr954E8IMF3//ZjM6WnbOHan+6kBLUEzfEQi4EGOcwgoEM17VnFE19%20pPzMU9cVzzx+BQDsWryMVc85SwK0spQgKEInCo6ci9zG5Sumv/y3+X+KdXVPZIO8xUVCwqHaG9fc%20mkEb1wZbyC0LXNOgB/3Q/b6letD/YP1nL1yqu917s0JO9XGCIEEnRgK5evqrCx6Zu/aJpQvi3T0Y%20TE2XAAxFRZU/CI9ukMnMIAu5u6ZCKLrxG5HJLC0/49TtkemTdueOodQ6QZCgEyNRAKRUn7rlf760%2048VVf7Ayg7c/XQLQOEeVPwifQRvXjvr5zZZNvA21cBaFb7LS6bvrPn3uPkc4FCchJ4iRCc0LEXmy%209XTzjO9+6576k07caJmDJ+gM9k50S5CQH20h55qKwISxm2suOGceV5XS0LRJ1zR/7UtbHeFQfNfi%20ZfljScwJggSdGKFUTBqPVfMfAmMMUsgZZeOa1gvLohNTEEIuwVUV/qaGHTUXzfm8r752WvFHZiyY%209P1vtEWmTUrkhJzq5AQxcqGUO3FY+ts72e41r1/w+qLFC7v37MNgmM5YUqDaF0KRm1aofhgt1wN+%205q2v/rezKHJ5zQXnbKdTQhCjExpbIw6LtygsAfxz2U23Xpro7ftrMhobhCY5BgFB9fP3fdoYGGdp%20ruuxwISmLUUzpn0zPGXiqwCtLSUIitAJ4i3k/N63rVxVsuPFl+e/ueL5j0JKHE3PdyElyjx+FHu8%20dCO+awyefeHhHIqup1SXc7erquzh5q9fdhNjrB0YOD9OEAQJOkG8RdQXYsa8i7D4lzeWRjs6H+pt%203T9LmOZRE3UhJUrcXpR6fGCMbsXDCbmUEqrLCQAHVLer1ddYt2TMl+bdwRjbDdDKUoIgSNCJIyRn%20OrPkxt+d2r6tZWG0ozN8NCP0iMuNMq8fCqP+zLcKueJwQPO6e/WA72nV5Zrf/I3LXmKM7QRo5Iwg%20CBJ04kPw2DW//r9tW7b+Op1IOI9GRC2kRMjpQrk3AJU2rh0i5AY0j3uHHvSv9NRWPVw399yHGWM0%20bkAQBAk68eHI1dOllI6FP7jqns6duz4rTJN92NS7lBI+hxOVvgA0roxqIQcAbuhwV5RtVj3uexiw%20ovFLF2/W3O5egKxZCYIgQSeOEk/fdidO/87X8MJ9f/O0btj4WseOnQ0fdkZdSgm3bqDKH4RjFG5c%20k0JICMH0YABSiofCUyc+zxT18fp55+9gjJkk5ARBkKATg0Kunv7Kg/88ZeNTzzwR7ej0fJh1aVJK%20ODUd1f4gnKo2qgRdZEy4KkrhqalckjzQ8RMzkdw5/Zf/L8YYSwNUIycIggSdGCJefeiRH7z8wIIb%20IeUHzpXnFrTUBEJwjQZBP9i13h1obnpaD/p/rTiM9TXnnp3KHUJCThDEB4U6kYj3xar5DwEAjpt7%20/m/HnDxzyYf9fZawIEaDnztjMCKhaPkZp9563PU/mTjuii/MdRZHVufEPGfNSmJOEARF6MSQsuym%20W3HWD6/EY9f8Or779bUfuOudgaEuGIZXN0ZchJ61y00ZkVDM39TwcMPnLvplbn6cInGCIEjQiWFF%20tLNr0qNX/+qVnr379A/i9y6kREOoCD7dATkSJF1KcE0DgKinvrorPH3y9eUfnXV37sck5ARBDBaU%20cic+MHvXboAnHFrbeMpHrjS8ng/kyS6zdWUUsphn/27F0MENY6ezonR15Zwzfjbpe1+vKf/orLtp%20ZSlBEBShEwXDU7f8/vY3//Ps1yWgvJ/0uyUFagNhBB2uwtNxIcA4h2LoUD3uFkck/HRwUvOfKs6Y%20/SzdEQRBUIROFBQr7roPANC5bccPI3W1T6i6Dvk+Q3VLiIKKz6UQkELAURSG5nYt1/y+q8pOP+Xy%20id+94is5Md/12DK6OQiCoAidKDyklOzlBxYct+mpf/9PorfvxCPVdCElSj0+FLu94MN8QYsUApAS%20zrISaB73U4rL8YDmcv+76cuXtOSOoRo5QRDHCtqHTnxo9q7dAMaYBPDKv353+/+0b91+YvfefeDK%20kY2oi2G+D10KAa4qcEQifYrT8QfV436uZNYJrxUdP7UFANbdfCcmfu9rAKhGThAERehEgZNzkZNS%20qgu+/9Mf9+zd9zMzlXa8Vz1dSImwy41yjx/KcFrQIiWkkGCqAmdxJOmprb5bSnF/cMK4zcUnTo8B%20ZMtKEAQJOjFCWXHXfZh9xWVI9kUrFl9348LOll0nCtN8T0EPOl2oGEYb16QloDgNuKsrDuhe72+9%20DbXLNK9nU/GJ01N0lQmCIEEnRhUtr6yuXfG/9zwa7+6d9G719NyClppAaNhsXPM3j0n5x9R/s+qc%20M/7Y8s/HlZoLzrFymQaqkRMEMVyhGjpx1Fk1/yHUHj+95aW/LVi07smljelY3DnMP7JUnU7oAd/y%20opOOW1p51mm/BfIp9QEr5UjMCYKgCJ0YVay46z42+4rL5JIbb/7d7jVvXGmm04cNv+0FLQrqgxHo%20yhC+X9oRd0Yx9LSvse7lqjlnXeOtrXr2ECGni0gQBAk6QeQFW8qyR6++7vHWjVumSSEOK+gq42gM%20FcFQ1cH+MIBtBGNxXd/HdW1hzXlnzy+aMe0lulIEQZCgE8Q7sHftBlRMGo90MhFZcOWPX+rd31b/%20Tn7vTeFiOFRtsF4qwAAoTkev5nHv8zbWLa+/+LwbVadzb+4Yqo0TBFHokFMcMWhUTBqPVfMfgu5w%20dtTPmnm5KxBIiMNE6eYgOcXlrFkd4VCPEQk97Kmq+H7jFz/z6aYvzfu26nTuJY91giAoQieI98HT%20t92J07/zNTx2za+/0tmy6554T49knOfvPUsINIVL4Nb1oxKOSyEY1zQY4WBM83oedZaVLGq8dO4S%20xlgvAOxavIxVzzlL0pUhCIIEnSDeJznjmUVXXffn1o2bPi9tezgG2Ata6gIRBBwfohleSgjLgh7w%20wVlS1JLpi97mqijbMO6KL6xijHUBlFYnCIIEnSCOClJKvPKPf1bveX3tgr3rNpygZJvgLClQ4w8h%206HS//xtSSkghoLqccFdXdqtu1y8cRaEltRfO2cIY3d4EQYweaA6dGLq3R1tgdy258ZYfBspKH+tt%20bfNxVQEDQ0ZYdhf6kYqwBKQU0DxueBtq/80Y+y/F6Xij/uLz21WXMwPQ+BlBEKMLaoojhoxV8xcC%20AM7+8XdX+EpLvhcoL4WwxPuPyKWE4jQQnjbppbp5F5yR7Og+e+xXLl3adNkl+1SXM5NrdiMxJwiC%20BJ0gBoEZ8y7CoquuAwCc9MV5C1yh4L2GxwVIibRlvWenu7QsuGsqERjXeKenqsJgqjrTVV6yfPo1%20309zQ5O5HeQk5ARBjEaoyEgcg0j9IcyYNxctr6yZuPJPf/tj1549JwQcLlT7Q2/fiZ51dHMUhXlg%20fNODZbNP+pqrvLSPziJBEAQJOjEsRH0hZsy7CM/dc/9F219cdSf6Y5HaQAgKOMAAxhm4ric0r2dL%20aOqEpTXnfuIurqnbAaqNEwRBkKATw4plN93KzvrhlXLZ727/bdfGzd8vYzocXg+sVHqPIxLaH5w8%20fn7thZ+8izEWBYC2F1ah5CMz6MQRBEGQoBPDESmlsfhH19xZzLVZ7vKS1enu3nun/fwHaxhj7QDN%20jxMEQRDEsGfv2g0AgCXX3ODb/8Kqkw/9Wc/mrXSCCIIgCKJQeOra/6KTQBAEQRAEQRAEQRAEQRAE%20QRAEQRAEQRAEQRDEUeH/A8+W3GJ3uomAAAAAAElFTkSuQmCC%22%20preserveAspectRatio=%22none%22%20height=%22304.688%22%20width=%22468.75%22%20image-rendering=%22optimizeQuality%22%20transform=%22translate(-117.054%20-177.161)%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "1a085eca-ba52-4b2b-8d3b-26dc7ce280f1",
              "type": "basic.info",
              "data": {
                "info": "Nivel 2: MATERIALES",
                "readonly": true
              },
              "position": {
                "x": 352,
                "y": 144
              },
              "size": {
                "width": 160,
                "height": 32
              }
            },
            {
              "id": "0e0d6f2c-7289-4434-95d4-8ab6551f5aca",
              "type": "basic.info",
              "data": {
                "info": "Cristal de silicio",
                "readonly": true
              },
              "position": {
                "x": 352,
                "y": 168
              },
              "size": {
                "width": 160,
                "height": 32
              }
            },
            {
              "id": "e533d5e8-0a8a-4296-b9ff-eaf838da67f2",
              "type": "basic.info",
              "data": {
                "info": "Los semiconductores se crean a partir de cristales\nde Silicio (Si) que se dopans con impurezas\npara darle las propiedades de semiconductores",
                "readonly": true
              },
              "position": {
                "x": 248,
                "y": 200
              },
              "size": {
                "width": 416,
                "height": 80
              }
            },
            {
              "id": "344e23ea-0e6d-4644-a062-1ba96dd6f1ac",
              "type": "basic.info",
              "data": {
                "info": "Pincha en los bloques para bajar de nivel",
                "readonly": true
              },
              "position": {
                "x": 256,
                "y": 448
              },
              "size": {
                "width": 352,
                "height": 32
              }
            },
            {
              "id": "47335ed5-3027-4950-99f3-63cb4cc32f6f",
              "type": "ef96701279598edd9cc030d373aa5c5b54328bb0",
              "position": {
                "x": 312,
                "y": 280
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "7ea75f45-3e07-4928-b339-ba448c9ad2a6",
              "type": "ef96701279598edd9cc030d373aa5c5b54328bb0",
              "position": {
                "x": 432,
                "y": 280
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "3de540e7-2117-4b85-9693-e857ff6569a5",
              "type": "ef96701279598edd9cc030d373aa5c5b54328bb0",
              "position": {
                "x": 312,
                "y": 360
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "2ea46bea-6a7a-466d-9463-ffbb0a33a6be",
              "type": "ef96701279598edd9cc030d373aa5c5b54328bb0",
              "position": {
                "x": 432,
                "y": 360
              },
              "size": {
                "width": 96,
                "height": 64
              }
            }
          ],
          "wires": []
        },
        "state": {
          "pan": {
            "x": -7,
            "y": -122.5
          },
          "zoom": 1
        }
      }
    },
    "ef96701279598edd9cc030d373aa5c5b54328bb0": {
      "package": {
        "name": "Cristal-si",
        "version": "0.1",
        "description": "Cristal de Siicio",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22400%22%20height=%22401%22%20viewBox=%220%200%20374.99998%20375.93749%22%3E%3Cimage%20y=%22291.76%22%20x=%22203.214%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAZAAAAGRCAYAAABL4+VpAAAABmJLR0QA/wD/AP+gvaeTAAAACXBI%20WXMAAA7EAAAOxAGVKw4bAAAAB3RJTUUH4QgOECU687r0UAAAABl0RVh0Q29tbWVudABDcmVhdGVk%20IHdpdGggR0lNUFeBDhcAACAASURBVHja7L15eBzVnTV8aunq7upVai2WrM22jHdjbAMG2xgcxyHE%20IQmBJOQlgQwJCWTmTQhZvmFYskBCJk8mzyQzCYEwycs6DMSehNVgwGCDWWMb8G7LlrVY1q7eu7b7%20/dG6pdulqpZky/KSOs9TT2tttbqq7rnnt5wfRwiBCxcuXLhwMVbw7lvgwoULFy5cAnHhwoULFy6B%20uHDhwoULl0BcuHDhwoVLIC5cuHDhwoVLIC5cuHDhwiUQFy5cuHDhEogLFy5cuHAJxIULFy5cuATi%20woULFy5cuATiwoULFy5cAnHhwoULFy6BuHDhwoULl0BcuHDhwoVLIC5cuHDhwoVLIC5cuHDhwiUQ%20Fy5cuHBxciG6b4GL8UQikYWidJPu7n1Q1Q5s374dgQAPjgMIAXI5HdOnnwOvN4ZIpBYlJbVcIBBw%203zgXLk5DcO5IWxfHD4K+vq7eBx64ukRVd4Hj+iFJHAQBEASA4/I/ZRiArgOqmj+yWYJkkmD+/GvR%200LASF198FQdw7tvpwoVLIC7OdCSTKl555SekpeV5ZLO74Pdr8Pk4eDwcRBHg+fwB5NUHIYCm5UlE%200wBFAXI5IJXSEI+rCAbnQhAm4ZOfvBtz5pzLAQQuobhw4RKIizNMcaxb9wfy/vvfQmmpgVBIgM8H%20SFL+EIQh8qDqgxIIVSGallchlESyWSCdBlIpDkeOpFBTczm+9rVfo6Ki3mUQFy5cAnFxJqCtrY38%209a+fh6q+h3CYRyAA+HyA1wuIYv6goSugOIE4kwgwMEDQ2anj05/+T6xY8WUuEJDcN9+FC5dAXJyu%202LXrJbJ27RqUlwORCA9ZBvx+wOPJKw+WPFj1wRKIrudJhIayKIHYkUg8Dhw9moWmTcVPfvIaysur%20XDXiwoVLIC5ON2za9DuyZcs/obLSi1AIBcrD48kfNO/BJs55vlB9UBKxUyGKkicQSiLJJJBIAH19%20QHe3B1dc8QesWXOlSyIuXLgE4uJ0wYsv/oy8//6PUFEhIBzOk4ffnycPSRoiD6v6YBWIYeQfqQKh%20JEIrsqyhrExmiETi8TyJtLXlMH/+/8UPfvBvLom4cOESiItTHR9++BRZv/4qVFYKiESGyIMmzan6%20EAQUVF5xliWeVSHWPAhVIaqaJ5BcLk8glEQSiTyJ9PYCzc1pzJnzTdx553+4JOLCxUmG20jowhHv%20v7+ePPPMFaiulsywld9fqD5o4pwqECuB0AZCOwKhioVVLdb9jPV3ampk7Nr1X1i7djG54orrXBJx%204cIlEBenItat+yxqaqSCsBVVHzRxbqc+RiIQXS/8OWu4i/4OJQ425JXvH+Hw6KPfwfTps8m8eee5%20JOLChUsgLk4lPP74N0gspiIUEs1qKzZpTst2ncJXxUJYPJ9/tP6cnVKxkgfNlWSzOfz4x1/EQw/t%20gM/ndU+YCxcnAa6ZoothePfdx8ihQ39CJJInD2u+g4auaPLcGsaiH7PVWXY/R8mH/gz9efbv0EdJ%20yr8Onw+QZSAcBjiuBXfe+TU3iefChUsgLk4VvPDCHYhGBcjyUK7DWnHFHpQIKHlYK7GoMmFzHtaf%20tyMfllRYEvH78yRSWipi+/b/xosvPuuSiAsXLoG4ONnYsOF+QkhTAXkUUxFs74dd9RUFSyZs4tyO%20VFhyYVUMJRGvdygfU1rqwS9+8U/uiXPhwiUQFycT2Wwamzb9ECUlvgLysOvzYJ12nUp3nYiEJRz2%20GIlIrIrE58sn91X1IO699z9cFeLChUsgLk4WdD17gyyrw0p0reW2LHHQrx3TxccPr9xin5MlGTtV%204vXmSaS83I8nn/wlMpmMexJduHAJxMXJwNq1P/09zyeGhaysCz1LInYVV6MlD0oYVhXDccOVjlWh%20UCKhJAIMQFGyq9yz6MKFSyAuTgLa2l6F18uZluyUJKzhJtbn6njAPo9dKIwlKLtQF5sbEYQ07rnn%20rhfds+jCxcTB7QNxAQBob28lnZ3vYvp0eVj4yKo0rB8fD4HYKRg7ZWKngHh+SInIsoA//vHf8LOf%20/dI9mS5OOggBstkkBIHHu+++RJqb38S+fZsgCJvQ0TF03ZeVzUY43ICysjm4+OJ/QFlZFcdxXkiS%20zyUQF6cPurr2w+/nC5SHU5f4iYDd89opkWJqpLKSx7vvbiWLF5/jdqe7OGl45JG7yMGD69HdvROS%20lITXS+DzcZBlHjwvY/r0oWvZMA7CMJpw5MhL+NOffgWAJ4TU4KyzPo6yshVYufKqU3oyp0sgLgAA%20hw+/AUmSCnb+E7lbG42np50KoiE2QQCCQQnvvLMJixef455QFxMGwwD27n2XvP32Wmzd+iAE4Sgi%20EQk1NYDXK5pVg2wOj167hHAghBt0XBAGrXo60Nb2B+za9Vu8885PyOc+9ztMmbL0lGQQl0BcAADi%208SMQRb5ggqDTQs8ex0sa7HPYGSmORCisEpEkHtu3v+WeTBcTip/+9ErS3r4ekYiB8nJAliXT9sfa%20R2XNJVrte6g7taIIiEb9yGYP4MknV6OvD+T66zdi2rRzTykicQnEBQCgre3wMDdc6yAop+NYw1p2%20ZFTscydCYct/Bwb63JPp4oQjnVbxzDO/Ic8+extKSnRUVYkIBmFa/1jJw+MZ3nDrNO6ZnZOTy+V7%20nYJB4MEHz0MksoLcfPNGjjtFaMQlEBf5C0HkoapDF7SVNJxIxM4UcazkUYygRqN86OccB7z//jb3%20ZLo4weSRxF13fZr09m7G5MkCwmHRdtSB07A1erCg9wA7K0dVh/zf8oeMePwdfPvbHPnGN7Zg1qwl%20J51GXAJxUUAadGKg1RHX6o5LHXXZx9GQCF3s2edj/7adG68d2bDfY59XFN3KdBcnDh0dh8ltty2H%2039+JSZMEhEIwlYcTeVCvOGv4yupEbTfyWVULHSHy+RQZTzxxCS688Fdk1apvnFQScQnEhbmgW8fN%200sOJPOjnFKMhESfLdvbmsf49OzKxIxJ3uKaLE4n/+Z8/kKef/meUlqZRWsojHM6TBzsnxy50ZR22%205kQg1jCWrhfmTwobfHls3nwjvF6BLF/+tZNGIi6BuACQ3+loWuGoWbp4a1r+oqXkIQj5j+2GRlkb%20AVl1YN1l2SkbK2mwP+tEai6JuDjRWL/+afL44zeitlZCaSlM8mBn5dCxB3YGpE7NuHZ5EOsMHKvL%209dDvy3j55a9DUXTykY+cHCXiEogLAEBVVRV27SokEprMo+RBx9BS8mB3UIJQ+HxOA6UoIbBSnSUF%2069dGUkPs0doqI53W8Jvf/IbU1NRAlmXMmTMH1dXVHM+7oS0XYwchBDt2bCW/+c0nMXWqjGgU5nhn%20WS5MmlsNSNlha9bF36rWrfeHdeyz8+/58frrN0PXBbJ69cQrEZdAXAAASkrmIp3WoKqiGXul8Vd2%20J2S3e6I3gCAMJdXtFIhh5B+dCIQlCHYHZv2cVUhDPyNCksKQJD/uu+8+ZDIZaJqGZDKJbDZLcrkc%20Zs+ejZqaGjQ0NGDKlCmoqanBjBkzEA6HEQ6H3yOETA2Hw6U+n8+9IFwAADKZDP75ny9Bba2MSGS4%206qDEwRKI3bA1O+NQJwKh9xE7+tnO8Xoo5MXjhRduwPTpF5IpU+ZMKIlwxNX8LgC0tjaTW29tQGOj%20jLIymDcLrS5xiu9am6NGGmlrJ9NZtcOOraVljLkckM3mj3QayGSAVIogHhcQj3swMDAJyaQAr7cO%20JSVTsXLlKmiaBkIIdF2HYRhQFAXNzc3YtWsXeJ7H/v37sXv3bvA8D6/XC5/PB0IIfD4fJEmCrutY%20vnw55s2bB4/Hg6VLl+Kss87iJElyfA+PHDlCenub8corvwfHKQB0HD78BgAehBhoaLgYhAiYNOkc%20rFhx9XtlZeWL3Svv1EVfX9+qG25Y9GIw2IGKCg4lJcNDVzRx7vMVTtG0hq/sKrCcSnlZFUI3SnRD%20pyhD90M6DaRSQDwO9PQAwEJ861ubXAJxMfHI5XR8/vMimT1bRnk5CqS6lUDoUCdCgLVrJUyerOPS%20S1UYBldwc7D2C06J8yEVQUzyyD8Sk0DSaQHptICBAR8yGQGJhA/JpA+ZjIhMRkA6bSCZJIhEZiIW%20a8Dy5cthd13zPA9hMNZGP+Y4DkePHsXRo0fB8zw6OjrQ3d2NRCKB/v5+dHV1QVEU9PT0oKOjAz6f%20D9XV1Zg5cy4kieDccydj8mQDu3c/h0zm8OCwK4nx6hLN/11RNBgGkMtpSCYNKAowefIKLFnyWVRV%20LcS8eUtdC5ZTCE899SB56KEbUF0toLQ0v6liw1dWFWIdyWw3CsHOW67YPcIqbkoglETS6fyRTAL9%20/UBrawYLFvwMl1/+gwm7jtwQlgsAgNcroLZ2GTKZ95DNcsjlhnZT1t2TYQCbN3vwox/JEEUBX/lK%20CJWVBgKBDDiOQzSaBiGA369CkrSiSXT62NcnQ9cJdB3o7/cjlfIhlwOSSRmaRgaJZYhUVJWSj2Hu%200HSdIBgMwmlTZBgGDBpHYxAMBhEMBgEAU6ZMGSRAbtjB8zySyQRaWg5iy5ZfY9q0HqgqhyNHgIoK%20QBTlYSN9h/42QIg4+JrFwW5jQFHewWuvvYNEQkVp6SJSXb0a1113K+fxeN2L8iTimWf+Qn71q2sx%20fbrsuImyKnHrBE1r/sOq0p3CvPRnaIWjk1LxeofUiSwDZWV+vPnmD7Fw4adITc3MCSERl0BcmLjo%20oq/iuefeQSgkwO8vJBBRBACCxx/3Yd06D1TVh0svjaG21otZszLo6yPo7/eB4wja26O2z2/XEGjt%20O8nnMwiT2zCG7cjs8iGGIUJVgYqKynF5LwghBUQkCBK2bXsaPT1/hdd7FOecw8Pv54aF9UaKV9t1%20GysKEIl4kE5vw549f8P3vnc/OeusT6C8/BO48spPcadM2/HfEdat+yWqqvLkwVZY0TCVdbyzneKw%20C1+xPli2ISFuaJM2kjrR9aFogKrmSa6khMdrr/0WX/zir90QlouJRSLRP/Wb3zzrQHl5ysyDRCKA%20IHDYvVvEI4/4APhw7rkRzJ0bgq4b4Hlg2rQ0JIk4Wr5bm/3s+jjYhdUa+2WT+lS+0zhwJpOX8Om0%20CFmux5e+9GWMZ8UVzwtIpXqwfft9IGQLolGfuaiw5GENVdgtEHa5H/b/YvM8AwM6OjtzeO01AS0t%20AmbMmIbq6mpMnjwZ9fX1qK6uxrRp0+Dz+dDQ0ABCCCRJQigU4gKBgHsxHwcOHz5EvvSlKZg5U0Ys%20BpSUwGwYZMNXNPdBFQlLLNb+D5ZERt68DM+DWMNY7D1Aw1g0F7JzZxr33JPgQqGgq0BcTBxCoWiT%20KMaQSKTg9+dvlDfekPDUUz6IoohLLqlAZaUXggBks4a5U9K04bFduwXUyQrFbmG1UxqUTOzjwjzO%20PXcuPB4PdLa78Xh2VxyPffteRlvbfyAWExEM+grKNtlwhZ36sIYdnFQIDWfRBSn/KCAQkFFSAvT2%20BjB37pexb99+GIaBd999F9u2bYOu6+A4riCvw3EcMQwDK1aswIIFCyCKIi666CLMnDnTJZZR4qqr%20zsaUKfKwTQJ7rqnCcJqaaTeiebT7Guv9Q5+DXj/0b+t6IWF5PHliq6ry4Omnf0SuvvoXJ1y6ugTi%20ogBf+cr9+PnPl6OtLYo9ezwgRMbixVE0NMhmDwhtGKRGipkMD0HQzYvdSYFYpXgxBeJUsmuvSAj8%20/lJUVVXZ5jiOBQMDvdix49cQxZ0jGuXZqQ9rkyVVINadpSQNPSpK4W6WhkskKYmurp+jvv6LWLLk%20CmiaYhYA9PT0oLe3FzzPo7u7G319feB5HocPH8bjjz+OpqYm8DyPXC5H0uk0ampqEIvFEAwGMWnS%20JJSWlqKkpASNjY2YPXs2NE3DjBkz+ioqKkr/3q59QgjefnsTCYW0AlsSu4pDO2XhNPTsWMcjsARE%207zk7wmJJRJKAYNCDDz54DJ/5zA/h8wVcAnExMchms9A0FZs2BRGNhjB3bikaGoIADGhaIQGwF3ku%20l88FUEViN7FwJPXBkgjbEU+T5az6YJ1KqYyvr6/HpEmTcPwhWQ6qmsHWrXcgGu1BJJL3O6LkQWPO%20dnX+bJLU+r/bEQirsOztKihBcRgYUHDo0H3o7W3HypX/AHXQ+VKWZciyDACorq42lUh/fz/uuOMO%20lJSUoKqqCt/61rfg9Xpx5MgR7N27F4ZhoKWlBZs3b4YgCMhkMkin0+A4Dul0uiSdThNd17F06VIs%20XLgQhBAsXboUc+bMQTAYhMfjgd/v53iehyRJKFbefLqA4zj8+7//AsHg8HNsXbidSMJOhR5rRNVp%20kBpLLOxkTnrke7c6kEr1EZ8vwLkE4uKE4w9/+AP55S9/CU3T8IUvXI0jR7YjHBaQyRiDCfQ82I5z%20qkD6+kQEApqZ+HPKATgRiF3du1WBWMsY2XJGQvyYPr1xsGT2+Agkm03g7bdvQWnpAKJRzox7WxOp%20douLdbdpJU82D+JkV+HUN5A/JPT0rMemTQZWrvxHKErGJmfD45133sEDDzyA2bNno7a2Fjt37kQ2%20m4XX60V1dbVJNGxyXlEU5HI5cByHXC4HRVHQ3t6O7u5uNDc3o7u7Gy+88AIOHToEj8cDn8+HYDBI%20eJ6H3+9HKBSCKIqYN28eli1bBlVVsWjRIsycOfO0qgD48MP1mDXLY5vbsjsnrFKwLvjH4lLtRCKs%20aamVpKzjnT2evAr5z//8Ou644xlXgbg4MVBVFWvXriV33XUXFEXBihUrcM455wwudjl0d+8BwNt2%20zVJZzXFANstDVclguauzArGSCE1V2IWurLkPShis+qBJ9PLyyViwYAGy2exxvR/pdBzvvXc7otE4%20Sko4U3nQcIbdgKBjbaRkCZP+vqoOXxyGL0wcOjqexksvAStW3ADDGMr3GIaBJ554AuvXr8fSpUtR%20X1+PeDxeQBQswbIfi6IIcXCnQBVNVVWVWb48mF+BIAhIp9Po7+9He3s7VFVFT08P2traMDAwgDfe%20eAMvv/wyEokEent7kUwmSWNjIyorK1FZWYna2lpUVFSgvr4eoVAIkUgEkyZNgs/nQ0lJCRcOh0/a%20/fDHPz5EZFmDJHlsy3Cd1IUTaYwHgViVCHtP2akeSiSSxKG7e9cJf89cAvk7xXPPPUduvPFGCIKA%20z3zmM2hoaIBhGGZoZPbsc/Dyy4egKOrg7OahxU8UC2OyhsEhk+Hh8RDHi91JgTiZJVrDVdbKE3ok%20EsAXvvCR4yYPTcvhzTe/j1hswGyiZL2O2NCVXZ0/3Qla80DWCjSqPmg+SRCGihCsSsbp/TMMHzo7%2012PDBgEf/ejXoOsqJEnCzTffjHg8jjVr1iAUCoEQAk3TwHGcSQpjAc0n2RUlRCIRRCKRYSEg68cc%20x6GpqQldXV3o6urCgQMH8NZbb6G1tRWEEPNvDH5MCCGQZRlf/epX4fF4IAgCrr/++o+GQqEN7HOy%20H48XHn30PxGN+ocVRdBza0cY1gWdXfStXzse8nAKa1nJaohEOCSTh9DZ2d1bUVFW6hKIi3HBvffe%20Sx544AHs3r0bn/3sZ7Fw4UJwHDcs+cxxPObPvwjvvPMcwmGpYBGjiyRVIQCQSvHw+/URk4bFciBO%20lVfWDlyqPNJpHhddtByTJ08+rvdEUQy89NK3UV7eh0iEd/Q7KqY+7KqvnPI/VhKxxrftwh9W5abr%20Ajo6nsGbb8YATMKjjz6K0tJSrFy5Eh6PByejPN9J3VDvMWtjZjKZRCKRACEEiUQCiUQCAHDw4EFs%202rQJhmGgubkZP/rRj17MZrOorKxEJBKB3+9HLBZDJBJBKBRCdXU1Lr74Yui6jlgshkWLFo152TYM%20Az6fAkLy55YlDSeCGG2o6nhIZDSn0S5XIgiAzyeipWVbSUXFKleBuDh2ZDIZbNy4kXz7299GNpvF%20vHnz8I1vfAPpdHpYwxyLqqoq1NefgyNHPgTAFSxi1phsJsNDFPURrRroo1NHerHwFdsnkbcuqcTH%20Pvax4yrb5XkBe/b8P0Sj/YhGebPOn+Y8irmsWqthii0oTsTpFKoq9jv0vYnFROzd+ye89loU8+ad%20g7PPPhuKouBU6+1yusYkSUIsFgMAlJWVmV8/55xzzF4eQRDMENqhQ4dw8OBBAEB7ezv27t2LtrY2%20vPfee3jooYdMUurv7ye6ruP888/HggULQD+ePXs2JElCJBKBLMsQBAHhcJjz+XzQNA3xeA+i0aHz%20aRc+ctoQFSOA41UhYzmd7Ov1eHgkEp1uCMvFseOxxx4jd955J7q6unD55Zdj/vz5kCQJqVRqFGEd%20DXPnzgfHAS0t74MQoYBA2DBWKsVDkoYnF8eiQNj8B1UeLIFkMtRIEQBkXH75J4+LPDiOx3vvvYze%203mdQVSUMK9W1Egct6RSE4RYvLIHYqS+n/9uOdJxG+do1IcZiEs49V0VNzVQoijIqdXCqQ9d187zS%20kColGUo0bOhK13UzVKdpGnRdhyAI2LVrF/bv3w+e53HvvfeiubkZmqZBkiR4PB4MVpARj8cDjgO8%203l7EYval6CMRR7HPx4tERhr1zF47+etQQG/vQZdAKPr7+1Y1Nb31Yjbbi4GBw9izZw98PsFczAwj%203+DW0DAdwWAlZLkUoVAVZs8+n6OVRIQQnOnWEIQQPPTQQ+TXv/41Dh48iFWrVuGCCy4wm+zGspgQ%20QjBv3gJwHHDo0HYEAqLZwMQSiK6LCASyZiLdiUTs5oI42bVbcx+UPBIJA9df/wU0NDQcF4FomoKO%20jv9CZaVQ0F3OmuPZVV3ZVV852XRbd5FWryOnEIlVqVnfI58vT3ahEFBaquDw4Tdw1lmroetqwXPk%20cjnwPI9AIFCwGJ8J1/iQiuTNMmKPx2N+ffHixTj//PPNn+F5HplMBolEAl1dXVBVFQMDA+jo6ICi%20ZLFjx0FwHD9qorBbvFllST8f7bhnJ+KwjnWmXxuJaPJRAv3vk0DyCd0M3nnnJbJ//3PYseNeGAYP%20r1eEKA513w4MDJ9o19YG5HIGcjmCTMbAwIBKZs5ciUBgLm677Recqurw+fxnHHFomoaNGzeSG264%20AYqiYPHixfj617+OTCZj7tSOdUc4b9450HWgpeVDeL0cPJ6hTlh6gyQSIiTJPg9CE/F0EaWPbFjG%20MJytS4acR3Vce+21aGxsPE71waGvbz8CgSyCQd62w9w6ltRuwhz7/4+GQOj32c+dVIdh5P82JVv6%20nlOCpSQSDnOIx3ehv38hQqHIaa9AxnMNsWssDYVCCIVCBV/r6+vBhx8+AYC3JQe6iA89d+H5sk7E%20tOt7GiuJjPR8dn1U1s3KiT7tpySBHDq0jTz99LfQ3f0BBCEJSeJRXS0Pa9SynsDCGDo/uAgJqKz0%20IJV6A93dr+PLX/4j4flyrFx5Herrl2Dlyo9yZ4Ique+++8i9996LvXv34nOf+xxmzJiBQCBgksd4%20kNO8efNhGMCePe8hGvWZCxpdTHt7vYhE0o5jO+1uOGsFFmvtQct1835XBLmcgRtvvBH19fXH3XG+%20detedHTcg0mT+IKuYye1YZc4L2aS56S8rOqD5UB2NLCVPCiRUSKhVWGUREpKJBw9+hpCoU+6cdsx%20gud5tLS0mOrDSg5OvUssaVi/zoYzj4VA7Eq+7cY9W9WJNad4onHKEMjAQGfv228/WPLKK7fB788h%20HPajspIbLOWzdzi1SjxrLwG7GAWD/GAFj45MpgMvvvhj9PRo+POfV5Gbbrobc+acd9oxSC6Xw/PP%20P0/uuOMO9PX1YcGCBbjxxhuRy+Ucd1/HGzY455yzMWfObGzY8BwSiQH4/QITzuGQTApmMt3pfFlD%20WFR92CmPTAaIx1U0NEzFP/7jN6Fp2rj8X8FgM3y+FPx+0TZJbmdfwYas7KqvinUcs8rDaYfI9tfQ%2077G+RyyRsCTi9+ebHT2eVqhqDq4V/NghCCKCwUoYRg8IMWytdood1gWfEodVJI/WTNHp71v91Kx5%20MTtboDOeQB5//Gayd+/vEQpxqKsT4PXKBTbi1s5Pp92sNU7stKPN1/dLiEQkJBJv4LbbViKd9pMH%20H3wflZVVpwWR/PWvfyU333wzMpkMBEHAsmXL4PP5sG/fPjQ0NAwLW4xXCEPXDQiCgNWrP4G2tna8%20+eYrkGXRPE+qKsHnS4PnOceQjrUD3U590FJdTSP41Kc+jQsuuGAcY/gEhw49i5ISccTyXKvKsOtI%20HotdhVOFFlsWbS31Zf+21ULc4xlSIpGIiAMHNmD27E/BMDSzq9x13B7d5sjjCcHj8UPXm6Hr3LDd%20PLtAWxdqazMfO8uDXcTpubZTqeymgt0Q25GF3URP69qnKIAgkDOXQJqa3iTPPXcjcrkPUFXlNcdC%20Wq2Qi5U4WmPpdm8mne1NH+miQZOlPh9BIpHGlVdWY86cj5Irr/wOVq269JQkkgceeIDcf//9+PDD%20D1FbW4tZs2aBEIIDBw6gr68PR48ehaZpKC0tRSgUAs/ziEajiEajEEURkUgEZWVlKC8vRyQSMRPr%20dFc/WuXCcRzq6+sQDK7Bzp0for+/F7lcAl6vgFzOB1HMDTt31p23XegqTxw6vF4Zq1evxKJFiyDL%208rg57PI8j92734amHYLP53Uc0ctuXOwcVp3mfoz+dRSqDvq+WBvC7IiLbWBk1YjPx0GS2jAw0IVQ%20qMQMPVK7dxfO5BGLxaDrBIRIIGQGFCUBRemHrqcHF3POdo2h88vZ77FrFXUaYHNeNJxlDe2y6sO6%20wXJSHHbNt3TNy2ZV1NcvPfMIRFVzePDBz5Lu7mdQWiojGvXadvkWs4co1tFsdXP1eIZ2ttYQBXt4%20vTI6O1/H7bdvwOuv/xP53vd+xh1LB+94I5vNYvPmzeSmm25CIpFAfX09vvvd72LDhg2YOnUqGhsb%20TasJWm3S1NSEzs5OpNNp9Pb24uDBg9B13Qxv5XI5qKoKwzBQU1ODuro6CIKAyspK82NRFMFxnNkR%20zPN8wUKkimzcyQAAIABJREFU6zqi0SiWLbsIoiji/fc/xJ49u6CqGlTVAMcpEEWuYJEdXpJKBkNW%20BIAHoVAQixbNw2WXXQbDMMy55uMFjhPQ2/sBAgFxmN8Ru1izDVl2i/p4eR2xrsYjubpayYTthqcb%20IlnmceTIbkQiS82KQ2MiguGnOYGEQiFoGlUdBjQtgHQ6CF3nAXRCEJLweHRIkg7D4IYt5KO5Lqj6%20KNYrRE8VDe/aEYR13IFd462qApkMgd9fcmYRyKFDW8mTT14GWY6julo2J995vcNDCOxNZZV8TjXy%201qY0NpQlikOPxQ6Px49Nm36Pt956gTz11A5OEPiTdnE/+OCD5Be/+AXa2tqwYMECrFq1CsFgELqu%20m81WdqqBNc2jikHTNDMMpKoqNE0zCaalpQWKouDZZ59FOp2Gz5efAUJLJD0eDzweDyorK80k9tln%20nw2/328u9HPnzsasWTMGXX017NjxIQ4fPoyuri7wfL77WBQ9UFXVtNloaJiCefPmobKyEtXV1QiH%20w+A4blxJg8XRo21oa3sedXVCUfNCO8Vh7fYdD/Kw9oJYw2JOqof1PWJdWH0+oKenDRzHgxDdZYdR%20nwsBPC9B1zVmI0pAiI5EIoZsNga/34AsqygpiSMaTcPjycEwOOg6N6omUnazYO1qd0rWF1MZdmaj%20bP5wYEDD3LmLzhw33r17XyDPPfdllJQkzTnD1qludu6mxbqarcklq0mdKA59zHoOOe30hg4B/f3N%20aGwUyPXX34nbbvvhhIW0NE3DunXryM9//nPs378fCxcuxBVXXIGqqqphzWJO1WPWkAUhBDzPw+vN%20J1jpY0lJCWpqarBgwQIAwJVXXgmO49DV1YVEImGa5XV2dg4uwEfR3t6OeDyOdevWQVEUlJWVIRQK%20QZZlRCIR1NXVwTAM1Nc34KyzZiAUCpk74UceeQRf/erXUF5ejoqKCiiKAk3ThvkinTj12w2/ny9o%20Cix2zVkV8HiqDzYnMprDSiZWZULzIYR0QFE0iCI35r6fv1fkN0gyNC0+bHc/5FnGI532QlEq0NPD%20weMhiETSCIcz8Pt1hEI5SJKBUChresS1tAiQJGDyZKOgL8QuB1KsQtFOfdgZjQ413RJMnTr/hL9v%20E0YgTU2vkmee+TRKSzlb8rDW14+mMctOgdCYJPUZYt1Oiw1/sSod6nw6Z46MdevuhiCA/PM/n3gS%202bBhA7nhhhuQyWRQV1eHW2+9FT6fDwBsyWNgYOC45Tu7eGuDgz+CwSCCwfxIzLq6umGERR81TcPR%20o0dNi4m2tjY8//zz4DjOfG7WykIURXz44YfI5XKYOXMmZsyYUdDcyRrlnQikUp0F5DEah1X2Zrfm%204cajw7iYDfhoSMR6hEISPvjgNSxceAmy2SwWLFjgksgIyM80CUJV47aDzAqrqwgAAsMAkkk/Mhm/%20ZX3h4PNpqKgYwPe/b0CWNfzpT0nHdcba62E34sDJocHOsSGbBVIpA42Nl54ZBLJt23+TjRv/AWVl%20+fkKrD223UB6p8YsuzfbWrFiVx1hVyVRzLxueEWNhD//+ac4fLiJ/O53D56Q1e3+++8nDzzwAHbs%202IELL7wQS5YsQUVFhWMoh1oxTHT/Cl2I6CPP8+asbkoAPM8jnU5DURSoqopsNotUKgXDMNDU1IT3%20338ffr8fzz77LBKJBILBIGRZht/vhyzLqKyshK7rqK+vR11dHXRdx8yZM1FWVgZCCFRVNcNcYwl1%20iaKEnTu3IBp1LtBwWrjtdozjpUCc1nan1+JknsfzNJ/HQRTjjmrUhT0qK6tw4EArZJkv2OWzZdR0%20jaHJcjporXCjS6BpItauDeDtt5PYuTNZ4LrgpEDsGmytVYpW8rDOxqHVi4ZRgltu+eHpP9K2u3sf%202bLl/5rkIcuFPkN23b3FElJOBGJNorPPw4auRrJcZkNjhX/Hg7feegxXXz1AHnvsL+NyYrLZLF59%209VXyne98B93d3Zg2bRq+//3vIxaLmZ4+I+FE5QqORcWwr4nmTKwIBAKYM2cOJEkyk/RdXV1oamoy%20p+RRz6KWlhZks1koioJsNotMJoNoNIrFixdD0zQ0NjaioaHBnIhH8zaSJEGWZTM3Q18jxwng+X2O%201txjCU1NdN9pMSdY+rUhEuGgaQlTTboY3TV86aUfw913b0Yo5B+WX6AkomnD339KJoVhaIJ77x3A%20P/2TAo9naNZLsfyZU0MgG8JiVQdLHtRolNr9qGoQhJz43O0JJZDW1g/IE09cgFiMIBTKKw+aNKdH%20MVtsu25ma7kbXexZh1grgYy0s3QiJmsyq7xcwp49L2LNmkvJ008/f1xLyJ///Gdy6623ore3FzNm%20zMCXvvQlc2bDaG58QgjKysrMMaSnyy6TVRA0oR8IBDBv3jwAMHMxtDCAkgB9bGpqwoEDB+D3+7F5%2082Y8/PDDZoUYTfrTwUizZs3C1KlTQQjBrFmz0Ng4C729PYjF5KLh0bGEno7//Th+grKq53yYJQtN%20U1xmGAOi0SjC4RgUJV1QsUkX8NFU4dGy7CefTCIc5nDxxQSZjH0xht11YFfibkcguVyh6hgacQB0%20d2dx5ZXfN/Ocpy2BPProJaisJAiH88Qhy8NnSlvLKEczF8EphEWbduxcTkdjMe70vIUJNQ779r2E%20u+76ITmWxPrrr79Ofvvb3+J///d/ceGFF+Kqq65CTU1NUSdV54WDO+3CEyO9Xvp9Ov1OYGfoApg3%20bx7OPvtsM3zG8zySyaQ5JS+Xy6G5uRk8z6O1tRVbtmxBJpPBunXr0NnZg2uukYuGopwcT+2+dyLI%20w+5vjPZvssOPaGEA2+PjojgURcGqVR/DSy+tM4eI5ZvxRl6XhsKkwNGjGt56K4N/+Ace0agORRl9%20XteuB8SpyoolDkoeiQTg803D5z//tQnRyCeMQF5++SckEhlAMCiZg3nYJj67zl/rEJeREuiUsany%20YN/0kX7f7nmcLMatO4FJkyT89rc/wnnnLSOrV68a1YlKJBJYs2YN2b17N+rr63H77bcjEAiAEHJM%205HG6xrdFUUQ6nTbdU8cKu5JlURQRDodBx6FOnz7dJBh2gNGRIx14553vAvDZTgu0vpVOJMJ+bbxU%20iBNpWL9WTLUU/qwKw8j3/UyZMsXNg4zyXpo3bx7+8pd1ZlOz1XnZKQTFDlr73e/6UVvLIRbjTKVg%2097tsMylLINYEul3+g53KSckjmcyby1ZULJm4+/kEnAZ0du4kO3fejfLyIfKgTqdWwzrrTGkrgbAS%203W43yNbSsxUtxayy6c+N5Gyp6/nXa+1qV1Wgrk7G9dd/Cm+8sYfU1EzmnJLZO3bsIDfddBO2bduG%20xYsX45vf/CZKSkqKDnIaLUpKSnDo0KHTUolMBKxEo+uq43VU7GA3GKxZ3njOeXAyxxvN63GeB8Gf%20lpuMkwm/34+5c+dj376tkCShYO6LnZkrC0HgsGFDEgMDBDfdJEBV870krAJxGnXg1NNmJRA250GJ%20gyWP9vYc/vu/H5ywDN24Z1n6+/tuePbZryESERwtsp3ssdleELuh9uzn1sPp69bv2VlWWL2F2M/Z%20fA31HPL7gWAQKC0luPrqK2wrobZv306uueYacv7554MQgptvvhlXXXUVotHouN3QNNbvYvS5Amul%20i90CbqdGnRbtYz2VdrMdnD4v9vrsFMrgf4vDh9tMEnExOmiahi9+8Yvw+0uRzQ7NomET1uzIAXZT%20mU4beO65JD7xCb4gZ8HmK9jnYaun6EH/JiUJ9mtWxZFO5xPmySQQjwNtbWn88IdPT2xEYbyfsKPj%20zd+n02+istLvqDrshvKwcUZW3hXLWbBhBOt8BbbEzu53nRwuqY22UxJLVYdIJBTi0Nq6DT/5yV3k%209ttv4wAgnU5jyZIlpKurywxV+f1+M8Y6nnK7oqICW7dude/6MSza7O6O/dzOnttueiCbX7Neb2PN%20fdhdf3ZGeiOpEyeHWJ7n3JN+DFBVFYsWnYeNG9dDFPmC9clpTTIM4NFH+1BXJ2DqVM4MW+Vyw0Ng%20xbrVncp3KRlZ1Qclj74+IBg8GytXTqyH37gTyGuv3Yxo1G/mPEYaymMnD8daKWU3rCgvKQt/npqa%20WZ1PrbbZ7KNVnVA1QucwlJZ6cN99v0R5eRnZuHEj1q1bh4suugiXX345Jk+efEZNgTvdwfMeEBKE%20YWgFN6jdgm23oNtZj9DegNGSSLGF345IihFaMYdYwyCoqanGwYPNKC0tdcNYY8RFF12E7du3I5U6%20CkEY7ixdGM7k0NycQzqtYc0a0SzZzdv1EGSzo3PWsCMQVslYez2SyXzSvLcXGBgIYt261yd8xzCu%20BPLww7cSwzgAn2+4OaJTue5oq6/YG9RppsJI84utpMF2rLOP1nAXrQNn7bMVhZrXAT6fgm9/+zuY%20P38u7rjjDkSjUei67pKHbRjp5OVrampqoOuVUNVO6LrqWChhtbBwIg+6SaHfH6mPxGn4UDEysFp4%20231u9/X+fg/i8YTpmZZKpeD1eguKF6xNoS4Kcf311+Nf//VfIYp60XPa1aXgL3/px8qVAgRhKGlO%20SH6xp2vPaIwU7QwUnXIfiUReeXR0GPje9/6AQCCA05pAursfQFmZ5EgexcJWTjM/nGLZNGxFb2z2%20kYJ+zioRJw8sSias+mD9tFglwrqf+nz5fEgoBCxZcgFCodCENffFYjGkUqnTapoiz/PIZrMn5W/r%20ug6/vxS5nB/pdBzh8BFomjDiYB7r/HLr201N8qwWFU7Ko1jRhvUYDZEM927S0dlZgmeeeR4ejwff%20/e53wXEcfD4fJElCWVkZysrK0NDQAFmWsXTp0sH7pbDv5u+9/DcQCOCLX/wi/uu/7kdlpa/ge2yY%20cPv2DKZN4xGNcoOJ86HzlO8KLx7Cskug2w3FowPWaOiqvx9obk7jiit+jDVrPnlSFoFxI5B9+zYQ%20SUqY87Kt09yKqQ5WfYylssUqKdkTwlY70J2jHWGwTYfsbrKYdbZ1IpzPl59L/eqrGzFr1swJUx6C%20ILg1/rYKx/4ayl8vMnQ9g1wugq6uMAjphihm4PVmTGdVOwUykrqwm/Pg1PzqFK6wIxQ6rXEktZQn%20EQOa5oOux3DddR9HLFaHvXv3YvLkyUgkEujv70d/fz8ymQz27NmD3bt3o7e3F/fcc4+p0CorKxGJ%20RBCNRlFdXQ1BEFBfX282robDYdPWf6wzZE6/nBnB7Nmz8ZGPfAyvvvqSuVyy57GtLYtDh7JYs0ZE%20Lje0+aQb2nR6aE1xyqNYO9Dtqj5p6IomzgcG8n/7c5/7EW655faTtoMcNwLZtetZ+P3cMGddaxVV%20saE8x7qRtoYX2Ppq1kbZqljsZjwUm8dgVSOUTGhSfd++HWhubsbkyZPdsMBJuNk5Dkgm4+B5IJtN%20AuCY73Pw+YKYNGkKenp6oOsEug4MDJQhl8uHAmKxflRXdxcYcFqtK6yqglW6o1UgdqNJix1OMyDY%20GHku50U2WwpdD8AwVEhSENlsFuFwGNOmTRt2PVISoD0ynZ2d6O3tRWtrK/r7+9Ha2opNmzaZyo0S%20BSEE4XAYkyZNwowZM+D1elFTU2MONpsoU8yJgqZp+PjHLwXHAZs2vQLD4M3zlssRbNuWwPTpAlKp%20Qs8sqlrT6aFIhtNax84AsbrvWkNXqVQ+ad7RoePTn74Tt9xyx0l9k8eNQDo7Xzabb8aqOsaj0pAd%20YG8d0mM36N4u50IXDDvlZPdx4TAqIBqV8MQTT+I737l5QsJYhBAEAgF0dnaaRoN/L+B5AclkP1Q1%20BUVJQNOyAPRhOzz2LcnvEDNmWIDd3Wsa0NdXglQqCp9PRSCgorx8AIGAimg0A0L4wRudMzctdL6M%203TVWrPjD2m1slzR1IpE88RFoGodUKoh4PIBk0ot02gdVJYNqyTf4NwxbPzJKBmz+g06pnDlzpkkA%20PM8jkUggnU4DAOLxODKZDJLJJPr6+tDU1ISjR4+ipaUFqqqipKQEwWAQgiCYKkYURVRWVqKhoQF1%20dXUoKyuDz+cbHNqkma/lVPB0K0Yiq1evBiEEL7zwPCoqZAAcurpS8HgIwmEemUzhxpmuJclkPlIx%20EoGw14Vd4pySx8AAsGtXGr/61X/jqqs+f9IZelwIJJ1Oobd3OxoaZMcBPU7zFcZrk8LmRGjIgaoN%20VqWw84rtci92XlzFrLOpCskn1DnE4wNIp9MT4kMDwDQk/HsJT6mqAl3PYWCgA7oehyDwEIS88mXL%20Vu0IxDCAYFBGW1t+4WcX7Hyoigzu5j3QdQ+SyQAEgYPHYyAWS8Dv11BamoLXS/DeewRPPSXghz/M%20we/XHcp7uTEQCBmW31BVfnCynIBcjkcqJSGVEtHXF0Eq5YOmGVAUMvi/EPP/8fmiY761nRpbvV5v%20wewYllzoQb3Impqa0N7ejmw2i56eHhw+fBi5XA779u3Dxo0bkUwmkclkoGka6uvrcdZZZ4HjONTU%201KCxsRE+nw9erxeCIMDv95uDzNjXdrJCZYZh4LLLLkNjYyP+/Oc/o6WlA93dKdTWikinh0ZmW0mE%20Egi7hlhDWHbWJaxlCSWPnh4VsjwNjzxyP1asWHZK3PTjQiAffPAECQY5x5Z/O9I43rCVE4lYQwhW%20ZcLmOEYikmIhLTsi8XqBXC6JRCI5YQRyuqkOjuOQyWSO4fd4xONdSCZbmfdcKDq7w7p4CwIwaVIp%20tm0jCAS4gp2+vVne0NyHnp4QBAHo7i7F66+n8cc/xnHVVUFs2yaD5/Phs3A4DUEgCARy5usIhTIF%205MHG0OmhqjySSS+yWRGZjAeGQRCPy6ZCUlVukOg4MyZOiG6rXDQNkCT/CW0ypWOGraqhoqICFRUV%20BeeaVRd0uFUmk0FHRwf27dsHQgieeuopJJNJc0QBNcSkXmhTp07FrFmzoGkaLrroIoRCoWGzZiaC%20WFRVxZQpU/D9738ft9xyCzguv7AbxlB5PyUQ+hiPF0Zl2GuVvSasfR+sXUkyCXR0ZPGZz3wLd9/9%20c85JVZ62BLJ792Pw+bwm67KWJCPNXDgxi5R9LNppeI/190ZDfFYyGcqHcNi4cSOuvvoLJzyZbhgG%20SkpKcPToUcRisdOCQARBGBPp5Qkngf7+w+C4HCSJHzan3CnvMHzhy5NCXd009PYegM/HmSOOrQUU%20TqGohx4awN/+pmLZshqsWEGgqtpgvB/o7g4Nm+9BCOeYCynMixBLcyOxnUbHqhQ2N8KGPcrKJkEU%20hZMeFqI5EUpm9NHv9yMWi5kOzJ///OfBcRx6enpMlTIwMICuri4AwP79+7F582Z0d3fj4YcfRiaT%20QSwWQzgcRigUQjgcxpQpU2AYBqZNmwZZls1wWiQSKTCUPF5zSUmScM8990BRFNx4443YsOElHDiw%20C9HoUOsCDVmJYj4PZDWMZSMmVIFYyYMqj9bWNBoaFuL++3+Fiy++6JQLNRw3gShKDgMDBxCN8iOG%20qE4WebCvi72nijUu2llkFwtpDc2l5rBp02u45pr/MyHVWGzi8kwMWXV1tUDTuuDx0HCJ87Ax6zVg%20DWHlPzYwb95UPPfcfsgyV+DJZlWa9FrJ7zQN/Nu/9YLnPbjiikboOodcbgBeL0tkxOZ6J8NeRzFC%20YUtAreW8VJFYE+qs0V42C/j9IXPm/LGaVp7oa9ZuCqYsy+ZIAxarV68evA95c5BYe3s79u7dC57n%200dzcjFdeeQWEELz44otmfkVVVRiGgenTp2PmzHx15MyZMzF9+nQzDEfDb3a7eruNzsGDB7F3717c%20csstiMViuPHGb+CVV17Bq6++NmgSSgrcxrPZ4Y7j1uuzsBgib4liGDJUNYS7774bX/rS/zllb/Dj%20JhBNy0wFMsMW2WJKwG7BH888iFVxjLwrLU487MdOc7JpUjV/4Qjo6ek54Y09NIne19d3xhkqCoKI%20jo49ICRhqg67a8zJXsLuPLPhI58vjFwuaTveln0uj4fDBx/k8PjjA6ivj2LOnDIzrxaPCwgGdXMX%20aQ1P2F2bTlYk1m74YpVY7MH6MeVyBDwfRCQSw5kENgRGMWnSJFRVVQEAli9fbvYXqapqkgdN/h8+%20fBgHDx6EKIq4//77MTAwYOZb6BGNRk0F09DQAMMwMGfOHFRVVZkzbEKhEL761a9iwYIFqKqqgqIo%20yOVyWLZsGZYvX47Ozk5s2LAB27ZtBUDg9fLweATwvF5gysjm5/LnlCCT0dHWpuDccxfj2muvwjXX%20XItJkypP+Z2hePyLmH4Dz+uOU7ZGoxbGb0Edm0Ip9hpGIhFWwbALT16FePC3v/0Ny5cvn5CQUC6X%20O6MWDFVV0Nm5BxyXgcfDOc5jsJJHseuJtb3hOGDq1CnYuXMbJEkYtjtkq/LWro3jzTczWLCgHLNm%20lUHXDXPRV1WuQKUUU9jF3H+d7EnsZnI7kYei5HeukydPhyDwZ3R/EMdRm34eAId0OgPDUAevCQ4e%20jweCIKKiIr/4NzRMxSWXrIRh6LjuuuvAcRz6+vrQ3NwMwzDQ3t6OtrY2KIqC3bt347333kM2m0U6%20nUYikUAoFMKCBQvQ29uL6upqfPnLXy7wtaPvdSwWwzXXXIOvfOUr2LNnD+LxOLZt246WllYcPtyC%208vIYIpHwYP8ZQUXFJKiqgWnTpqO2tha33/4vp10o4bgJRNeVHxhG7phIYbzmKTiRSLF503azFYq9%20FicSYYlkqLyXN+O3LsYGnhfR2fk3SJIAUeRsF/di4Sv2c6drgRBg1qzJ2LVrPzKZTIFDAn3+VMrA%20U08NoL1dwcc/3ghZFqGqhql62NDDSDk1pzkfTh5Xdr0gbOkx+zFb6slxQTQ0TDtjySMfdhLQ1LQT%20qVQrOjvfRyazF4LAgeNIQTNy/uAAEJSXr4AglGLOnJXQtPyS5/V6cdZZZwGAWbpsF7biOA779+/H%203r17sXXrVqxataroxFBVVaGqKmprawEAc+bMQS6Xw49//GP8/vd/wMqVKzn2udnH0xHi+JzY4TeL%209YYdaXjPiQnxDL9pR0smY/m/rYcoAgMDAxMSS5ZlGd3d3acRQfBQVdU2d8NxPDo7dw+Sx/C4MS2B%20dAqTFsuBsK7NefNNDeedNwdvvfWuGV7In7u8Md769QMoKwthzZqpBS68Q6XhBP39HkyalBsWSmNf%20k9NAKLsZIHa5D7uJdHbT6TIZglis7ozKhwmCBzzvwe7dr6K//wMcPboDHk8KkqTB6+UQDvMoLeUh%20CMShv4IMKsWXkMsRvPHGY+C4EAgpw/TpddD1Fairmw1dz4IQw3Exb2xsxF/+8hcAQ6XMY0EymYRh%20GKitrT3j7PXHgUAMEGIUmBpaZxo4LdTjOdXNaYfn9H2n1zaWcJgdodBQS19f/4TkJSRJQjabPW0W%20jmI3UG/vYRhG0gxbFRslOtqCDDt1Qq/NiooIOE5GOp2GKOa/19qaxebNcVRXR3D22VUwDKOgFJx9%20Trqw29m8FyMyJwXCEog1ZGVHHKw7azIJLFzYOCx3IMvyaZUb43kemUwWhjGA7dtfRHv7epSUSAgE%20REyenC9S8Xg8thsM66U19P4Kg2QsQlUVqGo72trakcm8hu3bNcyd+4+orJwDj0cGzxfesxzHYcuW%20Lejr64MgCLZJ/tFs9OzUjUsg+bcYhsExrF+8cepETHUrpnKcBgAV2xmORHpOSoRdYJLJ5IScwDPl%20osxmk8jleiBJ9uRRbFbMSERinRlDf18UOVx++QV48smNEEUdW7b0IZMhWLJkKmRZhKIYBRVZVsuc%20ZFI07eBHCqvZTUG0KpDRqA/rTOxcDkgmCebOPR+BwKlHFiNtbOjr5TgOgiDhrbeewpEj6+H3pyDL%20wNSpcsFQOnYgnFPPmfU9Z8ODhe+nhFhMQlfXH9DaGkAwOA2x2MdRWzsDup6voJRlGY8++ihWrFiB%20d999F5MmTRrze5BOp+n8nq+7BOJAIMVmKTipA+tMj/EgEetcECfysNsJjqRknEiI/f2JFgKhUAiG%20YSCXy522Ewo1TUU83lKwMNhVuRULFRXLd9mFlIbmwggoL6/A66/vACEi5syphscjmoRhVS7WWSDZ%20LGeGUFgVOhp1XKwCy1p1ZVUetNEslSIQhFJUVZ18/zXqf6WqKnK5FAjRkcmkIAgcFCVTQCaEEIii%20D16vH7IcwYEDW7Fz55OQ5W6Ul0uQZQ5+f+FAOquzt5PThd37bffe0vc0GOSRy2WQTL6PAwfewb59%20Z2PmzM9h0qQ6/P73v8fcuXNxySWX4PXXXz8mpZ9IJEAIQSQSuc8lEIdFmx3OY5Xk1oONJdtNEzye%20sBWrguxUj93Xhkve4WRkp6yKKRaeF1wFMkr09h4CoAxbDKwzqK25DycF4kQmdhuV5uYu/PWv72Lq%201CpUVZVBFAms/XfsGAD2efIEMmRV4ZRId9pwOBGItUPeTn1kMvmju1vHFVesOgWuA4J4vB+pVDdU%20NQFB4M33i3UzLtw4pJBMZvH004+gtFRBZSWHYFCCzwdzIB2rPOzMWa0bDDsCYe9hJxJRFECWeQSD%20fqTTe7Fr1+3Yt+9SbN++Hddeey0URUE2m0VdXR1SqdQxkasgCHAJxAJBkH5OiPQDXVeGWVM7TV1j%20Q1h0kaYDWMZKIk47umKhK6s6snt9VjKyIyDr94fKO3VMnlwxoQRyuiZP87YYaXi9w8MR7IJQzLKk%20WCLdLreVtx3x4/77X8HmzbtxySWLUFVVhra2Hqhqbti1ZXVzps+t6xwUhQfH6WOyVBmNqaKT+qD2%20Fuk00NurYcGCJY7vra7rJ1SV8ryAVCqB/v52aFoKgkAgCBx8Pn7EEmtJ8uL11zcgl9uN6mod4TA3%20OJwt72zNWoOwc3iszt7W/EexSX928zZYEmHHM/h8XsTjG/CRj/hRVhZFT0+Po1/YSDmd9vZ2nHvu%20uTgTcdxXl88X+v94PvwDTUvaDryxq3G3JkJZw8OxKpHRjv50Uh9OX3cio2JjSBUlb5FdU1MPn89v%20WmasTOHzAAAgAElEQVQfy4U3WoTDYei6jlwud0wJvpMR5qCeSIIg4OjR/WYC28nm3xpKclIgxcJX%209O0XBA69vSncddf/wjA4fOITFyIcDsIwDJSXR9DS0o18YcjQpoZem/R8s387k+EcmxvtwKpap4mE%20xUJXlDzicYKZM8/D9OnToGl60ZDSiUAul0Ff3xGoaj88HmFwA8AVLXagC2omk8X69f8Dv78LFRUC%20gsH8ZE+/f0h5UPIoFrpysrQptj44ETUlEEVhR1cL8PkU7NnzL+jpWY4pU6aM2R5GEAQcPnwYn/70%20p10CsX0CUQIhXrNKxG6iGusxxIax2LGgLImwSsTu+ncKVzl9PNIkuGKEU0xBFT4/QXNzCIJAwHFJ%20CEIGb775JnRdx8yZM1FeXm7aN4xnVcbpZmXC7ojT6SRUNQ6vl3Mc+Tkah4DREVe+yaypqQu//e1L%20KCkJYfnyBQXkLoo8amvLcOhQ5zDlYJ0hQ/9uKiXA49FsldNoFIjVxttJfeRy1OYC6O83UFk5DY2N%20Ux3J40Sqjvb2A9C0OASBwOvNl1zTe9epmIA+HjjQjJ07n0F5ORCJDJEHDVuxOQ+WQJyG0xUbg+0U%20MrSb6OjxwPRFY4fG5Q8Zfv97MIxJAMYehhIEoWjvyN81gQBAWdn56O7eB1UVCzpl6VhYdtpfsbGg%20bIjByf7ELnFtJQKai7ELD7Bfs1MhoyEUu3LLdJrHBRdMRSbDY2BAQTqdxu7du5FIJPDqq6+it7cX%205eXlKCkpQTgcRiAQQCAQQElJCWKxGCKRiOkFxM5JGEm9SJIEwzCgKMppoUAKd+MKBIGzXXhHOsaq%20VDmOw9q172Lz5r0499xZqKkph2GQYXkKUeTR0FCBI0f6kcvl4PFwphphf5Zerz09PgQCWQBc0Uqs%20YiEsa/7Dao7Ihq76+w00Ns7D/PnzJ2zyJX3/stkMOjubwPOKWS1XzDCVLW4QxfxOfO/e51BVBYTD%20KFAeXm8heVCLGbvcR7H8R7GhX1YVQt9vp/HVVuLi+Va89da/Y9Gim8wqrdGEsFpbW1FXV+cSiBNW%20r74V9977X4hGRUclwpZBUhVIQxfWRLRdDHwkBWJHHnafs1+zI4Jiyf9iRMLzBioqSpDLeRAMApWV%20k3DhhRea6kAQBLz77rtIJBLo6OjAjh07IAgCstmsaf6mKAo4jsPChQshSRJqampQWlqKUCgEj8dj%20JuLYZNypaJY3ugWJRyLROSwMMRZFMXqiInjkkdexdethXHzxOSgtDQ0r7bWSSF1dDEePxpFKpZj5%2014UjkfOTDwUkkwI8HmPEMFaxcKhdXF5RhgwSM5m8NficOYtx1lmNoyKP8VSniUQ/ursPDCoOznbC%20qN29mz84tLW14G9/W4fKShHRKBAI5MlDlofIgybMj0V92OVcrJWYdL1g73+6sWUnUDoNlON5Ef39%20f8Orr96B5cvvNJsPR1Ifra2taGhocAnECZWV0zivt5ooSn9BwxN78qkSYU8wO4+Dnmg2hGXXX2GX%20ELeqECsB2M2cdsrP2JGD02H33PTiFEWxQLaqqop58+aZN/SVV14JIN8vouu6WeXR3NyMrq4uZLNZ%20vPHGG2hqaoLH40EoFIIgCPD5fJBlGYIgYP78+chms9B1HV6vFz6fr0C9nMqWFjzPDyZeeUfX5uNV%20HjzPoacnhZ/97CmEQgFcfvlSeDyiOf62WATRMAjKykLwej3o6hqAKBLzWqbkkf99gkTCA1nOFd0N%20jzRUylq6m8sNha5SKQJd92Pp0iUoLy8f03k93g0Gx3GIx/vQ398Mn08oWFhHUh/0HDQ1HcYHHzxb%20QB6BwFDOw5r3YNUHna1hTZzb9X8U6wOyy4NQ8qAfOxFUYX6WB3AEW7bcg2XLfgxNS454neu6jvPO%20O49zCcSRZQFJmoJsdqspudmGH3aXaZfcpMlKO/IYrSldsRinncfQaMJSI7mjsnMa6IQ7Okq0vLzc%20dkdoDUf5/f6Cz2tra83kJ7WZbm1tRU9PDxKJBPr6+tDR0YF4PI4tW7Ygl8shk8ngpz/9KTweD2bM%20mAEAqKmpQSwWQyAQQDAYpHXo8Pl8BVbaJzLB73RDAUBXV3tB+MpOhdgtCKMlD69XxKZNe/HHP27C%20/PlTsWjRWVAUbcz/azjsgyx70d7eN2gPTgpIhOOAeNwLjssVzQE4xeNZ40Q276EoeXuSdJpDLDYZ%20y5YtHbe82VjII5nsR1/fIUhS4cA4OwVgvWc9HgGHDrVi69ZnUFkJRCKF5OEUurJLnNtVXxXLfxQj%20EHr+2PvaaWSD/eaFg6Y1oanpDtTV/QCA8zk5dOiQ6RrsEkgRLF16HTZu3IpcbkiKqupwmWv1zWLJ%20wzqxq1gehJWkrAJxCjU5EYTdYQ3BOYXk2Bue/RohgM/nO6b30VrlkcvlEI1GEY1GbQlJFEU888wz%20WL16NQ4dOoQjR46gs7MTbW1t2LRpU0ElDrVWqaurQ319PcrLyxGNRk2ym4jFSRCEwZBdetQhKyd7%20kGKhm4cf3oI33zyAj3xkIaqqYlAUzfF5izUg5q9RDjU1pUgksmhv7ytI+ue71EUkEiIkSStIJjst%20Ztbrk72GaJ9HOk0QDJbhYx+7EF6v96T0eSQSfejtPQhJ4k3yoGFnuyo5K/nv2tWM9977C6qqBIRC%20QyErqjxoyawdebCbT7b6ym5gXbGxEcVyT3QTYB0mVqw5cWitEdDVdQgdHQ/jwguvg6bZhxTb2tpQ%20UVFxxs7sGTcCqa9fgd7eHAIBL3w+2A7qceoIpiRitYQYKZFerCTSTlXYEQEd0uNEKk6/Y+0UzuUI%20RNEPw9CgqgpqampOuM06JQe6uJx//vnm0B2qYDo6OpDJZJBKpczHDz74AJ2dndi5cyf27dsHjuPM%205H4oFIIsy/D5fJg2bRo8Hg9isRhCoRD8fr9Zgnt8ITIOqpqE18tZwgPHZ7LJ8xzSaQW//OXzSKVU%20rFlzASTJM26Lbyjkw/TpVUgkskgkMkinM5CkvIrStCA8nn7HajK7qkGr024qpSOTMVBfPxWLFs1A%20WVnspEwV5DgOAwP96O9vhsfDOzbu2c3FoedRkkR88MGrKC/PkwfNedCQFWtPYld1ZZfEtlMfI1nI%20jJR7Ym1qiikPu+fSdQ4dHS+jpWUBqqrmOCruM9EDa9wJZPLk6dz06Z8j3d1r4fMJBReAk6TP5woK%20ZaUd2RQ7idb8h9NchZFIwjo2tJjasKvR13UBqpqPnc+cOXPCyvYIIYjFYujq6kJlZeWwv2unXpYt%20W1YwkY3jOLzxxhtIpVJoaWnBzp070dPTgwMHDsAwDGQyGWQyGfA8j7PPPhuiKGLy5MmmZTWt/pIk%20yZzsVqxUWdc1sNP7nCz1x1pltXXrYTz66BYEgzIuu+z8cVdV9KmCQR+CQT8IAbq64oNmlgTZrAxC%200gXW8IXusPT/z4+szV9LBIAEQjyYPXs2Zs6cAU3TCmaJH+t1YRjGMSvhrq4D8PuFYYlk61hnp7Dj%20+vUvwePpRygk2OY7hnothoiDjoKl6sOu89yOPKxKljW+LFY+zfqY2VWIFrNFoetCWZkPu3ffi2j0%2055DlwDAjRhrCchXIKHDttfdx//IvjxFZlm0ViJ36sCMPu5vPabaCnQpxqrKym+rmpCiKHay1RJ5A%20CMrK6qEo+Qa02traCd05jrXaxo7cFixYUHDh08ludBqbpmnYs2cPWltboSgKPvzwQ6xduxYejwc+%20nw88z0OSJPNYsCDfYzF16lRUVlYWKBaez89vGGmO+WidCfx+D5588l0899z7WLZsHmprK074ri+f%20OwJisRB0PQRCeMhyEEeOtGNgIIF0OglFyQ0213EwDN2cdR6NRiHLMhobpyAUCiEQCEAURQiCUDCo%20aLxe51jVR3t7k5kwd9rx2y3e9B4/fLgF3d07UVk5nDxovsOqOihpODUOOhlsjlRkYVe8wNooWf3N%20nOz4ncqvVRUoLdXx2mt34qKLfgq/v3A07tGjRzFt2jSXQEYDSZIRjS5COr1r2KjQkU5qscTcaBJj%20I3X22oWfRiIMtqJspHkMoZAfup4fVBMKhSb0JBJCkM1mx22hoV3itFyY7mKXLl1qJsEFQYAoimhr%20a0NXVxcSiQQGBgbQ2dmJ7u5u7NixA8lkEi+//DK6u7tRWVmJsrIyGIaBkpISlJXJiMUCiMUCCIf9%20kGUPZNk3qEwMs1LKmqBkSYXnOaRSOfzHf2xAc3MvLrtsCaLR4KhDa8fDMWxFYL6i0IAoiqirqy/I%20ObW0tCAej2PJkgvAcUAkEoZhkEELF33Y+36yoSg5ZLN9BRVXdqEqO/LgOKC3N4W33noN0SiHQKAw%20ZOWU62Cb95x7MIqHsEabA6HqxMkdw+kacZpZn+/V4ZDNptHdvR11decWnMeTEYI8bQmE53nMmvUF%20vPnmrZAkj20Iy3oy6A6DkggbhxzNibXzqnKa7mZnUjeS+rASBlufzw7zKS+vhaYZZhhnohYDQghK%20S0uRTqdP+C7n/2fvzYMsu+ozwe/c/a35cl+rslSralVJorQgj4RAAixEyzaLo8P2GLsBx8AM45iw%20B5hu6B47bNoeuyd67CYYm7bDjm57DLhpYZDxArIsJNBWVapFolbVlvue+ba7nvnjvnPzvPPOve9l%20VVZWZSpPxIvcX97l3POd3/f7/b7P9/3ogWB9CG1tbWhra5PmZtjxaJqGF198EVNTUxgbG8PIyEiN%20HvNrpj/LHfrbtvVgx45eDA11oqsri+7uXFStFUYuy+d47docfud3voOhoW586EMPw/P8Fedlrvc2%20yTzPw/kYNNyfsPzaBCEEtu3ctouB63q4di009BITyjLNqUadMoJ//ufvwjCW6iKPOOCQAYYMPETl%20Xf4l5tCaRSCitTGvrJxUOcfWF8NobPpMp4FcDrh48a+xbds74ftO9LwsLi7irrvu2gSQVseHP/xr%205OTJ/0aXlo5HlqRiP4eYu+DL6mSJrFYmhRiBxJXgthplNNJUjcDBXoSkEAQEtm3jiSeeuCU7ydsp%20RBZLg33fx5EjR6K8y7VrV9HRQVAqzYNSF47jYGFhEapK8PLLb6BYrOB73zuN06cvQdc1dHfnoapK%20LVIxkUrp2Lq1E9/+9nHs2DGA++/fV6vMUWrziq6STEzrP1vveVJCCObnZ2qCiPE6U+L3+AjA81ws%20LExhcBB1UuwMOBhFJQJHUtJcVjrcjMJqxljIaKu4nEe4AapfW3Q9XEsMI1wPLCssEiiV5vHSS1/G%20kSOfiHJQ1WoVw8PDmwCygscOv/qrf43f+I07YRheNBHFsJ/dCBaFsIU+ziAmCUB4MOKTY0lVVXzp%20ZBxoiBEHa+ziDX0qFUDTcggCgu3bt0fSImt6EzUNo6OjUdPS7Tj4vhPP8+E4FLlcJlo0hod7oKrA%20O96xB6pKoOsEpqnj3LlrmJiYRaVi49KlCbz55lUsLpbxne+8jkzGwuXLE3jzzctQVRVbt/ZAUQg6%20O9vQ3p4DIajRYoBp6lET4fL8oasEmLff9WYg3moSnRAFrluUlt0zoBB3+nypsmnq+Iu/+A7yeYpU%20isTqWolyISJgxHeBo6H7PS4iaiaoyBvZraRqS9OW1xFdD9cQXsE3l1MwMXEWrmtD04wo35jJZDYB%20ZAV7GbS395P29ofp3Nw/1Kp8+BA/vCksFGQg0kzjP0njRgSQuMZBGVXVDDR461Bel4gBSKkUYHi4%20H5RS7NixY83Bg1KKfD6PsbGxNY9ybmQBlj3QoRS+F4F6peKgt7cd/f2hD/U737kPhBBUKlV88pP/%20D44cOYjBwbCHZXR0CtPT81haKmF0dAZHj56tVZkptcgnPPaengK6ugrwfYrBwS7k85na/17OuSQZ%20oa23qKPVe7S0tADHWYRlKbHlubLFmf3OW2+NYWHhEoaGVGminM9zyJLjMtAQE+eytaHVMl72UTSc%20k50XUwqSsRsiiPDVZKEU/RImJ89hcPAgfN9HsVjEvn37NgFkpeOLX/wb8mu/to8uLl6uo7DEUJCX%20EWA3J67LVNQvilPlFauwxPJcPvKIc3vjow1R0I5FHuUyQEgWQ0Nbkc1m0dXVdctUN1eLwgpzFyoI%20UVCpFDE9fRG6rsJxFrC0tARVJdF113ULmqZB07JIpTrgOMDQ0Fb4vosg8JtEJPX3Tizv5u+5KB3C%20EvmKsmzSMzzcjzvuGABAIjprcbGEYrGCatWBbTsol6uYmJjF2NgsyuUq3nzzEpaWysjn08hkUkil%20TFhWWEWWyaSQzaaRTpvQdR2GYcD3gzqwYdFMeLzKul4IZmfHoGlKw6IcJ3LJg4qiEBw7dgyFghpR%20VzKaSgQFsUpTjDKSvhdXASaf08tzi1VeJRlQ8dWhPIDI6DUeREIqS8Hp019FX9//HTmFDgwMkE0A%20uY7xqU99Hb/1W++IHq64Zj82wRh4JNFYvEgavxjFObzJog8ZeIgAIlJVfNTBPBlKJaCtrQPpdBqP%20PPLILQWP6enpaGG93ojA920sLk5hauosKpVz0DQFhqFGUuiGUQ/eTLMp7GkI4LrAmTMOenruxbZt%20+6FpJnTdkO6CDSMD3y9C00iiPI2o0hy382fJeDZPXNeHYRjo6DDqzvHAgZ01kCG181Jw7txVlMsV%20LCws4cqVsRqdE8qWLBcOEGzd2g9N01Ao5JBOp2CaFhRFrSVXzeherM/GMS/xmYuTlWEgPz19Fd3d%20jYKIsuR4HC0Vl7iPa2BcqX8QDzZ8OS8/x+IARLbR5RV860HExsWLL2Bw8J51bTV9ywFk+/b95N3v%20/j367LP/KwBTSi+xicYrYiaV6TXjKmX/QzTpaQYgfIKcvVjUwSKPUglYWqI4dGgYw8PDt2zRoJRK%20ZU5aHapqYGlpBiMjz8P3p6DrPiwLyGaN2J6cRn6YwPfV2vVNwXVP49SpU6A0DU1rh2lux+HDh+A4%201Uh+RVXT8LxiXREFH6WK0SafQ5MlOmU5MjnlScGXBlPqY3i4P3qPBx44DEqBatWG7we1fI2H6elZ%20LCwU4Tgu3nprBFNT01BVFaZpghBA142oH4ZJd3d1dUX9HZqm1ZlprdXcaCUnV6lU4LpVpFJKbEls%20vEEUwcsvnwEhZViWFgscYjQhMw+TlfEngcf1BN0inc7vuURGQzwOtkbx5yGWIBsGkE4TVKtXMTLS%20izvvvBMbedx0aPy5n/s0uXDheXr58jcQBGZsVVTcDkVGY7GJwDcDJXmxy8p3eRCR5Tt44OCjDgYe%20s7Mejhx5EPfddx927dp1Sw1jWCNhq9IpId2lYHHxCsbGfgRgBum0Bl0nUFXS0PwpC2ziqt7C+0lg%20WQSuW4XjjGF+/ipeeOE0hocPo6trWy03YcC2KSglUvAQcw4yClMGEM2ARM6NU44Xp7UcnV4XGXV0%20tAEgXPSiYmYmzLl4ng/bdjE3N4dKpYLz58/DdV3Yto1qtQrTNDE9PQ1CCPr7+1EoFJDJZJBOp6Mc%20lmVZDf4vqwE0zajNUDBxAapKpMnopOomdi9eeOE5bNmiSYUQxZxGK1GHTAlXFnnc2HWpbyhkX4vR%20h+x/y/I2fBRiGMDY2A/R3r4Xg4ODmwBy4/mQ/4988Ys/Q8fH/65BeVT0PhYnXDNl3jhnwjjpElGK%20hAcQGW3FRx3lMrC0BMzPA/l8B/r6+rB79+5b7jZGCIFhGCiVSi1VfMzPT2Jy8lvQNAXZbFhBI6qe%20ttLIKVOVlXlNm6YG257HxYv/hMnJO7C4mMLAwCAqFQO+70UPZhyFFZf3SgKFVii7ZFBpjFz4nAel%20Xo3GSgFQkMvlpe+3uLiIyclJ5HI5TE9PY3JyEq+88oq0IGFoaAgDAwPo6upCPp9HR0fHmsydhYUJ%20mCZJpIR4Ey3+dxYXS8hmSSx4JEUaSWq+K+k2v1EQiVMCF4Ej7sWDCItCLMvGsWMv4uDBezcBZDXG%20v/23Xyf/7t99mF669Dfo7jajRdw0ly0lZfLNSTanrTQTNusBETvKxSorBh7FYggei4tAuezh0Ucf%20xOOPP35be26IC0UQUFy+/D34/hVks0pdlYyMPpSBthjxyaIQ0SaU58QrlQvwfQWvvlrFHXccgKJ4%20DbX5IoUVR2Nd7yISF8GIoBH3N+LvJSXQKaXo7e3Fww8/HAldqqqKyclJVKtVlMvl6OObb76J+fl5%20XLx4ERcuXAAhBG1tbchms8hkMkilUjBNE8PDw9B1HR0dHchkMrAsKyrf5i2TWxns7+IsaPmFVpaU%20rlZL0DQ3ciiMizTEhVgGHHEgIvt6NcBjmYarb1rmIxMxShHPQ2RMWK+LZamw7TexdeuHNgFkNYaq%20qvjN3/wm+exnP0ivXv17dHZqURMOM7TnucQ43wEZTRFn0tMqgIiVViJ4hPkOYGEhlNk+ePAQHnvs%20sTpnwNthxPWAEEIwOTmGublnkU5Xa1FHo2x2s47jpKhPvOaMM26swlGg60C5fBGvvTaKu+66D7pu%20IQho9LCKQCFLdPKft7qgNIs64vMmjb+3fO406jWJAxB2b9hmw3Vd5PN55PP1Uct9990XdfCzxOur%20r76KUqmEsbExnDlzBouLi7h69WrUpMZELvfu3QtVVSOKzDRN+L6PUqkETdMiSXhROsW27dgov9l1%20NQwN3/veMZgmSUySyzYlcXRVXNQhzsHV7puN8yISj7ex+74+2c9vgLds8TEwMLAJIKs5vvSlp8mf%20/dnv0m9969+gp8dEOh0u3HzTEZ94i5PHlu0eVwIgSclzETyKxZC2Kpd9HD58GL/8y798W1nJMgpr%20YWGhYVFSFBXXrp1EpfIS8vl6Ge0kylAGILLFmwcRXpKG7eqYE6WcP67ixIkfIJXaggce2Icg8OpK%20d/n8C78LVFUFqZSFhYUiBgd7b1iOJCm6kPV+iH0FSZLxnufBsqyWyqx5KpSJKu7fv7/uPruuGyXi%20Pc+D7/s4f/48RkdH4bouzp07h/Pnz0PXdZimiaeffhqGYcA0TZimifvvD1WK9+zZg8HBQQRBAE1T%20aqKPAZLMkWTzrlqdRy7XmPOIizTiooi4gplW8zE3EonICgdkCr1xyXxZJBJuzigOHNizCSCri/QK%20fumXPke2b99Lv/KVT6FSma/TzREbj+KMpmQPfJKcuyjJzuc/ZH0efM5jcREolTw89NA78bGPfey2%20LdMUy3gVRcPk5ClUKi8gn9fqdIlEw55Wog8x4hOjEAYgDEQYeHienFMO3z/AwsJFvPpqgHvv3VdH%20CYo1+8vHEDYG3gh92Cp4yEqM+a9ZIvxmjSSRS9MMS4ff8Y53RPSYoijQNA1Xr17F9PQ02tvbMTc3%20h7GxMYyPj+PYsWMoFov49re/jYmJCWzZsgW5XBqEAIODXSgUMmhvz6KjI4NczkI6bUQil0C9yGW5%207GJychTt7VZs+b2s3DYJFFaSxF9NEOFpUbHcN+m4ZRQbi0JMU0E2a2wCyM0YjzzyFOnr201/9Vcf%20QqXiIJOhdeJrskoOcXGLo7FkEYhYwptEXfHgsbQEuG6Aj3zkw3jiiSciEcHbLb9hmiZmZmbqqj7G%20x0+iVPoBCgU5eMhyTc06e+MAm72PqHCaRGMs/w8VCwuX8dprBPfee2fUqMeosKRa/eulsJp9npQn%20WX4R6PqtXyBEcy/btpHL5ZDP57Fr167oZwxg2OeapuF73/tHnD17CtPT05idncPp02/V6DYa9cEw%20kcudO/swONiBzs5Q5PLUqSvI5bQ60dQ4tqCZx/1K6bO1f8ZaB5HlSDuA55U2AeRmjT179pK//dtZ%20fPnLv02/+tV/je3b05FrmViZxVtZxi1sSVImfAlvHHXFKq5YwrxSoUinM/j4x38Bd999920JHvJ8%20k47R0ROoVH6IfF5DKtUoaifSV2KEIHuQxRwA+8iuO4sYxNLIVtwlKVUwP38Zr71G8cADB6LqLNZc%20KiY8m+UvWs11rCQC4edZEFDouhFJpNyiZa0WoQTwfS/q/g+F/CgIUTE3Nw5VNUCIBk3TYVkphKXK%20IQV2zz33YHCwAMsitTJUBfPz8/B9D45jY35+Caqq4KWXTmNpqYxnn30Tp069BUVRMDxsor9fjXXy%20u1nVU2sBDq38XtzP2EvTgBMnXsO+fe/cBJCbOT71qf+DfOIT/zs++cn30Onp01CUIjIZNVr0REln%20cZGTcfJiEyFfviuq6vLluiF4UARBaLL0iU984rYWKRQjEQAYGXkDpdLzaGvT61RRxUq3uCqZJPqK%20feQjA3a9WQTCRx98hXNznSKC6elL+MEPCO67b08djSB+LnuPpJLjZt9Lyn3I6CtFUZHJZG4JnUlp%20AEoDuK4DSv2Gcw+BnEDTAlBaheNUIlApFg3oegqpVAa6bkaqsYxmBHzkcplobmzZ0gNFAe69dxcU%20hUDTCAwj3MV9+ct/gXPnnm8A0VYA43qoqZsFPrK5ENdv1Ap4sLmqKIDjFDcjkLUYuq7hq199lnzn%20O8/Qkyf/Ht/5zpfR3m5Gi5+so1XkL2UAItO/Ekt2WcJ8aQlwHB9bt27Fr/zKr6Crq6uhcuV2BQ7D%20MDA3NwdF0VAqvYp8Xm+IPMSIrlV1U9nDJjb/ie5uvCZZM5nt+ryVioWFa6hWt8Oy9Loafd5+lF/Y%20kyROVhqBtGKFuha5jziqyvMcBIEHwAcQSMGDUgJCNHR0uAiCeSiKBUCBphmg1IPnLWFxcQlBAJhm%20oaHKTBaV2XaorO264TOjKKEAo643ii+2clma9fPE/c3NjGDE807qO2s1orly5cwmgKwd9aLgX/yL%20J8kHP/gknnrq4/Rv/ubP8Wd/9vsoFBS0taWg67Qu8Rt3g0UKi0+e87QVy3csLrqoVDwcOfIOPP74%2049i/fz9c111XmkaEEDiOgwsXnkY6XYZlKbGKqHHKx7IcU1wJr0x2JI6qEoM3nv7S9fpmxFQK8LwA%20f/d3z+E973k4SkKy6EPWpX49C1Hj4hyf56mnRyksK7OmpmFBQOG6VQSBAyBoSgvZtoZslmK5UOD1%20w3oAACAASURBVLBay2mUQYgORdFAiIkgoKhWZxs2Bjxgs/vMl7kuR6FE+v9l3j/NQDzunt7sS5x0%20fHGA0co5sWvCrtEmgKwxJ3ngwCFy4MDv4fOf/z189atfpV/5yhdhGD6q1QVYllJbCImUypKV77K8%20R1hlRVEuU1BqIJ1O4UMfehxPPvkkHMeB7/ur7ku9dgAyDk1zkUopkU9BnE2ojL5qxZwnrgorie9m%20CwqTh1iOOhud3hiI5PMUr7xyAo88ciTqAGfHyO+YV9JU2KyBMAk82Lmqqg7TNNYMPHzfg22XQEjQ%20Uj7B8xSk0xR9fUEd4IYqygSe54BSB75fhqJkYRgqPI9C18OfsxxKnKzM8mlTTE8vxhazrGSRjrsf%20cbmo1Y5C4irsmlGcKyn/3gSQWzg+/vGPk49//OOYmZn597Ozk5/93d/9vzAy8hb++Z//CbkcIg8D%20TdPqAERRNNh2gHLZR7Xqo1oNcMcd2/CTP/ludHd3oa+vD52dnQBCQbn1PCwrj23briKVInW0n0hb%20iREcAxK2y28mjx1nziPLTfA7UU2rj1pYDoWZibFohKkTpFLAzMwMpqdL6OxMxwosJvHVzYAkCThE%20SjTcmavIZrNrlOegqFZLoNRtWtnEn4Pvq8jnQ7AxDBWlkotqtYKRkRF4no2lpQWBblLg+xRA+AyZ%20Zh6ZTDva2trR25vFcvlusvR5nKJys5fsb5IW7JudB5Edoxj5xh272Fh7PTTdJoDcxNHZ2fm5jo6O%20z/3xH/9J9L3R0XF69Ogx+L6Ps2fPRIlk0zTxW7/1W7jrrkM4dOgQhoYG0d3dBUVRa1LdQZRA3Aij%20u7uMTKZeTruZ01uz8t24CiyZ8GF8CF//oLEoROb0xgCP2YXmcgqOHj2Ghx9+Z2SPzNMrsp1eUt6m%20WR7kdgIP2y4C8GL7KGTnGQQaCFHh+wsYG1vAhQuXoWnzcF0Cw1CgaQTZLIlVFwg3XkuYm7uGiYkA%20V6+2wzRzGBrqR1tbAaapgdLlkuDOzjwmJ+sr8eKuO7+oite3FRBaDQmbuM2QbMFfCeDFgQl7bQLI%20bUbV8GNgoI8MDPxk7asn6372X/7Ln9NDhw7i4MEDCIIAjuMCcDfcTaQ0gGlOwLJIXcFBXOQh681I%202uXGccMy3w5RKlvmscB+xj6XgQij4MrlMsbHZ9Df39VgQ5oUSayEzkpaHMJj09fUlrRSWYwoK7E7%20O65XghCCkZHLWFr6McbHw2uXzYbHLkacYoRZf74EQUDgeQp8fwmuu4SzZ0dRLgfYsmU3tm0bQiql%201+g1GrtoiiX1sgU77nqLGlR8wQb/cbUiDtmGIS4SSdLdE/+eMSGbALJOx7Zt2zA1NbVqbn23K6CW%20SuMwjBJ0XWkqpR2nLtqMXxdd3UTwkOlWxeVMeKMe0VuB5awYkFgWcPToCTzxxPvgum7tXFSk0xbm%205hbrOoVXsniIxmTyBSPsA7oR2RrP85BOp1uOPFoBj+WPoUDmxMRFlEqj0LQKOjsVacEEb8wkvg+/%20wMuESF03dNqbmzuL8fEfI53uwtDQdnR1dWFsLIDvK1LQiFtUZYuxOJdkEv+ivM2NimmKYBFHSYnn%20JDsPvvqTffQ8oLv7jk0AWa9jcHAQ58+fXzd9HNczggCoVH6Izk491m+6Fd+FVhLoYl6DPcy8AKLo%20ICgDF5YQ5yMQvpudN+kJIxEbU1NVFAomPC9UfpWVEcfRWM0StbIFhRAFbW25Vdl86Lre0u9Vq0Ww%20Kqtm4AEAU1OjmJl5E+l0gHye0VSNgqQieDTTk5NVMoay/AocR4Ftz+PMmVdx8eJ0zUyscSFNMnqL%20W5Tjdv383FpNEOGLI8TjSwI6BhJxPkR88U5X19AmgKzXsXfvXjz33HMbOgJxnHmkUlqiqm4z+ewk%2046g4EOGpBR4ceAqCBzmWDxGl2xmIMN0s0S9b14F0WsOFC2/gQx/6lxgfH8PS0rS0H0UGcEkgwn8U%20ezzWWizTcSoIAq8uYohbKG3bwejoKSjKHAoFwDTlfhxJ9tB8Wa4YgYj9VEyan30MQV1BR4eKqSkK%203ycNfVd8Iy+/uLL35HNh/JwQ5xF/T/mfieewkio8/l7zYJBESclsIsRqTxE8fF/DkSMPbALIeh09%20PT1YXFzcsABCCEG5/BayWbLifIdsQVnpiPNN4KMQ/kHnoxL2YoEhk38XQYQZ9ExNjcP3fQwNbcHi%20Yjt03YTrOnU7VJkFbrMIZPnvQz0xy7LW/D76vg/XrTb0NolRh6pqmJ4ewdTUaWSzASyL1KkM8BI1%20cYUSSRFaXD6DVcrxzqGaBuzcWcDx4wE8T6lz/ZQBR9yLVzDglQz4ecNvOGRRb1zkGXd+cbkKUUdP%20dvzNfsZr7VFqIJfr2ASQ9TqGhoYwOzu7gc+QgJClRFmSOMVQ8XvXD2KNkQn/tbhLlNmIMvDgqRZ2%20/MuRSIBLl97Cnj131qQ2FOh6KMvheW5NB4q2tJAsfx6aO2UymVu6yXDdSqKOFBsXL56E74+gUCBR%20wYRMoqYZeDSXlJEbhYmbk9278ygWl6WB4iIQ8WMciIimTiLrzKJVcfPSrDdGPLck2opFJCKQJFlF%208DYRfN9ZuRzaO28CyDod+XwehmFgdnZ2Tato1i4C0UDpBFTVkC4a7EFLEri70XVTBiAirdDMoEf8%20Wkz6qypgGAQnT57EwYOH6kQtLcsEYNX0oZbLsn3fr/PXYE6A7COTP7/1FGQVvu80dHWLZbZnzrwM%20y1pALqdE+ma802MceFwPgIgRCFu4GfW0/AqQTmfhONU6i2je1lgGIny0KeqnMVCIS1ny0W2ccnSS%203UNS1ZgYScSJsrJoLM4y23WBSiXAHXccRl9fL9kEkHU6WLfwrfYsv1nRx+LiCAxDjbWiFReNJHpk%20dQAtuRs9LkqJi2D4QgBdJ7h69RyOHTsOyzLhOA4IIfA8L3Lx4538ZInr21GaxvMcKAqR5qLCBTXA%20uXPHkEotIptVIkMwma9LEoA0s4WWLbKyKIEHJN/38YEP7MYLL5yo89jhwUOktthLPEYeRBqFIZM3%20LjJqTtZwKuY/4iKtOOATzyfJoK5UcvDooz+FjT42fASi6zqWlpbQ1ta24c4vCEowjOYLhfj1jVaw%20xD3Msqa+OIOeVqMRvszXslR43rJkOaUUpVKpIS9ECIGu61G0sZa6VSvf5HgRgDRWkxGcOfMa0ulF%20ZDKkTllZ9MyRgYfMiG0lu3SZWVh93xDF1q05fP/7BLZN66IQkdLhIxfe50UEDvY5O0b2t+Jx8scj%20M4OS5bx4EGGgxJfdioAhgmGcNbZMa29mJsAv//L/TDYBZB2PQqFATNOkU1NTGBraeOV0nncZqZTa%201LhHtsO/GXpCcZFEXMTTzHSI35ErSkhjlcsl9Pf3QlVVUEphWVadYjLvO86+HwRBRF8xUyVFUaLv%20sc/XMlIJ+3fqCzz466GqKs6dex2mOY9MRkE63QgecTI1ScUSrVJY/M5crLrjc2mdnSaq1RBAbLt+%20J84vrqzHR7Q5blaqzB8fq9zi82qiDpssAmkmOxIXbYhRh4yeEyMQ5iu0e/fDeDuMDQ0g7OGkG1KQ%20hiAIbClV0SxXkfS9G41CWtGlatZnwn/kQURVCUqlpcjaleVCGDCEv6dI5wFz1mNGSvy8YB9VVYWm%20aZEtLP++q50vCV0EvZjmPoL5+UkAE8hmlTpZfhE8ZNbPSSKZSQu0uMjyDpMimLD36Ow0sWfPAEZG%20riKbJdEO3DDCBZWV/7JIgs1VBiKy4g4x/yH2HYkVfUkAlBRdyZr/kozoePDggZK3iLDtMHn+7nc/%20uQkg632YpgnDMLCwsLAB6SsPhNxeQjvNKKxmuZOkfApbLCqVMggh2Lp1K06ePNnicdE6YGF5EnFz%20EQRBraTWRbVarfl/kwaAYvQYA5vriVyCwI/NB01NzWJu7nXk86GoJOu9YKARlzgXJUuaqSyLYM/3%20YsSpLIvvEQQB3vWuIfzBH1xCe7sG2w4jJX5Xrmn1AMI+MhOrZnNEVDEQe1iaWTC30uvSamUVH13J%20nE0rFWB62sH27Q9tAshGGF1dXZiYmICiKBtCOFFRVPi+j5mZ8Ujy4nYCjyQnvxuhxPiFdzWjSj6y%20UFU1orIIIXVVXbz4JgMXPnJhtJgYufi+D8MwovcTz6OR1iOYnz+DTIbCspbBgwcOMe8hLsytJtDF%20a80vzLz/SrOqvbvu6kBXVwHlcjGypK5WG2k2dowicMhoLFE/jaeukuR3WulxEbvHxehDltuQ0VUy%20f6FSKZT8X+tG1E0AuUljx44dGBkZ2RDn4roOTp16HuXyBFSVYNu2NACy4gVZVDldLQqrFT+F1aLK%20bj4g0jpKTElolmH0mOd5DV4yIVUVoFgsRjkX0zRr1WNiNZGCU6d+jFSqWNckyDcKihVXrTSNthoN%20ionmpBwDfz9c18fjj2/H00+/jkyGwLLCY3YcNCgk8BESDyRx9CdPp4kaarJqw2abG1nvRxxtxRcF%20yCgrHjiYs+nSEnD8uIldu7b/yiaAbICxa9cuvP766+uyGz3k7imuXDmBqakL8P0iDEONJLnFkDzJ%20GCfO9W01LktSlNHMWzzp72Xfr1Qqt9295BPwPAAxCoyVFDuOU6scK0e7c36UShVY1jRSKSJtEJRV%20XDUzCIvrleA/l8m6sCqpZr7glIbH8653DeCv//rHKJWcCEDESjERQJKiIfa/WdTBRyHi+Yld6c1y%20IM3Kd3kL7LiIg9lhMxApl4FiEZiYCOB5FB0dHX+0CSAbYGzduhXj4+PrSlCREALXdTA1dRVXrrwM%20XQ9gmgSqqkW7S1ldu/iQyMofxeqV1YxCmpkCyYChFU9ynr/2/WDd3EMGdKqqRpQG+14onFh/YWZn%20r0BVK3VOkmKllbgY8yW7oupuM00tGZCIi7ZscRZ/h33/E584jD/5k5ciADSMenHPuKqwpLnEa2bx%20BQKibE4zF00xAkmqwJL1dzDQ4BPmjhNGHeVy+JqcrOKuu34eZ8/+N7xdxoYHkIMHD667qGNmZhzn%20z/8TdN1HOk2gaUQqjMfr91zvazVoIdl7Jh2X+HfNVFz530mnM+u6qi48dtIAHqqqg5C3YJpqrCii%20rM+jVb2zVrq1+fvGPmcLNNuQsB4OEXSCgGLfvgJ0PY1isRLRb0kA0kwVWLz/DDha7W+Jo+aSIhA+%20cc7oKz7qYJVWjLaqVkPwWFwENO0AstkC7r333k0A2ShjYGDg6xMTEx9ZDxSW53m4ePFVLC5eRDpN%20oKrLIokyJV3P8xEEmlSGmn9A+IglbrG/Xj2sJLvPZhRCEqjEgYmub4zkZDgfafT5pUsX4boE7e3x%20yXI+0kgq1ZU1ZsaBBx+FiNQVn1TnQYSnP3lqyTQJ3v/+nfiv//UYTFNrSKAnlZs32zzwGyg++mhF%20lieJvmIvJk0iRh88gPDgwSquSqUw7zE97ePjH//f8Mwzz2B4eHgTQDbK6Orq+ighhN7uu1ZCCN58%208/sIghmk0wS6Lq+s4ekIy1LrROxkMg2imqlo0sMvHisFEbE0MulhbcVrOu73+Z2iYVgbpK+nPgop%20Ft9CoaBIq5aSfF1kuYWV9oCIEu+8Ci67p2xusE5xfq7wciRPPLEFx49PYXx8vIF+4ym1pIWeKQDz%20NBMDNn6utqrr1gxA4vo++JcYeTDwKBaB2dkAe/Z8BIZhYn5+Hvfdd98mgGykcccdd+DSpUsYGhq6%20TRcfgpMnnwGls7AspcEUSqyoCXM7OiyL4Px5ufAb3wTGN1+JNqEMCGQ19a3wyTJpdJnTm4ym4iOY%20JMVT9tFxAnR392yAGUkBqADCC2bbZei6L/Wxj/NvifP4kP1spT4vfFlvks+LTJ7fcXx87GN78ZnP%20jMI0leic4qgrme6Wrtfn8UQxRza/mxUJyOirOKVdWe5DFn2wnAcDj4UFoL39MB5++L0AKCYmJrBv%20375NANlII5VKwbbt2/LYgoDixImvQ1XdugdOtutkD4imEXR0qOjpAd54o7lcthiBsEWBPZAykFhJ%20QlIGBElcdjM/6TiO2nUByzKiXMJ67usJ+0JUUBqgXF6CrvvQNNKyiyQ/H5KcJa+HuRWFCmU2xXwF%20lBgR9fSY+OQn78Ff/dXrUFVad7zNNiJ81CErVRZFHeMoujhaVJZAZ9QVH33w2lZ89MEApFgE5ucp%205ufTOHLkqVpjqI75+Xls2bJlE0A20ujv78ePfvQj7Ny587aKQAhR8Oabz0DTPBgGabAileU+CAEK%20BQU9PSooBQYGwgnNZCN4KitJggJo3M2JNBf/UCaV4yYt/nGdv0mOb3GVMdWqj+7ubnieh23btuHl%20l19e5zkQBYQoWFycbgAPvuIoKeKI69hfDZ8XvgdE9HSRSfYvF3dQPPRQL0ZHd+H5589AVUmsCrAY%20dfp+OI95Kfm4ZsmV9IG00oEuRh+s0oqV7PK01fw8sLBg4aMf/SKy2XztfiiYmprC3r17f2cTQDbQ%202LFjB86fP397kRgUOHnyb0HpDCxLaUiaJlERe/YY0fdTqTCMZjso/mGQGTjxD7LoBifuDuMksXm6%20ShZdJNmENrMQFak49lBXqxQHD94VRR3r3WUyjEAAx6FYXLyMnh5DSlcmgcNqe7uIQ5w7Yr5EdKMU%20Qe3nfm4XpqfLOHv2aq2sOZ62CoKwaku8/3z5cpzScFyRQFL5rijbHle6y0cfLPJYWACmpgje+95P%20I5crgNLw5BcXF5FKpaCq6h9tAshGOklNw/nz52+bRScs1b0ASmcj2ooXxYvzsmb0VVubiiAIn47d%20u4GLF0P5CDb548ylxF2arLZfxoXHccoyaoAHiLiPzUBD1hFs2xSHDx+G7/sbwqKYEAWU+pifn4Jp%20arEugiJlJeYrZAv7aoJJXAOiSGPJNiuVioePfWw/vvCFBUxPLwIg0gIKWQ6PF4pkSr5JEYhMS61V%20AOGbB1negyXO+V6PUikEj+npAO985y9hy5YdEXgIAHJxE0A20BgcHLxtHOgAYGJiHCMjL0daRzx4%20aFo8r+37FO98ZxqE0AhgWM6ETXqmNSRaxYpKp3xXL1t4RFpCXDjiOtyTPKbjXN7inN5kYnaOA2ha%20et3NO0opfN+XumGyCCQIKg2J5riEc9z3k7rMVwNAZLpkSRpUYlT0hS+8E3/4h0cxOzvVEImye82i%20AMMIP7JSZiYFvxK5FnG+itFyUu5DjD5Y5FEqhb0es7MK9u79KPbuvR9iL8/ExATy+XydWOcmgGyA%20sXPnTjiOg0qlInWqW+tFZWHhFeg6jaQe4sTweCABgFxOhWU1Wp++613AP/1TqILKK58yI0bZjpTf%200cZJqMdRWHGVLXElknFJcRFE+IeZpxNsm6K/fys0TVuXJbwyqZMQQAhsew6qqkg9UJIWaDFHdTO9%20XtjxsM0H718eFxWJtNsnP3kP/sN/eBljYzMIAqWOamX33zQb73+cYZYsQo/b8PAAIvZ+iFa0fNc5%20y3sUiyF4TE0B73vfp7B79wGpqkWlUoFhGIm6aZsAsg7H7VSt4/sOSqUFpNNKQ4WJbIfFP5htbYqU%20zujqAtLpcMckK5uUVcDwEhFi9JHUob4Sj+k4fwV+4ZCVUfI7QscBlpYC3HVX34bzddE0DY5jI5Np%203qEdR0EmRYyru/GRU5simCT50Xz60/fhv//383jjjfPwPNKgN8U+8na9PI0Vl0hPikDiaFYeQGRV%20VyzyKJdD2mp+XsPP//z/iba2Qqwk0vz8PNLptHTDsAkg63hs27YNruvCtu1bGoFomomjR78Jy1Ji%20O3RlHbvsId2+Xa+TkeDHXXcBzz2Hluru+Qib1xm6HutT9nVccjyOopLJZotUAtsFDgxsxc6dOyMD%20qY0ymD5bq4ARF0He/HxNslhms+Pn59MHPrAHPT1t+Na3XsHQkArHAbLZ5fvNPN8ZgIi+7+JGq1kZ%20b5yBlKxpUBZ5zM56yOfvwkc/+rNob+9I3IyOjY2hvb19k8LagBTWDtu2L1QqFWSz2Vt2HFNTl6Gq%20ZWiakiiIJ3LhQPgQdXSo8DwqfWB37waOHQsnf1zzYT2t0ugtHSf9LVZlyYQOmyXGRcpAfIDjOOhy%20GXjPex7ccOCxDATBisGDvyfraTDp9927e/ChDz2KH/zgPK5du4zubh22HUbRjhMCCNPSirPuTarE%204oVCZdFHM/AIq60oZmYATbsTu3Y9AN93MTU1hVQqBUIIS5Y32CmnUim8ncbbAkA8z/v3vDrqrRq2%20PQtNUxosSOOsPflXf79ac9aTLyyeB9x3H/D97zcCURztxB+DKHki7uj4vxf55WYqpyJtJXN840GE%20lU4WiwG2bz+AdDqFDelKjMbrHEfByKJA2T1ZTXVlMcqQybtfj2EYpRT5vInPfObX4fs+fu/3/g0q%20lSqy2RBEUqllEOGjEBFE4nzfxWOTqRvI+j1YtdXSEhAEg7jzznsxP7+A5557DouLi5GqMpPo13Ud%2027ZtQ29vL7Zs2YLZ2Vncf//9mwCy0UZXV9dHHceht7IbXVFUjI+/iVRKHmXIBPH4r3fuNJvuSu+4%20AxgcBEZH0UB11bv61UcfTCpC7G5OWlBkL57GklW6xLm9iVHHsteChgcffKAh+qCUolAobIioJAio%20VFOsWSTSivf8aoNIK8AmHn+caGYYBavo7u7BZz7zG/jud7+Fl1/+ewwOWshmlcjZkOVDRG+RuFJ1%20maNhnGQJT5OGuQ4Xtt2OqSkf73vfQ+jr68W2bQruvvtuEEJQrVYxPz8Px3FQLBZh2zYuX76Mixcv%204h//8R8xMTGxCSAb9kQ1DZcuXcLWrVtviS9I6ExXgqrqLclT8AuFqjaaD8kjLeB97wP+838OHwjx%20vUShOtFfmgctfiFIMh5iX7NLKquwEsslk0x62AO9sODj0Ud/MhYk2tvbG9z/1uMwjBSAUqxHimzB%20TopIRMpxtYAjLuKRRSLNfnc5HxHSP1u2DOCTn/yf8OlPfwaf//znMT5+Gem0VxeN8AZbMoFGmbOh%20GBXz0S6ba6y7vFo1sW/fkxgc7MfXvvY1pFJWVIbNA15nZ6cA5ASqquLo0aMYGxvD2228bQDkyJEj%20UBTlllTyEEIwMnIGuq40bX4SoxAA0HUCw2htNfB94P3vB772NaCnp56eYgl0flfGq5zKdnOyRUi2%20Y261MVCseBHtQUNbUIr29gEMDvZv2NyHGIE082yR7apFMUw+orwZbpNxVsWy74m+IrKKKNNM10WV%20juPgS1/6EkZHx1AszuPLX/4DlMtX0d6uI5PRYu19ZRSWTMmZF0csFl0UiwR33vk/YM+eYbS3d0HX%20NSwsLETH0yodRwjB+fPnEQQB9u/fvwkgG3HkcjlcunQJDz/88JqX9RKiYGLidaRSaoMsuwgmsrJM%20XScroiwGB4Gf+RngmWfiw3lWW88n0JOa2JqBSJxEdrPog6esQvAIYFk9eO9737vhwSO8fkpTPxf+%20nsmiEX6TIJOmWQ3ain9k4iT6RQXmJCrJ86jU28VxHHR1daKrqxP/6T/9Mc6fv4hXX30VZ8++inJ5%20HuPjk9B1H6YZGq0ZhlKXTOf/r+/T2qYlgOMAvm/ANNtgGG04ePBe7Nq1E45jR+tBaDdcAgCk0603%20ro6OjmJpaQme52Hnzp0Eb6PxtgGQX/zFX8RnP/vZW9Lk47oOFIUkJqhl0Qh7EIaGVnabfB/YsgW4%20+27glVeA9vbGB5hFHjI/iZWW8jYTqeMjD767XFY2mcn0473vff+6Vtpdychmu1CpTCIISKyfS1xU%20wiKPOMviGwGSVgzAmnm8yCT8lzcYFOm0Bc+L3ySUSiX09/figx/8ACh9AkEQgBCCV199FRcuXES1%20uoTnn/8+DEOBrgfRuVIKVKsBBga2oVLxsW/fIRQKefT19YEQhbMVrjT8z2q1CiBU8PZYJ27CUFUV%20r7/+Oh577DF87Wtf26SwNuq4ld2hnucACGIT5CKFxX8eBEAqRa5rAXjwwRAYfvhDoFCoX9SZci/j%20k2Uy2dcDIGITYVKPR33kQWHbFh5//JENBR6+78OyrIR5acHzKHyfNEjbyxZn3ttF9HcRRQ0ZyKx0%206rdKoSUBByuokGlPeR5Fd/fuOh2pVmhg1qD34IMP4qGHHoKmaRgcHMYrr7yKp556qmHBD9+fIAj8%20unLbZv9nJfNvdnYW58+fx+HDh9929NXbCkBM08SlS5duWZdoUsdwMldNMTCgw3VXnrvxPODIkXCR%20PnoUyOWWJSOY3hCveNqMxuJ3uyKFJdIwYs+HLPdRqYTHVixSBEEOP/uzH74lBQ43exiGkVAM0IfJ%20SR++rzREbXHS+Hz3t7jYi706fKTSSk5EBAX290lul7LjZJGwfFNBoWmZ664i830/EtU8ceIEuru7%20YNvVG954MDn2gYGBlnMgzz77LPbv349qtYq77rprE0A26rjnnnt+RVGU/3dqakoqbnczRxC4YO5z%20zUBG/NqylEh59/qiH+CBB0Ia6/nnlxdxBiJxVS3NVF1ltEScx4KoNcS7uxWLFJlMHx577L0bEjya%20jUwmA0XJw/MqsYKTvMWsLNrgI0XRQVD075DNs7hy3LgIM8koTIxAZBGpbQc4dOhOBMGN3W9KKTRN%20W7V5QwhBqVRq+f1830e1WsVP/MRPYGJiYkNUBa4YdN82SKlpf1QoFG7ZItXq7q+RIyc3XO9PKbBr%20F/ALvxCCxMxMmG8olZajAEYlVavLWkBsoWcv3h9B/D7fw8GoKfYe7H1FO9C5OYqBgb143/veD0Lw%20Nh0BFKWtIWKLc5gU+2zi+nCa5TCS8hmtgEeS30uSWGYo9NkmTaCvdKiqijfeeAO9vb2rRnvatt1S%20BKIoCs6ePQtd1/HQQw/h3LlzOHz48GYEspEHIQSjo6PI5/Nr/r9lpY5JwME/1DcW/dTTGB/9KDAy%20Ajz9dEhp8ZIRcTIRcaKKSSKKfM7D9+sBqFwG5uYCPPnkB9HR0fG2SZjH7WLvuGMPLl8e9t8u0AAA%20IABJREFUg+uSOiCRRSKMuuKjkuVFrZ7ikqkaXG8EIpNCjwMSMRLlKU3HAQwjtyo5SUopVFVd9fnT%20Cn2laRpefPFFfO5zn0OlUsFbb72FAwcObALIRh26rqOtrQ1zc3NrH+YpKigNDYT4hzQuScnnGjIZ%205bpBhL0XH3QxG9ynngJOnQo91Ts65PX1shJj8fjj5EvEbl/HAcrlAOWyhgMH7sb27dtvqEyXVeRs%20jOg4DdfV4Lq+VC+MFTcw8GDXOOkey5wokxRzW1VZliXGk4QzRbmaatXH4OCuVbluc3NzIITAMFYW%20zSzPGyJENBrm5mZx6NDdUBQVhCjwfXkl1vHjx5FKpZDJZKL3eztuhN42AGIYBgqFQlSmt7aRjwre%20ja2VyIItDOn0jQFIHEXR1RX6iNxzD/C974WUku8jMrkSQSQJQMRdp+jlUS5TBIGFvr5teP/77wWA%20G+aLd+3ahWKxGDVyrfe5aZoDqFavwDQJR/U0SnawhVk0CYvzd5G9kiJeWfTBfy9O5ywJTPjcV7Wq%20Ys+evbDtyo2Tf7WDa14YQ0BpgCDwEQQ+bLuMIHChKBSUetx90DE3t4SJie9ifr4HxaKKHTvuhGm2%20wbJyACgoDaCqKk6dOoWf/umfRjabxdzcHBRFQV9f3yaAbNTBwtKJiYk1/9+qqkd1/km7PL5RjO8y%20vhHwSKrb9/0w8njf+8L8xPx82DcyMbGsQyQDERmA8ElSFnUsLrro7BzCI4/cB9M0oet6HT3Aoojr%20UQdguaz1Dh5BEMB1Xdx55ztw9OgFpFKGlFIUS6zFiKM+4q13nIyLPmRgEtfXEef1IuY9ZIZgfOn2%20wMAhuO7qaNItLi6CEBJbJk0Igeu6KJfnoCgBFIVCUQgMA1gWV9Wja2KaOnxfwdatc/C8ObS1AYuL%20p2HbOjzPgGVtx65dP4nTp09genoa9913H3zfR7FYBCEEHR0dmwCyYU9U05DL5W5JmBkqd2YRBLPw%20fdLQUSyr8xd3gitZJ2WgEVcxw/6PqgJtbcB73hMCyewscOVKaKbDFoLl3Ait1dXz3b6hQRClKoKA%20wPcVHDp0D9rbC3AcB5qmIZVKgVKKIAigadrbotO82XBdF5qmwTB0aFofbHtWCiCyXFRShZxM4yzp%20b2Q0luhbLiraxr1EwUzWOFoqUezfv2vVnkG2eeA3EYQQeJ4P2y7B96sIgjIcZxa+XwJgw3UXQIgL%20SqsgJOAAlgAw8JGPVNHTw58jgeN4sG0P5fIJXLhwAteuKXj44cMwjDSq1WK0ASJvw0qQt1US/ciR%20I3iG6XusafQDaFoejjMDSkkscIiLP8DKeFuTF5FRVUndzbKfM0e4zk4gn2/0SRgZSaFatZDJdIJS%20wLJSyOezUBRS46Vn4TguyuUyzp07iyAIoiauIAjQ3t6Onp4epNNpdHZ2wnXdaDf4drIC5cEjlUoh%20CAIMDt6Ja9deqMl0JMuWs3kgehfxOTRezr/Z/Gk1ByLSVWKTqJjzYPOnVPKxZcv9yOWyqwYgYj6T%20UopicRGuu4AgKGFy8nUoShW6TqDr4TVl4EyIAkVR6qi/4eFZGIZfd87156KgWkUtMjmKP/3Tj+ED%20H/giZmdnQQhBb28v2QSQDTwcx7klixSlFH19e3Hhwnn4vlJXVcOL4PE5huWGMNoAMDLntWb0Q5Lk%20hFgS2rjDpCiVLCwsZKDrKgihyOVSAFQuqggPpFBoF3aDHnw/7ARmrpCTk5OoVqsol8vQNA2maUJR%20FKTTaViWhf7+fuTzeeTz+Whx5WmrjTBY17RlWdEOtrd3EBMTAyiVRqFppM610nXjQYA3B+MVlmXA%20kTT940Qy43TOknxeWLMoaxgNgjz6+7etKgPANh6pVAqu62JhYRRTU6fh+3MwDA+plAJdV6Tii42u%20nxTt7RQsnSJ6p4vy77mcgra2AC+99K8xOtoL31fWvL9sE0DWeNx///34xje+cQsSrxSdnT24eDGL%20ILCj7m9ZQ1hj0xhpMHsSK7WS6Ie48sukUkwGXLatoVTSMDOTgW1rCAJa+11Sk4NXG/IX/NehAZYS%20gbZhGMhms+jq6kIQBHAcB4ZhoFKpwHVdzM3NYXFxERMTE6CUolKpIJPJoFAowDRNDAwMwLIspNPp%206B7y9/F280xnjW4y8PB9XyLYR3Ho0EN47bVvoVp16uirOPqJ3W+28PFAIrMq5jcqshxKM5/7OJOw%20OKHMahUolQL09+9BJrO6bn3hzh+oVOYxMvI6yuWryGRUpFKArit1VCBv4iaKh1IK5PM+2tuDBhVh%20Uc+NnVc6Hb4yGR3p9Cza24Fnn/02ffTRJzfFFDfqOHToEObn52/J/w4CD5lMH1z3csMDKT7cfMRR%20LgfwfVXKg4tVUSKAMGDiI4w4eQneo2FqKo2lJRPFoh79PKxAYYuSVqPl1OtaVBmd5fs+TNOMyjC7%20urqkIMS6fF977TV4nhc5wpmmicuXLyOdTsMwDBiGEVmK3g5g4nleBHb8+Xieh1QqFRsNZzJbUSye%20haoqDW6VcQu9mPuQebywOZMERHwEEkdhifSVaEnMN5yWyxRtbbuxe/ehG+48FwezZzhz5ruwLIq2%20NrVO8p3Z4Yr9TaLaQhAQbN9eQjotLxARXQwtKzw3y6p/ffnLPwXga/TRR3+GbALIBhy3sneAUorB%20wb04c+YtaJrSUIrJHxaLTjSNYmxMwR13hGJ7rfDYzXaQyzQYhaKEUcbMjIlSSUW1qmJ+3qz9HY19%20H1aSfCPXMkncTkyKDgwMgBCC7du3w/f9CES++c1vIp/Po1qtwnEc+L4Hx3Gh6zpUVYWmaVAUBYZh%20QFUJVFWrgRUFQCJl1rWaE8zzIp1OJ5aeHjx4H44dq6JcvpaYRBcjT5GeSeoFaWX+NKOvxPwHr7C8%20LFVDcPfd9646eDiOg9Onj8E0CbJZWuejLrPADfMe8pySYfjo7fUQBKThOsiEQVmekH+Frokm/vRP%20/yWefvrd9Pd//2/JLZLd2wSQmzV27dpFZmZmbtnWtFDojXZp7GHnoxC2Q2QU1/nzWVy8mIZpUuze%207UBRKDSN1kCGSnlwJkjKHn7PI/C8cMF3XYKFBQ2VioLJyRTKZRW+T4TogjZUgYk9AGHVkHFDC6+m%20aahUKtcFNpqmRbmDdDoFyzK560dg2w48z4XjhDmXarUKSoPaOQS1aEWHYRjQdR2EKDBN86aDCaPs%20mvUtuK6DnTvvxokTk1AUp2GRlxVG8HkQkaLhS7CbKSzz9z0pgS6qLPPAwWRrFhd93Hnn4zBNc9Ui%20QkIIKpUSXn31W6hUpmGaIZXEbG/56IM5eYrUlRiBtLWF/iJJkTw7bz7aEoEqjHY0zM4+j89//kn6%20pS99i6iqsgkgG2ns2bMHV69exfDw8JrTHEHgoa/vfszMvARVVWIVbw0jwOnT7Zib03D4cBpTUwST%20kyFoaBoFpSQCkmUAYWW19Q9C+JArNXvO+nwKAwwxYZpMYVCkUinorXjsNgGF611AXNdDubxQO74g%20AsDwnCgMQ4NhaEinU3XRZ/iRJfMdVCpVzM3NR3QIqwQzDAOWZYEQgkwmU5frud7jZqXMrXZNW5aJ%20e+55Aq+88jQUhcZGHzKHySSDMFkUkgQgSeW7InXFa58Vi8COHQ9haGhoVZ+zubk5HDv2DDo6KJaW%20qigUlptfWc5DjD7E5Ll4XYaG7FpvSHMA0bR6EVJRjDR8T4qJiX/Er//6ffS3f/uHxLL0TQDZMCes%20aREFsvYAEmDbtp2Ym3sDnleSTmrbVvDGGwX4vok770zDNAm3+BE4DqkBA5EuAsv/S3wYSB03LusF%20kZX2iqqqlKrI5XK3iIL0Ua2WQakLyzLQ19eDyclJ9Pb2tCR+F34MczfL4NKGIKCwbQdBEMDzQqlw%20Zm06OTkZNatpmgZd16OPiqJEH5MAhs030zRXPFf373833nzz2SiCSirBZgucbKfNNidxVVhxRRj8%20/fe8eipHNAdj4LGwEMA0B7Fjx75V7fWpVh0cPfpdtLX5yGSUmiNhSF0x4GAvETxkuQ+WL+rs9CH2%20IspEKhlwMJUAvkqusdRaxeTkj/F3f/dH9KmnPk02AWSDjMOHD+PChQvYtWvXLTuGPXvegxMn/hqK%20otftCCsVDRcuFJDP69i+PYMgoOA9cvhqrWZyFLJFIe6V5BzH7z49D8jn2xs6ytdiOI4N1y3XHlJS%20e/iDukR0q+wTqzLj/86yjIZrR4gCTdMQBEHUbVwulxsWRRapsFJkkd4LgmBFFqn8yOfbcffdH8Cx%20Y8+AUl+6K2YLpmhRLNMzawVAkir4mDhmvVzNMnVVLAKa1o8HHnhsVcFDUVQ899zX0d4eIJUC0mmC%20qakShofrgaOeTqqnr8TFvnb30NXl1ajcxuvBX2tNW468NK2+uZYHj2XgofiLv/hfkMkM0ccee4ps%20AsgGGFu2bMHLL798S7tGc7k82tp2olK5HAHIwoKFmZkMurosdHeb8Dwa5UNE34dW1m6xqoZfHHgw%20SlJVbeS/CXK53BqDB0G1WkQQ2FBVIq1IaqVDmz9kGf8vAnP4OwFc14GmhUKc4YKej6KKkBb0o8S+%20bduRNzaLUgzDwMmTJ5HP51EoFJDL5ZDP56O8DqtISxqmaWH//vfgzJkXEASlBhkRfnHjd9xsp9yM%20wpJtMsQ5kWQOxsBjaYli69Z7sW3bvlVmDVScOnUc2WyAdDqkrEwz3Ej09ZE68OApJVnprgggg4PV%206Pfjroeo9caurSzCE6O4wcEU/uqvfhWPPfbUZgSyEUYul0O5XL6lABJKeN+LU6cm4TgVLC5mUCql%200d+fRiajRRVayxQIiXIcSU6GMsCQUVoieMRRWHzJpuNQFAqd0DRtVROinuclJpUrlSUArFs9vpS5%202e1MAg3+e2J0RwhqgKALlXJqRDPx58PmVbFYhG3b0DQNi4uLmJ2dhed50au7uxu5XA6pVAo9PT1R%20fkTTNGiaVkexUkqRzeaxf/+jeO21f4DrVuH7JNIyY9SVrGSVLXSyRHqzCITPfySZg1UqQKmkoLf3%20AHbuXP1y3cnJGVy+/BJ6esyo2sqyCEZHS0ilzAbQkFkTyKqvKAW2bbOhaUS6iRCjcXkDory8mk+6%20l0oj+M3f/B/pF77w52QTQNb52LdvH/7wD//wluvWWJaJI0d+Cs8++w/wPGBoKAtdV6SNXrZNYJq0%20TiertZxBPJUl61KX7WwZdaWqJtrb21c1+ki6B2G1TQgesl4GcUFcyWHJwKQx+uC/pvA8pwYiJCHq%20o1GDo+M4yGQyUWc968Zn169SqaBYLGJhYQFnzpyBoihQVTXy/tZ1HcPDw7AsC4ODgyCEIJ1O48EH%20P4ALF05iZubHyOXUqHTVMJY5+jhfF3bNxHkkWuPK6Mu4pHm5TOH7bbj33kdRKLStOngEQYATJ/4Z%20hYIZRR5MkgQg6O4mDQAiy33IciCqStHR4UclvnHPD1+gIErsyxSq+ZyR5wGdnTrOn/86jh79V/Se%20ex4hmwCyjgczoLFt+5aBiKIomJ+fx2uvvQbLyqGzk4IQpa6BcJmHDyehYSw/1M3UWGTJ8jgAkSXK%20ebrCcQDPUzA8PLim1FW5vARKnTraKmkHff0glhx98D9j1FSzebO0tIRMJoP29naUSiVp13wul0Mu%20l4u+7zgObNuunXsZvu/jwoUL8DwPP/rRj2AYBtra2kAIQU9PD4JgEFNTk8jng2hh5WkcGYjEdbXH%20RR9iE52YMC+XCfr69uPgwSO1JP/qzg9CCCYnJ0DpLFIpNTpHwwCKRRuGQeqAQgQPsaBAjB5SKQpd%20p9H1aQaofBQizkPxGeOvWSYDtLcr+OY3fxf33PPIZgSynkdvb2+tV8COlYG+2ePy5cs4efIktm7d%20ir6+PpRKSygWpyIeVqRqGF3Bd6w3AxAxAmmWPI9rFAsCBXfccceaXh/HsQG4ieCx2iDCA3Y8pRV2%20kceVMBNCsLS0BNd1MTw8jEqlEgs2YtWWqqpRop19ZP4SDGAqlQocx8GlS5dqEU0K1aqNbNZHJkOl%20fRBiQr1ZDkScD6I0e5jvIPA8E+95z4ehqsqqRx3LGy0VP/rR32JwUI/Ag53bzIzdoFrMn68IHvzP%20WBRmWTTqE4mjhGXlzEm5NlGEkYFuNgucO/cMTp48Sg8evIdsAsg6HUyQr1QqrTmA6LqO48eP48qV%20K9i9ezfa2toQBAFSqQwoBcrlcQCqtHbfdcPej+uR5RZLdWU5D3nHrYKtW4fX9BoFgQ/PK0FRiFQE%20MOm8W1EqXgmQiCAS/jzsI5GBCNP02rJlS60k2JNqYbU6eJBhdgSEkEjyhVU5ua6H+flplEozMAwH%20lqXURSPiDjxusRQbRuu7zCmKxQDbth3GwMA2FAqdCAL/pkalV69eRqGgRUDBV1hdvVpEJkPqchxx%20+Q4ZfQUAHR0e2G3k5e/56J09K7zUkAyI2XVjTAGjFA0jTPqn00BfXwpf+con8B//4yvQNGUTQNbj%206OvrAyFkzZ0JKaV46aWXsLS0hL179yKTydQ9fOl0BoaxFQsLE/B9r6FW3XUJFIVKH/64BHGSI2GS%20l7nrUhBiYOvWQaxtJy1BtboUlekmgUdSFVYrALFSeku4mwiC+hLiIAhQrVYxMDBwQ6DRKqgAywl8%20TdOQyWyBbfejWJzH4uIkNM2rkzKXgYi4c+bBg20ibBvIZruRyRRwzz33IJtNRc5+N5vmHR29AMsi%20dVEVA0RNI7EKu7Lch1iBFQQEPT1uXWTWeAz1mmK8lbAIHLq+/Bzp+jJ4uG5IL6ZSQCZDcO3aWczP%20j9OuroENEYW87QCkq6uLEEJouVxeQ0rGwQsvvABd17Fv375YHShN09HRMYipqWsIAr9OUdV1iXSy%20i9LuzfpAeIHFOC9zVc1gYKB/TXJBfBWW41QAUClVFQceN0pZtQocYkQSgrwRgcfCwgJ6e3tX3Cy4%20epEbha6ryGbz6O7uhWkaWFhYwszMKObmxjl5eFIX4Ypzw/NCg7ByWUWlQnD33XeBEAU7duyoyccE%20a9KEq6oaJibOob/faEiQaxrBW28tbzRkNJXYMCjmLigFduywo/6PpJxGsyINdv1YHw6rimPJfpa3%20CSMRF8eP/wCPPfbRzQhkPQ6+Cuam76cJwdTUFN544w3kcrmW5FMIIejrG0apVMTCwnidImu1qkDX%20g5bonLgmwricR9h3YqBQ6EBbW37NnRtDldpKQ6JXfLCXfVEo8vksJien0dvbfV0LWhKQyGTzxYXE%20932oqoqFhQXk8/mGqPJWjTDvQlAotKG9vQBgP1zXQ6VShuvaUBTA96ugNNRB0zQrUiswDBO+H6Ba%20DRsmL1++AgA4fvw4giBAZ2dYyt3W1oZ0Oo2urq7IztU0zZrKshd5xKiqVpOJYdeOtnT8J0+eQiaj%201vV2iCCRy5EGcJDRVyLtpChAOh1E80n2HIl0ptiLJUYgrEqLvVgUwjSzWMd8Oq3iG9/4V5sAsl4H%20k+FYCwAZGRnBiRMnsGXLFvT09LS8uIR5kTQymZ2YmZmA61ZASFDz4VjOhcRVZMkikbgKG8+joFSF%20aWbQ398H3w9uie2v77tNk+RihVoqZUVOiDcakSTdmriIJAhCP2zTNNHZ2XnLwUPmzbKcpCfIZjMA%20WjM9yuezIIRgy5Yt0aJOKcXk5CRc10WxWMTIyAh+/OMfRxL1ADA42A9d11AoFNDR0V7TfFOgaXot%20OlMjPbC4AgNCCM6dO47ubrWho5yBxJkzi0inSV2UwRehiBQoDx6EAH19bstzQwQafkPG/q8IICKY%20sD6dVAq4dKmIkZFxOjjYt+5prLcdgADA3XffjYmJCSiKclMWS13XcezYMVy7dg179uxBNpu9rsUl%20tIDtqS1Ui6hWF2HbFL5PpfamIqcto6+WSwwpAA1dXT0wDAuapsL3g1tyPwhRYNvFuqqrJAqrWfS1%20escVT2WxSj7TNKNqqdsj8sCquW6KVGsYaXSiWi2irS2N3t72mhMljRLqs7MLcBwbU1PTKBYrMIxl%20zTBVVTAw0A/D0JHP59HT04d0OhPZHrNnsVKpwjSDugIAkZ5SVYJMplEYUdboxwCAB5tczkco6d/a%20PBB9etizJcu98IDH028sEikUdJw48T0MDv7cZgSyHseNSpEnPcDVahUvvvgiXNfFoUOHVkE3KnT1%20a2trRz5fQLVaRaWyBM+z4ftVYbdFGqIO5u2xzM0asKw00mkDhULbDavM3uhiBwC2XU2U2ljt3o+V%20RCFx37dtB47jYmiod8M/L6ECsgPbroBSL1IFCBfJMComJFxZh4Z6or8JtcOqcJzQp6VSqWJsbBS2%207cJ1XVSrNnK5HAqFAnRdR19fXyS1r2lBQjMkhefRSABRVuot5kDEjUh3t3ddc4QBiNiZLgKUmNzn%20u+RTKRXF4ugmhbVex8MPP4y//Mu/XPUIZHp6Gq+88gp6enqwe/fuaGe1mvSEZVlc+TFBtVqBbVfg%20ug6CwIXrOhHXrGkWAALLStVZwcZRHmsxgiCIXqHBkg1VpdGiJIsykuRb1m4RXQYS3/dRqVQxMNBb%20k5PfuINSilJpCYAXUWHivakHeMpFL4Bl6QjlzFMA8nVNrpQSLC2VUC5XUa26OHbsWG1OBujs9BtK%20ctn/8X0K1w2iMl4RMOI2HPzPDOP6c2YsomERiAhacWDCQMQwFJw+/RI+8pFNAFmXY/fu3RgbG4Oq%20qhF3eyNDVVWcP38eZ8+exdatWyPP7zV4vGFZVmTjujy5FVy5cgWmmY64+SQHwJu5cw2FBp3a9Vg+%20BraAUKqAVV7JFqS1BIxWJFHCBbWCrq4O6Lpei+z8piZRa7XYr+LVgONUo8o4WW/S9YI6Dzb5fBr5%20fNgH1d/fjSAA5ucXEASXpSKQoSJAgGo1QD7fGljIXoYRXPcckcnqyHxGZMZeDFBse2YzAlmvo1Ao%20rKrU9OnTpzE6Oort27ejUCis+UIt/r8gCGBZVoP+0loOz3PheU5U9snv3KLJp7Vut7pWYNKshLdc%20rqKzs4BcLpTbJ7dhGnQ16NlyeQlB4DQ0dMaBeyv/Uuz0X/58eVOhqgRB4NUtznHzg/fmSvo9sdQ9%207EIPbmiOyKhV2SZIBiqqCpTL85sAsl7H/fffT6ampuiNJhsJIXjxxRdRqVSwd+/eOue6jbUbbX34%20vg/XrXAPtjxRGXqUA0CApCAwbmFSbkEjb6lUgaqqyGYzteTxMmCrG8QAO8xbLIFStw48ZKXjK40S%20W9Ed4+1543Jh11NQIf5O2JRLbuA6xQNpXE6Gv5ZLSxObALJeh6IoyOfzmJ+fv67GL0IIFhcX8cor%20r8CyLBw4cOC2O8dUKoW5ubk1c16klMJ1bQSB1/AAiYsB0yoKASd+JxtazBLYtocg8FGplECIB98P%20ImqsXAbm5+drVrQEiqKBUhWUEpimtmpgWi7boBTo6+uWLIDy9w+C4Iatf9d424GlpQUQEtRVLzXb%20ecvAgY86khZy2dyoVh3wj6X4/xwnQKXio7tbuY55CmzbVr1h8BDfk/9+UoPq8t9uDDmstyWAAGE/%20yMLCAnp6elb8t7Ozs/jhD3+I3t5eDA8P35K+iVYW9LVUG3acSo2ual6CaxikodO3MXqimJ8vYmFh%20AoZRrvW/LCdxDUMBpTYAFZmMjc5OUudZ4TgUjkPg+ykAOkxTv+7r4boePM/H4GCvdOccd/t9379l%20gp3XB5KlCDxk1GIz6iqpIS+OzuIjD/a7lmXGSvIwALHtoJY/a91gLfxIoibC63+2Go8rDkDFv2O/%20oyibWljrevT09GBiYgK9vb0t71B1XceZM2dw5swZbN++HZ2dnbcleKz1rrVaLYMQ2rSrl3HcssUo%20lKVQMD8/jWp1EprmQ9cpuroUaJop+C+EEtxdXRmMjy9h1y4VrhvU6Xp5HqkBSQWuW4Ztq7BtAkKy%20Nfva1u655/kol20MDfXFPvSE0HV/F0ulIkTvlSQZ/WY0UtxuXLZbrweSsDCkXNYBuA2LLy8G2tGx%20rE2VZKbGv0cQANu3X78OXtz7xwmYyuwTwmMf3ASQ9TwYhdUqZeV5Ho4fP465uTns378fqVTqtsl3%20yKIPy7IwMTFx0/+PbYfgkVQJw49G74Wwd6ZcnofrXoOiFKFpNigto1icgqLYoLQCQrwaiFCYZht0%20PY3e3jI0LQNVnYGimFCUDCgl8H0a+cmHUQmB6wZwHKBSmYdtmwgCHZpmQteV2B2s5/lYWqqgq6sA%20VVVA1wlOrHR3GzYBOlFXfxJ4tFJqHQcsMl0p2deKQhAEeQTBTIOfDSFAsejBsuQLtWxxZ13ifPf4%20jUYgcd46cdbQPICFDp8bY+P5tgWQzs5OTE1Ntbg7K+HFF19EJpPBgQMHblll0+02HKcSgYcskSgO%201li1/HsKFhZGUa1exuzsURhGGaZJa9Fe6KEQdiMTqKrO7Y4rACrYuxcAKqhUpkEpQRBQGMYgLGsL%20VLUQCQPysuSWRWDbDqrV0F9jbs5Ce3tGKgOytFRBLpdBPp/dsPc77GlZjBLmsmqmpGTxSkac8KcI%20MqapAlBQrRaQyczVyr2XFQDGxipobyd1cuushkFGffF5uFTqxukr8cWDg+xr0R7a84D29q2bALKe%20R6FQwMjISNOd3Pj4OE6ePInOzk4MDAysm4UkTEAr8H1/1XMhYQNgBUAQK3YoWzwMg/2igunpMYyP%20v4hK5S2k0y4KBQWWRSKLVt7/QWzOkj3Qy93211CtXgGlaRjGFihK2//P3psHx3XdZ6LfuXvv3dgB%20AiAJ7hQXSZRE7ZYlS7KkOBXLUTJO7Ik9ydhVjjOel1SWl9R7z5PUvEpSKacq9cZxIleSyUw5k8U1%20tjyJJ7blRdZGURa1cZFIAtywb73f7ru+P26f26dvn9toECBFQH2qutANNLrvcs7vO7/t+6BpgzBN%2005dkpcR2qupAUUrQdQuuG0EkIvvHWixWEY9H0dPTTln2xk2ImmZ1xea79QCPMO8YvajxAAAgAElE%20QVSUBySC4Hl7lqUgn89A07KMcSaYm6sgmWwswKAGm34m+5x9RCION++2mtBVmJcRZLcOAgcrCzw4%20ONwBkI08MpkM8vl8SwN84cIFnD17FgMDA6siQ7yRxrUoMfXYVp0mg94KPOp/c/Huu69hbu47yGQE%209PV5DKWeQa9zBrEcQsGdcdiO0FuoBLYtwrarsKyzME0XhpFAPH4bJEnzdcPpQ5YJFMVAsWjAslIQ%20RRm67skd9/fXc1xhtz6Y4N14AKLXCA/5JaerAY+rEfTi5Uq8UBqpVfbJWFpKob+/UJPNBbJZE9Fo%20szGnYSoWPIJzxGtmbe94m9cSX8WT9wgCB+sJl8smRkZu6QDIRh5jY2OoVCoNehT+RZEkvPrqq5ib%20m8PevXtv6HzH9R6WZcGyqm2BB/t3WSYoFk2cPPkPUJRpDA0JiMU8dlIKHqxkaVDTOtiLwDMOrOyo%20l/8gsCwCyypB138E21YRjd4CSUo1aYdLElAs5pDPi7BtGSMjA9wCCV6c/UZpJqRz1NvBrzxfy+WC%20Dx5BcFiNDstqBb14149V/JMkoRa28oy9YSiYmupGb28R8bhey5HUPRAWSHgaJ1QMihAglbJh281z%20aiXg46k18mSgg8DBStuapvcolx1EIp0k+oaP/VJOJgogNKH74x//GI7j4NChQ20vxhsxhEUIWXcP%20xHVtTlNWa4MiiiKuXBnHhQvfQCZjIp0mPnhoGpq0vNnQVZALKQxAwnaArJ63aVZRrb4KRdkNRdkC%20URQhim6AQdVGsSiu6ppRIsGNNDz2W4vr2bXbab7ewMnmKqLRCCqVIiSpnv9YWEjAMBI4c+Yt7N/v%20cWJ5nev1+045qlj5WeqdsCBA5y37PMy7DPM22gESGrbyZIGBSgWwrDgeeOBDHUXCjTwOHDiASqUC%2027b9Zq9SqYQf/vCHSKfT2Ldv34Yv0aXVY+vVzOa6boPcLs+INBsVgpMnX0M+/20MDMhIJj3wiEY9%208GA9D9b7CCPSa9cDYWPOtu19tmEAkmTBME6hWh1HJHIrVDXRxFUkCAYmJy9gZGT7ipsHr3Na2HDz%20wmvKbC3e1SpsdTVhLJ7XFtaNnkhEUCoVGxLThLiwbRmXLmUxNDQGXc8jGi02hZTY/AoLHoQAsZjV%20oMZJ51ZYMyAvXBUGFMGCDZrvoOBhGJ73ceedn940dvR9CyB79uxZLpfLGRrCmpycxIkTJ7BlyxYM%20DQ1tmv6O9UygW5bZ0POwUm+AKEo4c+Y1lMvfxZYtMpJJr7IqEqmHrqhGAi90FQYgvF1iUCyLLmZR%20ZKV6699hGBXo+gtQ1YOIRLaBEDPw+Tampi5icHC0ZW8BpdvfeB64GapsebU9H+16GK1+Rz8rEpER%20iWiw7WpTeIoQoKtLw+JiGoVCFZJkI51eQDKZr1XjEW75uKdX7vgAwmqe8yRtgyDCy2mwXi7vYRiN%203odtx/GZz/w/OzoAssGHpmldjuO4tm3jnXfewcTEBPbs2YNkMrkpwINWYVWr1XXrhrbtaii3FW/M%20zl7E8vK3sGWLhlTKA49YzPM8WoWu2JBSOwl0ush5IQa6kHliP4JAUKm8iUrlMiKRWwEogc83MTMz%20hb6+wVAgFgSxpcd2vahkVrNhMAwDrPZ8O30e6xW2aleP3nU9OVyPHqdu7A3DbmDztSwFjgPMzW3F%203JyAVGoRXV3LkGULqmpCENya8fd0S0TR9edDvSs8fHNCTQHr3fKAg/U2gl5HteqBR7kM6LoGQZDH%20OwCywUcymYRhGHjppZcQi8Vw6NAhP2ewmcZ6eSCO06zg1mqXKkkyLl16BkNDGtJpIJHwwlbRaD1p%20TsEjLHHOypQGd8thnb5sGSX1QFqDkoBqNYdi8XkkEvcBkBuMh+PomJ+fQ3//ACO+xYavxBaAa19X%20LizP6Ipt3EurrZzGSuW6a5la7RArptMxXLrkKVXS+ZDPe4SWhAiBfIYDQhwUiykUiymIogtBcBGN%20lhGPl5BMFhGLGXj2WRFPPWXBsurzgHo3Yd4tG8LiAQgLGhQ4WACh4LG0VMHDD/8WotHYprEv71sA%20AYAtW7bg1VdfRTwex8zMDOLxOPr6+vyfFFDo4/08HMduqyKHvvfEib9Hd3cRqZTgex5s6Ip6H8Gy%203bDkeZgHwoYYeABCK26CCnHNn2uiUHgR8fhRAFrDZxpGHvPzCnp6ugKCXBuT06hRprZ9YLiW1WY8%20EJFlEclkHJVKyQ9FlsuGX+bLeibBbnXHITXBqgQKhQRmZwkmJubw4osmnnyy2lSdxeZNeP0jwWR5%20MFTFAgb1OqpVQNe9R6kEOM4WfPKTv0Y2k114XwPIwMAATNPEzp078fLLL9ca5AxYlgXDMNDT04Pt%2027djeHgYIyMjEEURgiD4P2/k6iwawvLCFesRvrLaMiySJOL1159HJHIF6bSARKIRPNjEOQsgQU/B%20481qHWII80CoYaBGRxDg7ziDO2vWo3HdCorFlxCL3QdFkfzPSyYFLC8voVKJQamJUDiOV+69EYdt%20Wyt6kCsBxnqAyUoCXq7rors7jsuXy7Btj2tN16tMnwi/XLeR7cD1+dNef30Rn/ykiUqFr58ePCa2%20053ngVCPgwcelYr30HWgWASyWRef/vQfbjob+r4GkH379mFhYQGPP/44Hn30UZimiVKphGq1imq1%20inPnzmF2dhbf+c53kM1mEY/HoaoqEokEIpEIxsbG0NXVhbGxMYii6Mu02pThbXMFw9p618zMZQAv%20IZNp9jwoePByH8HSXb6X0Gx0giEGqifB9gmEGYvg53mfVUU+/2PE43dBljV/txmLAUtLcxgaGoVt%20OwBIy/zHe+1ZrPS+1YpBvXdSwgTxeBzFYr4WjiUNIUbWIw6CCPUmBMFr3pubs/CRjxgwDL4nypsP%20vP6PYPiKDVkFwaNUAnI5B7HYfjzwwC+QzWYV3tcAMjIygpdeesmXXhUEAYlEAolEAgAwOjoKQRAg%20SRIIITh58iSKxSLefvttVKtVvP7669B1HfPz8+jr68PAwAAymQyGhoaQyWQgyzISiYSvDujtZq5f%20KGx9vSR7RWMiCALm5p5FV5fQkDBnwYNXecVLnocBCM/7YHeJ7GIPyomGMcs2ejEEjmOgXH4Tkcht%20UBTBNxiVio5sNo9EIg5JujEFpCRJauOeu9elr2O9Rk9PAoVCCY7jYGEhD0nyciBB6hI2Mc56IpIk%204rnnzuOnfsrGyIiNapU0zDFeSJZHlmhZdS4r6oFQ8GBDVjTnUSgA+TyQyyn4mZ/5XWwSBvcOgNCx%20Y8eOljFs27ZrCnserfT27dsBAAcPHmza8U1MTGB8fBynT5/Ga6+95jfyEUKgKApuueUWaJqGvXv3%20IhqNMgnZaxcGk2V5XTTf67vWcAsjiiJeeukHyGRmkEgIfp9H0OugwBHku2JBhIavWlUJBXeJrNdB%20wYIamGAIrDFsFdaAuIRy+TQikQOwbbfmhQjI5RaRSCRuOO9jdZ6kE3ovr7cWfVgynX1u2w4GB7sx%20PT0P1yUNG4Y6f1bzpoH+/fLlPObmyrj1VoJisV7Cy9tYhAEIm1ujvUUsgAS9jmLRA5D5eQsPPfQ7%20eOqpj5HNaEPf1wCybds2TExMXHUilF2EO3fuxK5du/DYY49BFEXMzs6iUqlgenoauq7j1KlTKBaL%20+MY3voFYLIaenh5omoauri4MDQ0hmUxiZGQE0WjUN/rrZfyvx1hYyCKRGEcqRfxqq5XAo1XvRxiA%20hHkhLFjQ52yCNOz/wjraLYugXL4Mw0hDlkegKE7tXEzoegWKom5YepuNeNiKIiGRSGJhIV+rNBMa%20ZIXDwlgAcPLkHNJpgkjE8xLoe1kPhOeVBpsIeY2CQe+jXPYAJJ8HlpZc2PYe/Lt/93+RzWpD39cA%200tfXB1EU1yVnQUNT1GNJpVJIpVLo7+8HANx3330ghECSJMzNzeHMmTO4fPkyLly4gEuXLsE0TRSL%20Rdi2jYMHDyIej+PgwYNQVRWSJEGSJCiKsirP5VpVCNHv9hYwDYdkoSjziMUERCIs421juS4FjbDw%20Vav+Dx6DK6vxQKtlgtxKrQxpsMqGGglF8UCkUDiBVCoNSYpBUYBIhGBm5iJSqcMIk7K94X2QDWjO%20XNdFOh1DNKr54SS6yWCXb7On6iKfN/HIIwLicQO63rhBCYJIWGg0WH3FJs/Zaqti0QOPxUUHhjGC%20r371JXK91UE7AHKdRiQSgaZpWFxc9PMe12pQb8I0TSQSCdxxxx244447QAjxK7+q1Sosy8Irr7yC%20XC6Hp59+GpIk+SASj8exa9cuP4FPFRHDEveKoqBcLq/52L1cCkGxWIZp1mncKdmdIAiYnn4B/f1C%20U7KcggULHsEHL//BW9ytOoXpTwocQa11HnhIUnPpryzXDYUsA5omo1g8iUTiTsiyA0XxqrIKhRzi%208cQNZ2TbeBcAoSmRzl4Xno799fCGwp6zr3Vdh6ZpMM06qy4FA1YsyttQEIyPLyIer2LbNgmVSt0D%20YecafX+YZxvGrcYmzdnQ1dISAOzG008fI6qqbWob+r4GELqzr1ar1xxAwha767r+cdCO8Y985CMg%20hODTn/40yuUyxsfHkc1mceXKFSwuLiKbzeLZZ5+FaZoYHh6GLMsYGxtDJpNBMpmEqqro7e2Frut+%20Hma14RaPWFKHaVZQKuXgugZEkUCSSNMuL5vNQpLGEY2qTR3mwVLdMPBoRV+yEg9W0OC1iuPz8h6i%206B0fTZDWqd69R6WygFJpAoqyHYriQNMI8vlFJBLJGy6M1V5pMX8+XC/QWMuoVg309mZAiFbbzJCG%20jnL2Htu2gzfemMKHPyyiVPKYEMrlIO9Za5aDVt5HMHRVKACLizYI2YU/+ZPv/9FmB4/3PYCoqrpD%2007Tz586dQ09Pzw1zXKy3QgjBjh0edc6RI0cakvOCIOD48eNYXl7Giy++CF3XfbVE13Wxe/duaJqG%20eDyOeDze8L+thm1bWF6egeNUIIoEilIPh/G0zE1zEsmkFEqOyOY5eF4HCx6tKrB4dODBZCf1QHgA%20wkuMBvUkZBlNmiGKIqJYfKfG4CvViBkL152mZL2GKEpwHGNVwHEtwOVqLp2uV9DdnUFvbzdmZxdg%20mtUmj5ICyeysp7QoSfVENwsgbLg0eG68qr5g6Iomzil4LC25cJxt+Ou//gmh/UIdANnEIxqNjmua%20tqHik6ycrm3buPXWW0EIwaOPPopsNotqtQrDMLCwsIC3334bFy9exMWLFzE1NYWuri6oqopMJuMn%207/v7+9Hf3w/HcaDrZRQKc7AsvWZMyYqGvFo1UCy+ge5usQk8wkCDXbwsePBCWK36NqjhYAEjrEqa%209ofw9KxZIAuCR90bcWEYM5CkEciyi1iMYHFxGZlMivt9juO0BdbvxaDHFKx44gFuq+KFa3lqPK1z%20euyUGcLrybEwO3sRouj4Xog3dyWcOHEFO3cSxGIE1SqQywkolcJ7jYLfHQxfUcqSatUDENbzWFiw%20sH//J/HFL36VbMZy3Q6AhMT2BUHwy3Q34mCT99FoFNFoFIDXZb9jxw688MIL+KVf+iUsLy/jjTfe%20gCiKeO211zA5OYlz587BsiwsLi5hZGQEiYSCbdu8n/G4BlmWEIuptR2dy8TQ2ZCJjXjc9cEjGK5q%205WmwP3neR1iJJZvsZBPmYQuXBY9g+IKW/7Kv2eNlzyeffwfd3aMQRReqKiCfX0ZXV2vJ2xsRQERR%20gmVVV+1tBH+/niDSnjdCsLycw6FD++E4XuhXlmX09W3D4uIUDKPieyHvvjsLx3GwY4eEYpEqW3pl%20vGEeSLALnSVPDOY9KHjkcsDCgoOenrvw+OO/gFxu+UOZTOZ7HQB5P5x8rbIpl8ttunNzXRfxeByl%20UgmVSgWapuHo0aMAgNtvv90X1NL1Ek6c+EeMj89C16v4wQ+OwbZdyLJYc/9FpFJJjI31YXCwB9u2%20dYPKgrquA9OsQFFMKArhhqyC4MCruAoa9KD6YLhxZo0iv+qK9TaC3xX83uBxsr+XZU8nJJ9/B6q6%20q2aQqr6ncaPc83ZyIKJImw1JkzfH24mvVIxwNaffTsKc9z2eGqEDSVL9RtlIRMPw8Bjm5+eRz89A%20kgRcurSAri4BxWJ9A+C6nsEP3u+gMmFjOXcjbQkNWxUK3mepKjAyIqBSOY4/+qMnUKlEvvvhD/9H%20fOEL/zd5X9hQvM/H3XffjRMnTmzYeHY7oQpBEBqqtChr6/j4G8hm30Rfn4jt27dAVQk+8YmdcBwH%20k5MFlMsmpqfLWFysYGrqEn7yk9OYm9PR3Z1CJqOhv78b8fgCduwgTaGqsNBUWKVVmPpge+cJP3xB%20Q1LUELB9IWFeRxiQBAFOkgTo+iw0bSdEkUAUHZTLZciy3JSbupHJNz02WwmOY/vlz2GhrHa8jtWC%20SGv+K7TQXyHIZvPo6srAdZs77vv6+tDV1YVsdhGl0lvo7yfI5QTfO9Z1GbFY4+Ym2EzY3A/UmPMo%20Fj3PI50Gdu0CMhmWPFFAuVzFj3/8B/je977sfvSj/wc+8YnfIIoiol0qoA6AbMAw1mYdruvWSmyn%200d/f37Dgrlx5B4XCT5BOi7W+DRey7JV2qiqwa1ccggDcdlumVn2FWkJdwEsvLWBuroIf/GAWjrPY%20kPPgeRW07p4HGkGqkbXcjiCjKjWOLGNrkIE1LGzG/mTPy7Z1ABZEUa4ZIk/+luamHMeBbdv+tbYs%20y59jgiDcEN6K67pQ1Qiq1WJbnsd6gEgYaKzkfTTmq+zaRg+QZYV7Xoqi4Pz5C7jzztuRTndjfPxl%20VCoGBMGAogBTUyJU1fFDk2wpbz0sXO84p9VWXgmwgMFBBx/6UHh4q1IBkkkFxWIB//qv/wmnTx9z%20//N//hpRFK0DIJtxHD58GN/97nc3pQfiui5isViD0ZJlGSdOfA+Ocw7ptNjUs8ELOwlCndHUMBzc%20cUcaAMFTT43iT//0GUgSaQr7BJu1eISGvGqr9RAsCirN8Wi7ed8dPM5gmMN7bWNu7i2k07dDFG1U%20KjqSyeaudPqa1ZixLMu/F6x32G513HoOWZZhGAJc12ky3O2AQ9jv1uKFtOoJIYTgypUZxGLR2v3i%20X6tcLocLFy7gscceQzKZxG23HUGxWEChsISzZ09jdvZdVCoXEI0KiEQkEOJCEAjTiOrWeM+Ari6g%20WFQxPKxgcFBEf7+L3btzsCzS0IDKgggFm1gMiMUIFha+jZ/92V73F3/xy/j5n/9kh0xxs4177rkH%20v/mbv7lpO0Ubu2AJjh9/FoLwLpJJqUGbI0irvrImh4ty2YQg2BBFKbSCileWG1ZptZ4U4a3Ao9Uj%20DNTqvyOwrCIIsWseibOih8vmJdgya2+36zS8poBSL5tuBJx1XfySCtMsQxRJAyDwwIRXpLAe+Q9e%206CosnFWpVGpsDrHQkO2ZM2eQTCZ91gbX9YpLvLJaESMjw5Ak4MKFK/j+91/CnXcqMAzLn+uJhIRM%20RkQiIUDTSC134h1Ed3cF0SgJbTKkXgjLAaeqAiIRB//tv/1bxOOS+8QTH+/ogWymwYYYNuMghGB2%20dhZ9fX0oFOYgiueQSEg+VxXb7MerlGLDSo06C8Dysu6DDi+fENYQGASMVprnawllsRVclGyvFXCs%20BCz0p2WVYNsmCJFXfcwreRo0V8XjQaPAwgJMMFy5mqFpkZpkrNPAZBsWrgoDkTDPZTVhrGDeg+eB%20LC4uo6urC5IkcZkXRFHEyZMn8fjjjyMSiTRUKF68OA7Am6+eB+YiHlcwMiJDVeWmAhDqebOaNFu2%20VBGJNB4fS4FDNdBZCp8663QUTz/9CVSrpvvkk/9204DI+x5A9u3bR+bn59314sS60bwP2mFfKuVx%204cL3EI8THzyCkrK8Mtswow94iyRsx87rG+H1dFwrx4/3nUH5Ut5x8o4v+HdBICiXF0DIICoVfV3D%20n1SSlv5kGQtojoU+Z0NfFJQsy/LlB9j/b50LKa2oUc6CSCuCyqvxRnjgwWsUJURo6emdOXMGmUwG%209957L6o1zhJBEHDhwjm4bhmKQpgEOqmBqDePw3qV6nkwF+m04wMQW+7LhrEUxfNE+HIFGv7u7z6L%203bsPuAcO3LopQOR9DyCAx4n17rvvYvv27ZsyD2JZNsbHv49oVG8AD7Z3I6hHzgtfBXeZXilr691n%20WB/HagWN1gIi7eyWW71uBkYCwyjCazYmuJakiq1CWHSHTbnQvD6Hog8uiqKAEAJVVUM/S1FUVKs6%20HMcJ1Z0Pgkg75b2rAY5WnkcdPAguXboSqndSKpXw2muv4cEHH/TBAwAuXboI0ywGwANYWipAkkhT%204yuvCo8Qr8gklXLgOKSB0DOMqZcnUeD9n4AvfOEIvvKVs+6uXTs3PIh0AASecNRGlSdtxwO5dOlt%207Nlj+ESHLHgEm/5aAUjQYLAloEFgeC9TSjx97aspC241TLMKRXlv1z8bsvK8CdWfx1TLxnEc5HK5%20Bi+FskKLoghFUZBIpFEsZpsS6jx9Dh5j7WqubxhQhHketKGPEBGKokKWFS6AGIYBXddx5513+uG/%20UqmEcnkJqkq4hSGKUg/jsh443RjRNQAA27ZVoaqEy4LAJtMpeAQ3ZGzD6969UTz99Ofwx3/8nY4H%20shlGOp3G+fPnMTo6uuk8EEEQMDZWRTTaHJcNeh9hJbhhwMACCLuYwgzFWo32ana3rXa7PCO5UmNb%20UD+kUikhFiNQFJl7jtQ7uB7FGbZt+2BA5y8l6KQeNvVSKA2IbduwLAvlctnPn1CDx+Y6Wgk+8a4X%20W8DAXrsw/fOVPA/vQRCNJnDhwgXcfPPNTWtUVVU899xzeOKJJ/y/GYaJ6elLfqluEEBmZ7OIxYSm%20dcDzPlyXoL/fhKI0e2FBuneWwYD9DPo/FGgmJr6Lr33t/3N/4Rc+v6G9kA6AALj//vvx8ssv46GH%20HrqhG8BWvxMXIAiLfrVVkG5kNXocvF2mJwXcDBwrGfCw19eDrI+3g+TtqnmgwRqMSqUM1wUURXtP%20qUxoPkTTwo+D/l4URT+30uxRmbX8iuGfZ1hOngckre5vGCjz3t8sJUsQjSZ92iHeOZ4/fx4AcMst%20t/h5zCtXLgMwWrA9036ScOYEtopvcNCE45Cmcw56IKLohbF4/SX0/ZYFDA5G8a1v/Z+4667H3e3b%20xzYsiLyPaL9aL0LaDLaZBiES4vHFpoR5MN7bXH3SDCo872TnzgQqFaeBuZTHdruSobg295T/Pbzv%20bd7x8o1Z8BwlSUY0Gn1Pq/gsy/I74Xng1erBDlmWoaoqRFGD47jccw6ef6tr1+ra8vTG+dfaAw9C%20BN9TopIH7Dh9+jQikYh/H1zXhWEUuDkICgzlsoneXtJSn4aCS2+vCUkiXGVN+jyovElf0yQ9Le2N%20Rr0ekWQS6Opy8MwzX+mEsDb6iMViOHv2bBPlxwaHD8zOvo5IxIKiCFyPg+d9hHWG8zUTHAwMdMGy%20ig2iTCxDLuviswaC7Q6nXsB6k/MFDR09prA4O+93wdf0POfnLfzkJ8fR3z+OgYEBdHd3IxKJQJY9%20UPHoQq5tc6DjOJBl2fc+PI/QgW2bsG3bFyizbbPJcwAIEgnPONN8iCAItRwDYNuVph00z9vghR9X%20oippBfL1610HD3quwVJlQggKhQKuXLmCz372s3558+XLlyBJLkSRhIiTuSiVqhge5nsfwXWQTtt+%20XoQnakbnt1fi3eyxB5sODcMDkVQKeOON/w7gjzsAspHH0NAQCCE+r9FmGLZtwrIuIpEQGrwPXqUJ%20jwmXTSCGERsS4qK7O4FyuQjLaowF0wWz0i6eJw61nuDBAgdv0fN22Ozf2PdQgLQsr+Hs4MFRFIsu%203n77bRQKBb98VpIkRKNRjI6OIpfLYc+ePX71ENs0uFav2XEcqKrXBV+tGlhYmIHrmiDEBSGuf+94%20ht9xgOXlgp9jcBxA0+KIx1OIx2OwbQnVaqnWqc3Pb/DySe2GFIPH0gjyAmKxZAP4VqtVuK7rs01T%20ALl48SL27duHrVu3+vo52ewColHC7fGp4w+phfVae9qEAD09FmSZL2rGzg8eizQ7t2iVlqYBkYgn%20cCXLC/jqV3/f/ZVf2Zjkix0AAbB169ZNlfvwDIcLVbWaEoS8vAfLVbVSAp01Erbt4K67hvDtb0/B%20soi/w+IZ4KChDr5md7NrAREeSAV/38rj4B0n611RdlZRjKKvrxd79oz4LMcLCwswTRPz8/PQdR0T%20ExO4cOECvv71r/saLIlEAplMBgMDA4hGo+ju7kY8Hvf5s+hOux3vwzQtmOYSyuU8PH4uoW1qmMbr%2049bOLY+lpRwWFiQkkxnIsgpNU2GaFSahjCZAofctTIOel4Sn96Q5dyYjEok2VZjxSpBLpRLefPNN%20fOpTn/IlGZaWlhuqn8LkAUzTRioVLi/Avjedtpt6olhuNdaL5nkpLDEjDWtVq97PdFrG228/A9v+%20vdD8VAdAbvhcgdcIViwWkclkNgF4iLh8+XWk0zZkmYRqj/Mapni0I8HdZd0QuOjvj8GyRJimA9Os%20u+ntAklwUdJQwNWASJjxD3oWQR30IFCwx8++bqT2JqhUSM0YecYrlfLEpXp6emBZFkZGRvDggw8i%20Ho/jwoULGB8fx5kzZ3D+/HmcOnUKtm2jUqlAFEUcOHAAkUgEu3bt8kNgbNKbBZVKpYpcbgGSZEMU%20Sa3SSOAyGbdq+gsab4/SxOPuKpcXYZoO4vEuxGIJuK4N13WaFB+DksKtsI+XE6uDO4HjELiuBdPM%20+3lJWZYhCILf38KOK1euIBaLYevWrTAMo3ZtSj43W2PYik2Ku6hWbaTTzRunICWP6xJ0ddlNoBIE%204SDLQRA8HMcDD9qtToEkEgEWFs7DMCqIRGIdANmIY2BgwF/Mm8T/ACGTPnjw1NdW8jzYxcfLEdNF%20EovJcBwRhuH4mtHU0PKMMfs9vEXHikOtBkSCORdeo1cQOFq9h/U2eHrYrrH7Tk4AACAASURBVKtB%20UeItK588L8FEpVLB4OAghoaGcO+99/oG0bIsFAoFVCoVHD9+HNlsFk8//TRUVUUsFoOqqtA0DcPD%20w+jq6sLo6ChsW4fjeGXZAGmZr2INGf1bsOosaAjpdfG8VQGGsYxqtQBFiaOnpxeGUYVtG7X8Dr/n%20plXoqvH7XAiCUgOJ5s57x3FgWRZM0/QBxLIs5PN5aJqG48eP4+jRoyiXy36zZLlcbMmKQEe5bGBw%20UIFp8jdRdG0YBkE06sB1Seh85Eko0zkkSc3lvTScTEFEkoo4dep198iRe0gHQDZmCIs4juNuljCW%20p8xWhSRJK4ol0Ykf9DqC+Y+wkUgokCQVlYrpG9cwIGG1OCh48KgxWBr2lUJarfIXQUDgAUnYIwge%20LFlepQJIUhrd3Zm2Q59BAkVaTRSPxwEAu3fv9vMnS0tLmJiYwMzMDKamprC4uIQzZ07h298uIBKJ%20oa8vA1kWMTY2hEQihmhUgqoqSKWiTDOgC16HfFA4KQggweIGQSC1hHwWU1M6ursHoGlJmKZeq9Zy%20ap4JaemBUMDwQE+qJexVbjSA/qRElPQ5zYEQQnDixAmk02mMjo7i5MmTvgeo615/TpC3jZ3Xum5A%200wiX54zdYAHAwYPlFfM7wZwhCyBUn4ZN1gdBJBYT8cwzT+PIkXs6HshGHI7jjLmui3K5vCnOp1rN%20QlEEblIw6IqvRILYTiz+qacO4b/+1+eQSnkMv0EQobsw6nUEPRCesRHF+nuDTYxhmui8cBkvnMYD%20DDbJyYIHBUX68LSwXfT29q1r2TcNgxmGAU3TsG/fPuzbtw+iKOKtt16Fro8jFiPQNBcnT86gVDLw%203HMn4Diuf11kWcbu3aOIRATs2DGE/v5Uy2PkFRc0dn+zu3ICxzEwN3cRPT3DiESinON3apQqjZ/r%20AYF81TF+Fnyj0Sh0Xcf09DR27NiBgYEBfx4WCoUG4OBtQASBYHm5iEyGNLwnLO/XTlEmL2zFbpSC%20BSssoHglwASFwvkNaWs6AAIgnU6PG4axiVh5C5BlEhqeCnodYWSI7S1u4KabMtB1GbruIhbzjKxp%201ndalsUKMoVrnQfDLUFq9sb8S3iZbTDxzYLDSvmNYMiKp4WdzZq46aZt17RvyOO10nH+/CtwnDmk%2000Ktp4Dg/vuHoCjAz/3cGGzbxuKijkrFwvJyBZOTJUxPl/H1r59FoeCgpycOQSAYGEiht7cLvb0x%209Pf3IJPRYFk2HMeFbTsNlVC0eS4IIp4xJVhamoQsx9DXN+QfL61evBZFjIQQ5PN5xOPxWpnuZeRy%20Odx7770MMAjQtAhKJc/L4RFmUh6zS5cWkU7X51GYLozrAtu3V9GumiArQBameMkCSR1EBLzzzvMd%20ANnI44Mf/CAmJiawe/fuDd8LYtsegKysbdGafbZ9j8fGrbduxZUrF6DrXlzXMDxjwnIDtSMgFewV%20CetDCVZYscnMIIjwcjJhIasgcLCeR6UClMsu+vpuQiKRgG1b1+welkolnD79z9A0Ecmk0EARLstu%20razUhqYBIyOR2vVNQJL6ak1vBJOTZZw6lQMhwPPPz+PUqXlUKjZM00axaGHHjmH09ESxY8cw4nGP%201tyjRJF8I+g4rn8t2ftg2yXMz8+it7f/ms9n2u+hqioIIZibm8O9994LVVUb1qquV3xxqLCwE+1C%20p7TsvFAXHarqIhJxVnGc4eJkYeqXdTAhHQDZ2GGfKlKp1IbvRvdivBWo6soU68EJz37G6kKALh56%20aCu+9KXziMWoRG4jXQpNVrYCKRq6Yit6VqIP53khLIjwwIOCAwsWQcCgoMF6HroO5HI27rjjzhXB%20g7LjXk1fkaJoeP75r6OrS0Q06nUv0+5mloaGT9rn5T5sGxgcVDE42AdCgIcf7kelYtcU91wUixae%20fXYWplnGsWOv4ty5ImIxubaTl9Dd3YXR0S4MDfVjcDAJy3Jr/+v4c8Q085iZMTEwMHxN57QgCFhc%20XER3dzfm5+cxPT2NRx55pGmj1868FQSC6ekctm0TGjws3rqgm57Vrr+V9GaCXo8geF7IzMySOzDQ%20RToAsgHHfffdh+9+97sQRXFD94S4LoEouitqXrTyQK5mDA/HcNNN2zE5eRGRCPEBJMz7aAUe9L28%208BX7fl4YKyzXwUvss0DCAw4KHpWK9yiVANfthqZFV7V7Xp0BEvDaa99FV5fXaEYpMHjaLbzmt3AK%20fhfRqOBfs0xGwq/8yvYaQBMUChbeeacAQgjeeSeP8+cLGB9fxnPPvYF83sDAQDdSqQgGB3sRiylI%20pVJQFAWxmIh8Povu7l6frPFaeSGiKOLUqVMYGxtDLBZr+i5JEtsy8LlcGalUY7iU/173qtdDq7UU%20Fr7diHanAyC1cdddd+Gv/uqvNkUehOdVhOUb1s+Ds/Fv/s0e/P7vT6Jctpu0RsLyHkHvoZWiYTse%20SDD/EZbTYD2QoOdBta2D4LG4aGF09M5rRk9CiIAzZ16D687VEubwvTm+QBG/+a3dRkKvadG7TpEI%20waFDSdg2sHdvwuei8q4hwXPPzWJxsYrnnz8H03RgWU6N4ddBMpnEtm1bMTIyip07dzbQuKzHtRIE%20ATMzMxgeHsaFCxfwyCOPcCMFkiT7hIetgCibLSOZlFrOf0K8EJYorn9Egrf5sSwbQ0M9nTLejTpM%2009w0SXTbdtsCiDCxp6ueTJKAQ4e24+TJd6AoYpPcbXBnxnb01pvZGssiV0q4t+OBsPmNsDAVmyiv%20Vus5Dwoe+TxQLvdi3769MIzqNblvU1Pj0PVzSKWEBs+jFf0+j3qj3fLnOpA05p3qAOzWvEAX997b%20B9sGHntsFLruYHa2imLRxuKigampMi5dmsTMzBz+7u/+DslkErFYDKlUCvF4HHv27IGqqti+fbuf%20t6D08u0OURRx/vx5DA4O4tChQ37VWmPoT4brEqaXpPlzymWjJrLVehPlOEAsZq8JJMKIO+nns3k7%20Vd2YtqYDILXxwQ9+kExMTLiSJDUomm3AIBYikdiq9Dh4eg5XOz71qb34/d9fQD6fbQIQXrmjLPNJ%206dhmwpV30vwcyEoA0go4aM6jVAIKBWBpCXjkkSdXBA+2EY6GJbyduNDyularBubn30E8LjQIfwVZ%20lMPo91sxCIQBLzVkLB0HfXiJ8sYQmHdt3RpDrYpUCujqimJkJIObbtoCURzBY4/9BV5//XUsLi7i%20lVdeQaFQwAsvvADDMDA3N4dUKoUdO3YgFoth+/btSCQSfsMkq2POhnNEUcT09DSi0ShuueUWLnhQ%20TwUgsG0CWeaHgyoVs0HciYZNeWSOg4PGmkAjjAeuucjDwdjYz3QAZCMPx3HQ19eHyclJpNPpDX0u%200agLwwhnn13v8BU7ikUTP/dzB/GVrzxfY0Rt1kYIW2B0Z80mMNvldOKRHgYrsFolydlkuVdtVfc8%20FhZsxGK3Q1XVpji11y1twjQt39B6Hq1V2/EWoapSjSnXhSSpEAQRslyXZhUEAW+99X3EYmVfuyUM%20PMKS52El2a1Cl0EuJwrcvBLUsBCid21dqCqQy13Cq68ew969N2FsbAy33347AI9ynnocU1NTOHbs%20GCYmJvC1r30NiqJAFMVa06uAw4cPIxaLYc+ePUilUj4AC4IA0zSxf//+UADxzlWEbTuwLC8XGJxn%20ngcCvwqLBdDgurDt1eav+JQ9YQSddH5Wqw6GhnZ3AGRj5w3IdVGPux6jWExAlt2aO89nvuUBynox%204m7dGsPP/uwt+OY3T0CS3FADxi4mahhp4xXbL9LKgAVDArweDwoeNOcRTJKzuQ4WPDzPw0Ymcxtu%20vvkuWJbtG0THsWHbFlzXgSB4lDHstaM4E4uRWm8E1diownFcVCoEritAFBU4jglF0UNVI1kRsJW8%20j9UCSFAxsJ1S7uA1ZyveTp36MXbs2AtRJExo0zMzsixj586d2LNnj99lPjU1hWw2i4sXL6JYLOLk%20yZOYnZ3FM888A0mSMDw8jFQqBUEQ8NRTT/lytWHeXywWR6WSh2UJNTB3wOtf5MkKBJlzt2yprmo9%20tMurFsy9lUomHnnk0x0A2ehDlmVcunRpw3sgAC27JA2GVZZb63KwhmUtIGJZLg4d6sWbbw7hwoUr%20Ps0Fu3CDjX60Yz2Mu4tXMRakAQ9SlNDnrSqtKHjoeh04ikUKHi50fQj33nt/jQPKhmFUALh+yawg%201ClD6mEj4v9OVevgwkq0epQqDlzXxJkzryIScZk+j2bVSJ6OSxiLQNj1Cu6wec2DKyXh2TlC55Oi%201OP48biDt956BTfffDTU06deHC2dT6VS2Lp1KwDgp3/6p/2Kq1wuh+eeew6XL1/GxYsX0de3cve/%20LKsol2loisAwRIiiA0ny7lkup9f6QEjTOmgM2Xn9NkEVwlbgwQOLVtWAtFgjkdiJbdu2d+jcN/KQ%20JAnbt2/H/Pz8hj+XVKoXCwsWHEdpaAKju/t2FOXWAiB0UX784wfxrW9pePvtcwBI046VpUiX5foC%20a9V4uFIOJCyBzst9VCqNPR7lsgce+byX85ifl3DffY9B10uwLBOOY8KydFiWXgMOhwGTRm+2v19A%20KiVA19+CqvYiGh1h6Nrr3crLy8uwrBlomtRSNZKXOG+V/2jHA+GJerXLPUZBkb2HigJEowQzM++A%20kDuvqqeKehimaUJVVTz66KM4duwYXn755bYiBF6S3oEkCf6x6roAWXahKC7K5SoIqc83eq1YUTOv%20Ks32NW6CVO5hnnRYgyqvArC+eSEQxW5I0sbMoncAhBmiKLZ0kTdSOM51h2BZCw27IElqTuaxRiQY%20E147pbqLRx7ZgdOnlzEzswDHEbjGne5g2QqjIENqq+qtYPiAx21FQ1fBpDnNeVDPI58HFhddLC5G%20cc89H4cgOCgWl2CaBRDiQBA8pbuw5ky6cx0eJlAUB8AsqtUZlMsnoKqD0LQREBKFLKdg2xYmJ99F%20PC5xS3XZsFUw39EqgR5Gw98qDMULYfGKpIKhHuqFUGJAr4G1iHfffRd79uxZc28DT4lwpY1gJJKE%20aRYb8m627dHv0/oYL7zrwLZJk/cFAImEDTbV0soj421agswGvDJxXQcWF8t48snfwkaNnncABPAT%20mb29vbh06dImOBsbsjwCw5j3hZ54VSDBhROsyLkaSvXmslyCX//1O/BP/3Qa585d5C4y00RD42FQ%20yzrMCwl+F4/7igcgbN4j6HksLroolQZxxx2PwjByKJVyEEWXMdikZXe/6wJHjkhMmSipPRTY9iIq%20lUVYFiAIMaTTd8M0C4hEGj2OoKfBq7wKkyAOq8AKKuTRY6We0EreJ9voSXfl9H+DLLOxmICpqdPY%20u3dfzUu7fsN1XWQyGczNlWoeH9ugSrCwUER/fwSLi4OIRpcQixVr3mRQLK0OoDxaHV4eKJhvCyva%20YOfdzIyLD33ooxs2+doBENbs2jYMw2hQQNuIw3VdJBJ9KBREWJbDpVVnyzXD9DjaCWu06givP3fx%20xBN78c47SXz726dhmlaDN6Bp3vPg7jsY3w8Lx/BCY8Fu87AGwXLZy3fk88D8vIlo9FbceeddWF6e%20hOPoDaSUYVxi7LVTVSCZ5AMrPT4vfFLE2bP/u8Y9xacoaUXDz+NYWonnLCwHwlYPsSXU7H1lcyXU%20IFMAkaR6DsvzRDzCxZmZafT29q55Pl+8eBHxeLztNelRxUdgWeUGzwog0HWjxu/loljMoFzugqpW%20oaoGNE2HqprQNAOzszaiUSCXq59nqw0Mb86FFWtQ8MjlXPz7f//ljR3678BGfdx22204ffr0pjgX%20QhQYRhSmWfQnNStuw2pysI8gePDkS3ngETSUwZwEAOzaNQRCYvj7vz+Gri4HqRTx2Xtp+INXrtqq%20OY5XwhtW7RIMXdGwVS7nYmlJhqLciptuuh3T02ehKB4hYZjYEG93b9vAvn1iQ1MYD1gpq+3CgohY%20jN8gGKaSFyb8xatY412vMJEpNhcQtkkIMs3yPJA6RbmAarUAoHeN85jg3LlzfiVXuyOd7sLsbAmi%20SPxzEkWgUjGwZUukNve9IgjTlGHbMiqVuM/Y+7d/exF/8zcC/v7viy3laoP3NcjgzAMPrzzchWEM%204MiRjy13AGSTDMMwUKlU4DjOhtQnbtyFEcTjN0PXfwhVlRpo1b0QSt0ohBmaMNVAXkw8zBsI5ia2%20bUvjc597ED/60ThOnz6Lvj4JsRga+h+CSeRWPFq8RRwEkOBCpjvAQgFYXnaRzaZx770fg2FYmJk5%20B0UhXC+oldgWIUBPD8HICAn1zCjASZKXpKfFAzxakrAwFfu6FbCtlETn6XrzlAWpp0HPl/VCWJXJ%20YLJfUYDl5TmMju5ccx5EEASfibdtwyZJiEaTNRBjw04Etu006NMwV8Y/lytXbHz5yzqq1fD5x/N8%20gxsW6unSQg1a4Xfpko6//MvTRFFUdABkk4xbbrkFf/7nf77hGXnpiMf7sLw8CMOYbzLIltU6Ucom%200tnnQSPD68XggQgbzlIUCR/+8D709qbx0kvvYmkpj64usaEDm/VEWjW0hQFIcCGzsediEchmLZTL%20GXR3H8KBAwfgujZyuUk/nMTTi2c9Mh57cTrtUWTQHStbJsvmDmgVk6I0ex08UAh73k74KozSPAgi%209FjpedGNQ9BLCf5spXUxOfkubrnlvjUBiOu6MAwDEdr5t4r/S6UymJkpgxDbD2EtL+dx4EAPLMtt%206A+pgynBiy8u49AhC/v3W9D1Zn113tzjha/ohqVcrm9YCgWvMfWee34DGx08OgASGIcOHYKu65sG%20QAAHk5MiRkebE7Pt1Pqzmtc8gxQ0kLxmLF5y27YBw7Cxe3cfdu7sx09+MoOXXnodmQxBNOrWhJOa%20w1nBBDEvPBQs22V7PerJcgl9fQ/g5psPwLYtECLg8uV3oWnCihxT7HUJXrtdu4j/v0HvLMh9VKnU%20z69VWGqlsBUPPNopWArecwoK7GvWW6GbCDaExTsW1hMxzWW0K8YUOoMdB9Vq9ap6swghGBoawfT0%20JRDi6Zrn80XYdo8/N3n68K++msXv/q6BxUUSWk7O6zDnebzNFX7A5csmvvSlP9kUXcsdAGGGZVmo%20VqubAkBc18WJEyeQzVbR25uALOchy8SnCgnu6Fmjx2qlr8TsGjSSdPca1pcRbK4yTRf79w9g+/ZH%20kMtVcfz4OC5fPodMRkIsJjaFs4J5Gfq9wSoYFjyKRRuFgotM5jZEoxns3LkDmqbUwINgcXEaqiqE%205h/CNB6CVTtdXYRLnBcEOknyjivoeazUFNiOtsvV6lcEPYtgeCv4fa1Ajp6PogiYm5tDV1d6TQBS%20LpeRSqWueh2k071YWvLuMQCkUhpM0+P0onOfeoaXL+sgBBgYsKHrQa2V8BAWL3kepMRZXCSYngb+%209E/HN43N7AAIM7Zt20Z0XXfL5TJUVd2wQELprxcXF/Hoox8GITZmZv4nZLl5Nx0EAlaTg3JSsTvW%20Vt3g7RAb8hQCTdOjXVFVDXfddQD5/E04e3YGs7MXYds6NA1wnDxUVawtdoE5FlKTZfU64L0F7MIw%20ZBiGAlnuhqZtx65dY0inE7Xub9cPq9i2jWp1GZomNhnzIGDx8h/0Gtx7r+g31/Gua7DreX4+3LPg%20GeowL6MdvrB2gaRV7isYMmP17IN/ow9ZFjA/P43u7sya1pJt21AU5ar/PxKJIJHoxuTkRUiSiEoF%20HHYATxXw4sUSenocDA/btSa/cDLQoOfLAkiQyXl5GZielvCrv/rPGB7eSjoAsknH4cOHMT09ja6u%20rg0LIFeuXMGZM2fwxBNP+LHjaPQQyuXXIYpCUy6BR6nOY8XlhT54HkgYJxAbYgoTc6pUvLLj/v5+%20RKP9WFhw8MgjT0GSBDz33L9AUQiuXDkBURQhCARnz55DPJ4EIQpisX4IQhKynMbY2FANCEVmx2gH%20drcu5uYuQFFEbiKbpxsfzH8IgpfL2LaNcHf/PPAgxPsfHnVIWIiMV1nFC6mtBUDCGgpX8njCQEaS%20BOTz68PssJa16LoukskUJidlyLKASsW7/qxH6FGzCHjzzTx+5mcMZLPeyQabWnmUPHRe1+dwY4n4%200hJw8aKOL395HL29/WQz2csOgHAm20atwPLEcrI4ffo0Hn/8cUSjUX/h9fbejOnpeZRKU01xaV4O%20gzUErWRlw/5/JW1yXoltUEK2UlHw8MM/jd7eXriui49+9NO18/xlAJ7+wxe/+EXYto3bb7+jBhAe%20N5XjrKwmV63qEEW7KXQVBh48IwoAyWQ9NNjq2tBrKYr10mVe6S3PE1nJmK/P/An/zCCQteqFafzd%202jZhjuOgUCigv3/t2uu2bSOVSkEUe1AqzSISERrm6MREDrGYi4ceqiKbbe7JCQMQNmzK5tvyeWBq%20qozR0Z/Cn//53/xjT0/3z202e9kBkMC44447cPr0aezfv39DSUwSQpDP5/HKK6/goYceQiwWa9i1%20ybKAwcEPYmLif4KQsl8SyYab2EURTJaulHAPeh+88JXjeIssGC/mxY2LReCmm+5HT0+3fx8si3JL%200J82XNcG4MC2zVXtUgkRUC5nG4oK2EqbVn0VQWOayRDfwKwEroTUcyDBqAzPaId5fu1UW12tFxL2%20HcHQVRgA8Y5/LUa/WCyuS2OvFwpTcffdj+D5578DXV+CaXrqmbYNnDmTw759FhYX4VfjsZWA7PkE%20vQ+WX61UAnI5B4WChl/8xb/Cgw/+PNms9rIDIIGxa9cuvPbaaxtOnXB5eRnHjh3D0aNH0dfXxwU/%20WVawY8eTGB9/BoQUWmpy0Dr5lbTMw+L8YbxUQaqHoNfhdeg6cN1+2LaDhYUFDA4OwnVdhoxw7aFF%20XS/DsgrQNKEpRBGWXwh2w9P8x+goQVifGw9AKDi3AxQreQbrQb/P+76w+x32uzCPZT2G4zjo7u5G%20pVJZ0+csLCwglUrBdR3ce+/DKJdLOHfuFKam3oamySiXbWQyFhYWvHLyYCk5D0C8ikLv4TUJupie%201nHrrb+C3/3dL6K3dwvZzPayAyCBoaoqSqXShqEyoZ7HsWPHsG/fPuzYsaOl5ySKMrZufQIXLnwL%20tl2E4xB/IdAFQ7vVeeEc3m51JWnZoKgTXXRspRRL77B161HMzMzjjTfeQLlcRrFYxMDAAOLxOIaH%20h5FOpxGNRpHJZPz75BFItg8spdIiZFkIrXxqFaJh8w+iCOzbR9DKtrEeHv3/3l7v3NnreDVT7nrt%20c67m2FwXUFVtzXM7EomsedNACMHk5CRGR0f9zYimRXD48B3YtesAfvCD/4V4PAHHmcSlSxKSSaWh%20H4ndYLCVVx5wmCgUbGzZcidSqS34/Of/EDt3jpH3g73sAEhg3HrrrZifn98wAGIYBl588UVs3boV%20R44caUtnWlE07Nz5JM6c+Sc4ju5rOtBF0Q4jblgYKxi+CibOeeDBVqscOPAwtmwZxt69rJEUcPHi%20ReTzeZw8eRK6rvu/n5qaQnd3N5aXl5FMJtu+b45jNlSl8eP3K5fQjo0R31sLGloWGNhQIW3kbCX2%20dWNtUlofV7CLvT4XHEQiqTUZ/enpaSSTyXXxOgVBaGpIpHmRY8fexic+8Qn8+q//L/zrv/4P/MM/%20/CckEnKDJ8I2VToOnbsWHn30t3Do0Idx9933kvebvewASGDEYjEIgoBisbhq/p3rPRRFwbPPPovR%200VHcfffdbYFHfTGJ2LbtIygWzyObfQWxmOhrOrC0J7xyVnYnFvRAeOykYbTWtFqlWHRBiIajRx9D%20V1cXVzZ2dHQUhBAcPnwY5XIZ1WoVuq7j3Llz0HUduq5jdnYWsizXCAqVGp1FFKIo+gUFdc1yw2fW%20XYnNtlX/x/Cw4HsiK4Ww2JBTVxcwN4fQvhEeQIcZ6mvlhfCOh3cMYe+3LBealrhq4083CF7YaW0A%20YpomTNNEPB5v+tv4+DgikQh+53d+B4ODg+Qzn/k9fOYzv4eTJ0+5sZiMhYVJCAJQKEwhlRqB4zhQ%201QRGR3eTRCL+vraXHQAJDFmWff3lGx1Ann/+eQwMDOADH/jAVemYRKNRxOM3w7ZjyGZfgabp0DTS%20QK3eLqFhEEBW0uTwaEVc6LoMWR7EBz/4EVSr5dDwG5sDURQFiqKgq6sLmqYhFoth27ZtAIB8Pg/L%20spDP51GtVlEsFuG6LizLQiwWqwkOmaENgq36K4IhPEEA2OKgMMGhINg6DjAyAkxP8ynw2/FMrqWn%20whMco2DFu+dhhJGmaWNsbEdNxfHqQ1iapq0ZQCzLgmmaiMViTX978803kUwm0dvb2zCzb7ppPwGA%20bdt2dQxjB0DaG6lUCpIkIZvNrpp/53qC3AsvvIBkMol77rlnTSJYjmNjcHAMg4NjOHXq+yiXxxGL%20SU3x35X0yVdSBQzSqZdKDmw7jfvu+wgkSUa1Wr7K4/eILym4UANBO5fZhsFsNgvTtFCtFhGPE26V%20VdDzqO+G+XkQWSahHkAw6Uq7ur17CF/xjg39tTLOYeXW66VlH/QuWj3nAQf7N8cBEon0qrxi3hBF%20cd2qIb2u9HSTl3PlyhX88i//8g2/YewAyAYY0Wj0s4Ig/EW5XL4hj08QBLz11ltwHAd33333ujY7%20Hjz4CJaX5zE//way2SlIku53aAcpHXg7azZ0xeOl0nUXhiFCUfqwa9dBbN06BsOorgH8HOzfvx8v%20vfRSaO6DVtMJgoC+vj4IgohLl5abuvF53lUrXQ0KAskkn5Cy+Tga9TcymXpBQZD6JcwLCHojQRBZ%20qwwxj1V5JaDg8Z/RTYOmDcN1nTXN9ZMnT2LLli3romxo2zY0TWvwcObm5lAsFvEbv/EbpGP9OgCy%205qFp2l+KovgXNFF7Iw1CCM6cOYPFxUV87GMfg2EY6/r5tm0hmcwgmfwgAGBi4iTm549D0wgkyWki%20YwwaIDZ81UjtQGAYAlR1CEePPgBZlmosq9U1H7PjOG0nzlkKEzbPaxW/qgAAIABJREFUEfQg2u1f%202LKFrCqUxDZl9vXVhZiCvTLBB0+7nP6k136tIBIshFjJ2+BV2wXDlkNDI03d/1frOax9btuwbbsh%20hEUIwfe//30cPny4Y/g6ALJuHghEUUShULixbpQk4dSpUzh79iyefPLJdQePwJIFAIyN3YStW/fD%20MEqw7SLGx08CKKJUmoQsSxAEwuysCUzTgeN4TLuq2oNYrA+pVA+6u72foiisWx/H1Y56M2JzMUBY%20riNMtbG3l6w6F8GSF958M/DWW0As1myMecY6qNvBAkqYl9QeCDeGIYMbgjCafhZwgl3ZhuEiGu1e%20s7f97rvv4uabb16zB0JzIMlk0g+rFYtFjI+P4w//8A87hq8DIOtoPl0X5XJ51b0F19LzOH36NM6f%20P48nn3wS8Xj8uhyX63oCO5oWAxDDzTdvAUAgCCLm5hZQrRZh21X/vel0L2zbRm9vPxzHaiIuvFE6%20+9dqcKmOyrZtwpoA5MgR4PjxemNlcCcf9EJ43FlB1oDVnhOPQSD43Sy48DyO5nyXCyCJ/v5BmObV%20b3RM01yXNUgI8Vm2ZVmGbdsghGB8fBzlchmjo6Mdo9cBkPUbd955J5aWlm4IAKFx2rNnz+KBBx5o%20oii5nsO2rdpPE5lMHAC/hNEw9Bv6/rYiKGyXYyqRAFIpz2Be7THYNtDT41Wm0ZAfGwZiuch4gk40%20/NYKYFbDHsACBS+n1SpkxRZLVKsuNG3HmsNX2WwWoig25C2udg0tLy835FJEUcTZs2fxuc99DqOj%20o538RwdA1m84jnPDdKNns1m88sorePDBBzE6OrrmqpbOWJ+mvXSaYK0OFSHALbcAP/xhXYmxHe36%20ViqSwZwOmysJnn8QSII9PK28ErZQgn144SsVDz1015rnKl2Da62OEgQB09PTyGTqtPLz8/N4/fXX%208Z3vfKcDHmu5tp1L0DweffRRZLPZ9xxALMvC8ePH8YEPfADDw8Md8FgX70NYl56K9Zoae/d6PTG0%20P4aGs+iOnrfz5xl2Xo6CVne16tdgwSCoJBnmaQSr7OixUjLM7u7t6xKu1HUdgiCsGzs2G/qdmprC%202NhYZ0F0AGT9x+HDhzE/P/+eEirato0f/ehHuPvuu7F169ZNJLP73g5PR0Ru2e3dzhgYWLsH4rqe%20wX3iiXAQYZ8HK7Wu5ne83/Ne8+j4eaJgQfXHQqGMQ4ceWiewJ+v2OQsLCxgYGPCLOH7wgx/gC1/4%20AmRZ7iyKTghrfUdPT8+amT/XMkzTxPHjx7Fv3z5s27ZtTY2C7w+vYjWGxoWiJOC6y7Xu9tZhrrCP%20VtX1C6P193thJ1YnPUzitpXnFCaDG/b9q2VRDgII7WOpq/ARjI090qSvfrVjdnZ23XIglJqIEIJC%20oYCJiQkcOXKks3g6Hsj6j+HhYZLL5d6TEJbrunj55ZcRi8Vw4MCBDni0MZaWltr2Fl3XRTyeBiCH%20eh8reSGuC0QiZA33uPE5IcDRo57sabUaHs4KklLyPINWnsdqHq1EwILUNJQQU9dljI7uWbdqu/X0%20QJaXlzEyMgIAeO211/DJT34SN910Uyf/0QGQazN6e3sxMTEBQggIIdclnGUYBl544QWk02k88MAD%20nZvQBhjs3bt31QZLkmS4rgjXVbjkgK1oOwDPmCaTV3fMbCc3W/G0ZQuwb5/HShwEEQokQRBhX4eF%20mHgVVO0ASPCzefLDLHgYRgxHjz4FRVm/kNDc3Ny6eCC0JB8AcrkcfvzjH+OJJ57oLKBOCGv9R7lc%20gWlWoaoqcrkcotEIqtUqCoUienq6fSOiaRoEQYSmqQ0GbS3j5MmTIITgAx/4QOdGtG2QV7/bFUUR%20hEhwXVLj0rL8aqX1ogZp5XnwKEtsG9i9Gxgf90BkJSEvVr+eVmCtJMEb9LJadZYHVSSDbMqU06xS%20AQoFF0NDNyMaXd/+JNu2GxiUr3ZUq1UoigJZlpHNZqEoCh544IE/6qyeDoCsy8jnS/jbv/1r9xvf%20+Cvk8/MADJimgxde+B4GB3vgui5sG4hGZSiKUiujFGHbAixLwJYtWxCPx7Bnzx7Ytr1qo0bDVq7r%204vHHH+/ckOswZFmFbZfhugpsWwQhVa5hDep80L9Fo2RVVOpBY82roFJV4OGHge98p1F/IuyzWBCh%20DYVsZz2vsTAYpmOPJyz8FdSupwCi60Cx6CAS2YPt2w9irfrnDaERQcD8/DwGBgbWDCDLy8tQFAWq%20quKHP/whfu3Xfg3d3d2/01kFHQC56vHOO2fdt956Cf/lv/y/MIxZ2HYe8biKri5P3zqbjaJYLCMS%208YAjkVBACGEWlwPLcmBZwMLCeVy54mJ8/Byi0QR2796FwcHBtsBEkiS8++67cF0XDz/88LqVLHZG%2066EocRSLRQiCAMcRYdsqCLEgSRYA0uCBsOEraqAlKZxKJCxsFaQp4VHgSxJw113AK6/wjX/wu1mg%20oyBCmxBZ8kaeJ8Q2ELKlu8EQGBtGYxUkdR3I51M4cuRmmKaBWCzml5qvteScJr7XMw+iqipOnz6N%20P/uzP+ssgA6AXE24w8XMzLT7H/7DL+DSpR8jk1GQSglQFEAUtQbG2clJb6Fu3apB08TQHZplAdGo%20UNNFrqBSqeDFF+cQjycwMDCA/fv3tzyms2fP4sqVK/jIRz7SAY/rOKLROMplDa5r1AynCMvy8iKK%20UgHgNrHdsgaY0rFTfqownRSe9xFGA0L/Fo0Ct94KvPoqP9xEH5JUBw0q/MV2qPPoWoLnwev/4CXN%20g9r1pRIwO6simwX++Z//2Q837dmzB9FoFPv376+FCq8uf0i1QIaHh9d8rxcWFiCKIn70ox/h9ttv%20x9GjRzvJ8w6ArH589rOPuBcuvIxo1MLOnRpU1ev+DWpeEAIkEi6uXKmgr0+Fado1Tqf6gmNZVKmS%20H92paRqBrhcxMXEWk5NTuP3229Dd3d2wK6PdsePj4/joRz/aAY/rPFzXQTLZjXx+ukFTw3EIDCMC%20QXAgSSYI8TySIDCwc4HV+eAJSoWFrnhA4nkELhxHRHe3jLk5A47jNm1g6IMV/WLpT1aTAwkKgPGo%20+NmEeS5nQ1F24UMf+gAAjzfOMAxUq1VMTExgZmYGx44dQyQS8QW/otEotmzZglQqhaGhId+zaFVl%20KAjCuuRUSqUSXNfFsWPH8Nhjj3UmfwdAVjN5KvjmN//a/dKXPoexsQiGhwk0TfAFk6jyHl14dLHd%20d18FpmmiWDwORemBovQA0OC6AhzHbapaoTtS06x/rqoS6HoZ3//+sxgcHMKdd94JQRBACMHs7Cze%20fvttPPbYYx0hm/doyLIKQILrWhxvQYBpqrAsBZJkQZJsEOJCENya0SQQRbcJPIIA0qrXgt39myZQ%20KgnI5wXMzkq+NxCJKMjnjYY5p6r1OUc3P8G+kaA0bzOAhitINtPxe49yGSiXBajqLhw69AGfGy0a%20jSIajQKADw6CIEDXdUxNTaFQKGB6ehonTpyAaZooFArYunUrVFXFzp07oWkaotEoFEXxpYclScKV%20K1cwPDy8ZhAxDAOEEOi6js9//vOdid8BkPbG4uLCP3zqU4eeikTyOHw4imi0zjnEW3ysAUgkXDiO%20BWAOtj2HUonAtl1Eo3ugaaNwHIFL5yBJzQ9ZlrG0NI9vfvMZPPTQg9B1Ha+++ioefPBBJBKJTpf5%20ezgSiV7kcpOQZSEkn0FgWTJsW67til3ouot//EcRH/941c8hsKSGYcJPQc+lUBCwuChieVlsMN6s%201yLLBNGoilzOhmGYiMW897C8Waz8MAsiPFCrh3PrP4MeEFuyy4atymUJhw59DKoa8cEjOFgvWxRF%20v/di//79fj7QdV0sLCxgZmYGb7zxht/HQz2OgwcPQtM0SJKE3t5e31u52nVSLpeh6zr27t2LAwcO%20dMJXHQBZebzwwnfdr371V9HdnUUiQZrAI+h5hHX61he9WwOJ08jl3oYsD0FVxxCJ9MCyLFhWYziB%20qvixr0slgu9973uQZRn3338/tmzZ0gGP93ioqgZVTcGyCk1AEMx9EOKJY83PS9i+3cUrr3h5s0jE%20qX2WC4BAll3mf11UKkItXANYFqkZ5Xp4phW7LX2Iogc0spxCuXwZiYQCVfXmsWnyN0OtyoB5vFks%20OSILHrmcgf7+O7BnzwFIkoyrrbZicyEDAwMYHByEIAioVqvI5/Mol8sol8uYn5+HYRhYXFzEv/zL%20vyCZTCKVSiEej2NgYACqqvqejuM4K2rMeFWUNn77t3+7M+E7ALLyeOaZ/+4+/fQnMTwcRSJBEInU%20wYPNeQRlWnnhh+bEp1e6a1nz0PVZCEIPYrGbIYpywwIOCysQIqJcNmGaZmf2rcNg9Uau9v/j8S4s%20LhYB1A0/61mwtimXE7B/v4stW+rGt1QSQIgX4uF/B68hsQ4ebG4j2BhIjbmuuxga2od9+45gaWka%20Z8/+b0SjNjSN+HNalutzr1UYixe+ClZcGQag6wSOk8TY2P3o6+utXWd33e4bvXeiKCKTySCTyQAA%209uzZA0mS8JWvfAWf+MQnMDU1hXPnzmFychLnz5+H4zgol8sYGBhAT08PRkdHkU6nIcsyCCE+v5Xr%20uj51SW9vL+6///6O99EBkNbjD/7g8+7p009jbCyKRAK+5xFMmLPgwdP5DjZ98Ra4ZQn4/9v78ui2%20qnvd7wya5UGe5CGxnQQ7seMMDglJGkobCPAClPS1lLa3l97OXF5vh9eBPtp3H4U2Lb1ltQs6Q9uV%20QoEW2pKVlgIhpLlJICEEnIEQ49R27HiUZcey5uHovD+ULW0dnyOPSRz4fWudJVlSjk6O9t7f/n5j%20PD6CQGA3JKkKNlsjJEkcN4nHJ3dJ2L//JaiqioaGBqqyO00kk0nU1tbOuHKyKAooKqrC6GhfVstb%20bRhsMCggmRRQXa2C8f9ENbP4BZvf+ev5Q/TII5EAIhEVDkcl6utXIJlU4HK5sWzZrQBiePPNnRBF%20H2w2ESaTkDabsjHI/i/a69H6PjKqQ0U0GkM8XoGGhncjL68wvdO/kJuC9vZ2FBQUoLS0FEVFRVi2%20bBkAIBKJQFEURKNRtLW1YWxsDC+88AJisVQYsSRJcDgcmD9/PgoKClBTUwNJkmA2m5GXl0eThgjE%20GN///ufVkyd/jsrKFHk4HBnyMJlwLlx3fLG6XJEqek5GvpwEm7DxeA8CgWFYrQ0wm90QBDXLBq1n%20Htu7dy9EUUR9ff2c6dZ36ZmgLLNyHkmS4XCUIBDwcMSSnWPh96fUBxsP2ox1I2e13q7fKPObj35K%20qYAkbLZyrF79nqwFNlXew4q1a/8VZ878E7HYIEZGuiFJYahqCGazCEkSIElC1vjLfLd6zt+RRCyW%20hKra4XCUw+ksRUPDcpjNpqz2vxcafr8/7RPhs9HNZjMAwGazYf369RAEATfeeCMURcHp06cRCoXQ%201dWFnp4etLe344UXXoDf78cvf/lLmixEIMbYvv0xta3tN5g/3478/BR52GwZ5cGc5ryt2MhOrCUQ%207UTX1iNKnU9APB5BJPI6RHEeHI7lEMWkbjZx5rwydu/+B0pKSlBYWEij8SLDarVDkirg8/WPI5Fw%20WEBpqYqKisxmQjt2jMygWjOWnv9BqzqY/8Fmq8AVV2wyVKnxeATl5fMAzEN19eUABAQCfgwO/hOR%20yDCCwW4IgqjZHCVht1chFlPgci3C0qWL2RWnz3sxyYN14SwqKsrp22D3hIUCs5yR+vr6c5sCCfv2%207cPTTz+ND3/4w2S+IgLRh8fTq/71r/8LbreEgoIUefBOc95GzPso9AhET31obcWyDF2neercAqLR%20M/D7A7Dbm2EyWbMm5ni/igl79uzBli1b5kQHxHc6TCYrCgoqMDY2CCB57ncXEAqJqKtTEYlkxpC2%201MlECkQv8km7KWE+iHBYgc1Whebmq6Zo4lSRl5eH/PxVSOWvCOlFORyOcLXb1LSaUdW5p35no3ip%20JElobW3F1q1baWATgegjGo3h3nuvQmmpgsJC6Po9tOqDJxDtDpK3VWsnO28vZqaweFwveUtELOaD%20z/cinM51MJmK070ntL2mFSVVjvyNN97AypUryR9y0aHCZLIgP78Co6N9kKRUzkdtrZoOnWXEoQ2X%20ZYqFgS+YyP7OpWozhQoFFBYuxIoVV06rr7hRAUKzWToXmj73cfLkybS5arro6+uDx+PB+vXraVgT%20gejj5z//tGo296CwUEZ+foY8bLbskF2jhCvtpM+lQNjiwbJ+4/HUwiFJmefZ55IQDB6CzXY5TKZS%20Q9t3PC7i8OFXUVFRgZKSEhqVc0KJmFBSUo2BgQHIchx2e8qkxKtNPkCCkYg2asuo7pWeOTTl81Cx%20Zs3/gNNZMC3yeNssTLI84xwpn8+HcDiMDRs2kLQnAhm/U+zoOKp2dDyF8nIZTmeKPHj1wRznfFLf%20+LDaictPsMVeFMeXixDF1OQ33g0KCIVaYLdfDrO5FKqaHLfztFpTJHL06FFs2rSJckPmCCKRCMLh%20MK6+egMGB9swNuaBzWbKinLShsvyaiRXIiHv94hGk1AUM9zuelRXL4HVanlHjwFBENDa2opFixZN%20+xx2ux07duzAXXfdRQOZCER3mGH79rtRVCSlI65stmzHudZ8xU96vegro10jM10x5cEWfr3zaMko%20RUIqxsZegdO5FrJcnGUKY2aRWAxob2/HNddcQ6NyDkAURQwODqKpqQnz51+GqqpFGBrqR1vbf8Nk%20EiCKSjrvIlfSnnYcsceMz0NAcfFiLF26Ok0atIFAupHUdO/F4cOHMTIygjvvvJPUBxHIeOzf/1e1%20u3sH5s+3p5WH3Z4iD3boRV7lir7Sm/R8GKc28saIhNi/NZv580gYGzuMwsKNMJksSCZVmEyZshQW%20C2C1mvCXv/wFt956K7WyvcgYHh6G1WrF8uXL036p0tJyFBffilgsjMHBLvT3vwVF8UOWBciypKto%20+XLpiqIiFktAUZIoLFyAuroG2Gx5sNnsFMbNIRaLIR6PTztvQxAEtLW1Yf369elkQgIRCDfAovjT%20n+5AWZkDDoealWlutWZMV1r1IcsZn4VRfgavHNjE523WeuSRy/zF/1uzGRge3g2XaxMkSdbUywLM%205lQPhEAgMOM2nu/ERWe2oCgKAoEArrnmGkiSlKUMBAGwWGyoqWnEwoXL0N/fh0QiAK/3DJLJOJLJ%20xLnifWwnbQIgwmy2wGYrxLx59XA48iAISNeTIvLIRiKRQDKZnHaR0Xg8jq6uLnzkIx8h8iAC0Vvg%204zCbB+F0mrPMVow8+Kxzo0JzemUe9GzWvPrgSWci9cL7T1il3tSjgGCwFQ7HCiiKoiGQlD381KlT%20WLFiBS0sk4TL5YLP50NBQcGMzyUIAvr7+1FaWgq3220YFaeqqYZipaWlAEpRUbEgp/mJX8gulUio%20i61AioqKpk1A3d3d2Lp1K7EHEch43HvvetXlMqWVBx+uq428yuX/mEyvBL67mx55GEXcaJ2lzFyV%20SADBYDeAPJjNNeNUiCQBHo/nXKc8IpDJLvqzdZ6xsTHE43Fs3LhxWiHVtOOdvd9zOvfSbDbjySef%20xGc+8xm6kRcA4qV2wV7voBqJnITdLmSRB+8010ZeSdJ4f4j2fb3quezf8e8bnUPvMPqMySQhGGyD%20IChpYuNJ5NSpU7QQXSQMDw9jzZo11ODrIiIcDiMej08rmXBkZAStra344he/SMEIRCDj8eabT6Ow%200Jw2W/Hqgy/TzhZj/pFfqPVIQY8AjMhFj2wmIp/s71cwOnocsiyNux6TSUZnZyeNzgsIVVUxMDCA%20iooKLF68mNTfRVYgqqpOq7zPyZMnkZeXB5fLRZswIpDxaGn5B+x2YVyWOa8wtIQx0UKf6+BNX5P9%20vDbjXXstqesUEI32Ixodyjp36jOpdreEC7dgsa51q1evpp3rHFEgUy2UKUkS3njjDTQ3N6O8vJzY%204wLgkvOBmExDkKTxqkN/kR6/uDPnuVGfBPbIqqwaJRuqauqcfKgvIw++V3WuulmyLMLvb4fLVZIu%20vJi6bhHDw8M0Oi8QIpEIBgcHsWnTJir5PYcUocPhQCQSmfxuWBRx/PhxtLS0EHmQAtFHZ+c/xuV4%208H6OiZSEVh3wkVl6f+dSIkaf034m1+uRyCCi0bNZ9bkkCYhGo7QTvkAIBAJwuVwoLi6mm3GxF6Rz%20CZwlJSVTGv+CIODgwYO44oor6CYSgRiZr/aqTqdxcUSjToB65GBkHuUVCp/zoT20r+t9jn/NiGBM%20JhM8niMQBCHr86pKm6gLtdMNBAK48soryWY+ByAIAkZGRqacha6qKnbv3o3PfvazdBPJhKUPr/cE%20rFYxp0NbSxja1ye7RjAlwJus+OesaJ5ebS1JypQ60Wa9a19LhQjHoaoxiKIp/bl4PEpZtOcZyWQS%20/f39aGhogMPhoBsyByBJEnp7ezFv3rwpBTIMDAwgEomgqamJbiIpEH34/T0wmcRxpii9nb7Rwj11%20Sa2fQJhLoRgRhdF7QAKhkBeCIHAKhAbnVHafUyVaQRAQCoXgdDrR0NBAN3EOmrKmQjqtra1oamrC%20mjVraMdFBKKPsbFuyLI4bjHW9h83WtSnL6uN1YS2oZDeNRi9lzm3AK/3nxBFKWuBI0yOPIqLi+Hx%20eKZ0z4LBILxeL6655ppZa4tLmD1lOFUCef755/Gtb32Lbh4RSG41oLeTz7VYzwZ56C36RmpEL3Ir%2013OGaHQMipKp52SxWIhEpkAi/ONk1Mfo6Ciamppm3LSIMPvKo7u7e0omrNbWVpSXl+Nd73oXTRgi%20kFwLhbEvwUgFaBfq6ZIIT2JG5zb6vsl8VhQljIz0nNuBgXbF5wms37aiKBSxMwchSRLa2tqm5ETf%20v38/Nm/eDLvdTjeQCGR6C/tEJDJbxDWZ78/1Pn9O/hEQEIuFzjnmZZhMMimQ84BYLIZIJILNmzdP%20KceAcGFVyGTDeFVVRU9PD9773vfSjSMCyQ2Xa2Fa1vKRUed7ndUmEeoVUjQiHr3nep9LNZiKQxBE%20JJMSqquraXSeh4VpZGQEbrcb+fn5dEPmIEZHR2EymSblAxFFEW+88QZqampwyy230G6LCCQ3TKZa%20JBLJLPKYzEI+22SSi7i018a/ZtQbmz12dZ3FoUOd6OzsQjgcht/vRyQSgSRJ5/JEaI7MdHEKhULU%209XEOIxgMQpYnp74FQcD27duxevVqunEXCZdUHkhFRTOOHUummzxpGzfpHbMBo/Po5YcYvadHJHyL%2001Tl8CgGB09jbExBS8sRFBQUwGKxoLi4GEuWLMGSJUuwfv36dMMd6lo4Nfh8Pqxfv35aZdoJFwaD%20g4OwWCyTqobs8XhgNpvxpS99iW4cEcjEWLlypfDMM2aV9RTXHlri4P+eLV+IERnoqQs9pcH3CuH7%20haT6jiRhNoexefMWPPbYE8JLL72kDg0NYc+ePTh+/DhaW1txzz33oLGxESUlJWhubobb7UZBQQFq%20amoAgIjFwNTR19cHs9mMhoYGRKNRuilzFJMt4y6KIo4ePYqysjIsWrSIpDkRyOTgdr8bsdgBJBLI%20UiJ6izQrdjgb6kOPFPRMVFoi48mNEQUjDp5AEgkgHgfCYQGf+MSnAQAbNmwQAOD9739/1jU98sgj%20am9vL37961+na2YlEgksWrQIS5YswfXXX58OAyazFxAKhaCqKm666SYij7fRpqCnpwef+tSnqHcL%20EcjkUVt7JdrbDyAezyy8bDHW7u75LoIzyQfRqghGGkbqR/s6Iwr+OXtMJDLkEY0CkYiMurrLcl7P%20xz/+cQEA7rrrLng8npFgMOjq7OzErl270NPTgzvuuANmsxl5eXlYsGABFi5ciMrKSjQ3N8NisUBR%20FCQSibdVscaxsbF0HwntQtPf34/FixfDYrFQgco5jr6+Pthstgn7oZ85cwbBYBBf+MIXaIdEBDJ5%20VFZeiePHv4d43JQmEbYQy3LqOVMeijKzkF4j85Se6cyINLRKQ0sa7IhGgWBQRUnJPNTW1k76SsvK%20yooAYMGCBbj66qvTr7/55ptqR0cHHnzwQRw/fhz79+/H1q1bsWzZMtTU1GD58uWorKyE3W6Hw+GA%20yWSCqqrp41JCcXGxobLwer2ora3F+vXrEY/HacbPcXR3d09IHoIgYMeOHViwYAHdMCKQqaGxcZOw%20b98qNRI5inhcRDyeUSE8iTDFwVRIZkc6NQLRIww9Hwz/mvZ99je7Tn3lAZw5E4bff0yYnfvUKDQ2%20NuKmm25CIpFAIpFAKBT63Ouvv/6rl156Cffddx8cDgesViusVitqa2uxYsUKLF26FFVVVVAUBclk%208pLozGdEePF4HH6/H+vWrSPyuIRMUyaTCZIkGf6u0WgUY2Nj+PKXv0w3jAhk6nA6343R0RY4nSKs%201sxCzJo38SVP+IAbFoI7kTnLyNltRCZGKkPvkVcdsVjqiESAUAjYsuWD58WeK8syZFmG1Wp9aNOm%20TQ9t2rQJd999N8LhMF599VX10KFDOHnyJFpaWvDTn/4UhYWFqK6uxvz583HZZZehsrIS8+bNQ35+%20PhRFSZPLXF+IBgYG0NjYiPLycgosmGO/TapwqJgmidTzJCKRCPLy8iDLsq6ZVRRFtLW1ob+/H9de%20ey2Zr4hApo4Pf/g7wk9+8ogaDgdgtaa6E+qRB5+zoSURo06DvPLQ+iy0/gu9SCq9gycNRnZa8hgY%20COPhh79xQe+jzWbDVVddJVx11VVZr586dUrdvXs3tm3bhhMnTiASiSAYDKKoqAirVq1CY2Mj6uvr%20IcsyJEmCLMtzzuw1NjYGh8OB5cuXE3nMEZXIfoe+vj54vV709vZCFAUIQsohXllZid7eXhQWFuK5%20555DQ0MDCgsLYTKZYDaboaoqJElCZ2cnvvnNb1KACBHIdHfUVpSX3wSf7zFYrVKaQPgeIHplRPg+%20HnxxxFzqQ+vP0PNl6KkORhTsuZY4mNkqFAJ8viTWrNmMK660Q/JdAAAYSUlEQVSYG6Wo6+rqhLq6%20Otx+++1QVRUej0f1er3YvXs3WltbsW3bNgwNDaGoqAj5+fmorKzEsmXLUFFRgebmZkSjUSSTyYua%20b+HxeLBmzRpaZC4iTCYThoeH0dHRifb2DkSjAQAJiKIKWRbScxUAKiosSCa9iEbD6O/3orfXj1df%20fR7xOGC1FsJud2HdurWoqqrEsWPHsG3bNrrBRCDTx403PiA8/PAO1W4PwWIZ31SKJw5GDNoe5szJ%20rkcgvArRmql4UtD+rUcaWuLgySMQACIRB5566k/CXGwgJQgC3G634Ha7sXTp0vTrvb296okTJ3Dw%204EG89tpr2LNnDwYGBjA6OooNGzagqqoKdXV1KC8vh81mg8vlSpskzqf5S1VVDA0NYfny5WhqaiLf%20xwWGJEnw+/3weofR2noSZ86chtMpw2oVYbOlWhdIkpDe5GVbAQQAKpzOBPLyVCiKdG4O+RGN+rFr%20VztGR5MoKirDwMAgbDbb54qKih6iu04EMmXk5ztx883b8Pzzt45TILkUhbbZlFah6P0bvZwNPWe4%20NrKKkYaWPMLhDHn09YVw550PwGazXVL3v6qqSqiqqsJ1112XJgVVVdHa2qru2LEDhw8fxv3335/O%20RzGbzdi8eTMWLlyIxsbG9Odn2/QVCAQQi8WwaNEiIo+LYKbat28f2tregs0mwGoFKirM6RbU2vbT%202jYJQOp5Xl4cJSWZwBM2r4qKTIhGgVDIh1tueQ9qa5t/deONN//qa1/7GslMIpDpmFpuFA4cuE4d%20HX0GsmzSdY7rOcS1PTxmokB4wtD6ONgjrzp48hgdBT7xif+LO+74zCU9AQRBSDv/m5qaBNZWVFVV%20nDx5Uh0eHsbRo0exe/dutLS04Otf/zoaGhpQVFSE6upqLF26FIWFhVi8ePGMyrTEYjF4vV5s2bIF%20TqeTcj4uoKmqu/sMDh58GZHIKIqLRVgsSBNH6hDOEYdw7gAEQQWQOtg89PvjaG5WYLNlRy/y8yo1%20l5Lwel/Fj350AEeOvKZ+85v/D42NDQK1gb7Ac//tMMkeeGChmp8/iIICIC8PsFqRdq4zdWIyZfdG%20NyIQIDVogezkv0TCmEB4smCOcaY0GGGEQoDfD/h8wNmzgMejYmQkH0eOdAlW6zuv98cf//hH9eDB%20g3jllVfg9XoRDodx9uxZXH311aiqqsLKlSuRn5/Poseydrla/PjHP0YymURNTQ1KSkqwceNGIo8L%20tHFIJBJ47rnnMTLSh8JCGRYLYLEIkCQFkqRAFBVIkopodBiyLEBRmB8EMJttkGULLJZ8CIIMUZTx%20X/91FFu2nIXNltSNbGRh77EYvxkTcPp0EDff/K945JFHiT2IQKaGM2eOq7/97XLU1NhRUADY7YDN%20hnODmd8F6fdMZ2YsvtaVtgQJTx4ssiqXjyMczvg5gsGU4hgbS6kOr1eA31+MnTtbflBcXPR/3umD%208FzV4cPBYPDyxx9/HB0dHXj00UdRVFQEi8UCp9OJq666CuXl5Vi1ahVkWU476VVVxY9+9CMkEglU%20Vlbi/e9/P5xOJ83sCwCPZwi7dj0Pmy0Om02AzSYimQxgePhNqGoAJpMCWVYgScn0Bo43ZWVv4gSI%20oglnzyooLEzqmo+1uVNaX+LwsAK3ewX27n2FSIQIZGp45ZU/qnv3fhKlpQLy81MkYrUiLaWN7LCM%20PNijUVkS3u+hDc3VM1Wxgc0Gt9+fIo+hIRWRiBuPPbYHCxfW0EDPgZMnT6oejwfPPvss9u3bh8HB%20QbS3t2PlypUoKSlBY2MjqqursWPHDvT09ODrX/86amtrEYvF6OadV5OVjPb2TuzduwuFhRLi8SGo%20qg9+/2lIUhh2uwSLRYDZPH7uaTdwWrOz1g9pVDNOL5oxZRZW0dERwV/+8iKuvnojzS8ikMnj5Zd/%20r+7d+wmUlVmQl5dSITyJ8CqEN2XxCoQNXm2JEq3TfCL1weR1MJhSHj4f4PUCY2N5eOaZ42fLykqL%20aPhND/fff7966tQp/O1vf8sypzQ1NaG2thabN28Gs4WTPXz2zVYvv3wA3d2tMJmC6Ot7HSZTCHZ7%20atNmsaTmnMmENIHw5CHL+nNPSyJ6gSx81CNfAogPTAkGUxu106dD+OlPt+ODH9xCA4AIZPI4dOhJ%209ZlnPoyqKgfy8tQ0iegNZu0g5gewXiIhb7rS2wnx6iMYTB1MefT2htDQ8D/xs5/9UbBaTTTyZgld%20XV1qIBBAT08Ptm/fjjNnzuDvf/87ysvL02Xu58+fj9raWjQ3N8NkMkFRFMTjcfKTTBGqqmLPnv/G%204GA7PJ6jUFUvnE4VDkdms8b7HrOd6NlzThvGqxcJaZSHpVdHjp93gUBqw+bxCPje9x7DBz5AJEIE%20MgV0dLSpf/vbFqhqBwoK5PTOSEsiWjss7wcx6tuhVR/Moac1XTHlMTqqYmBAxR13PIjbbvssDeQL%20hJ07d6qDg4P485//jJ6eHoRCIXR1daGyshJLlizBqlWrUF5eDqfTiYKCgrRf5VKo/XUxkCqf3os9%20e3agr+9VWCxB5OUBTmeKNJjPkVcffPAKrz5yhdIzMzJPInpzkPdBsjnIm43Zxq2zM4Rt2/6BjRvf%20S3OPCGRq+MUvPqCePbsDLpcFDkc2iWjtsVpLx2R2P1o7LG+L9fsBr1dBLFaOrVufxLp1V9AAvkiI%20xWJIJpOIx+N46qmn1NOnT+N3v/sdQqEQTCYTrFYr3G43Vq9ejY0bN8Jut6frfZFKSWF4eAR/+MND%20GBk5BpdLRX4+4HCkDqY82PziN2p6BMKIg7cAZExk4wmE94XombH0nOpM/Y+MAN3dcezceQqXXUY+%20RyKQyQtuAAL6+t5Uf/GL98BuP4uCAgtstszuSLsjYgPYSIEY7Xz4iKtAAPB6YwgGnfjqVx/C5s0f%20okE7R9Hb26t6PB60tLTg0KFD6O7uxuHDhxGJRFBXV4fFixfD5XKhvr4eNTU1cDgcSCQSl0QxydlE%20IpHAD394D0KhVpSVySgoSCkP5vdgc4onEEYeWuc5m2vajVuumnT8wQezGBUm5XOtfD5geDgJp3MZ%20/vrXAwIr5EggApkSnn56q3rkyI9hsQRhtwuwWIRx5ix+XPG5IFrzFcv7YKojEmGqQ0A8nod3veuT%20+NrXvkej9BLFiRMn1AMHDmDXrl1oaWlBJBKB3+9Pq5QVK1aguroakiSlj7frPJIkGT/4wfcxMvIq%203G4JhYWpXCuHIztcfiLfh5EC4QlEG0qvp0ByBbPwloBwONsfMjCQRFPTrXj44d/RvCQCmR4CAR+O%20HHlG7eh4EUeO/Bb5+RIcDosuifAqRC8GnSmPQEDBwEAU+flLcOedv8DKlRsEk4mc5G8XxONxnD17%20duTMmTOurq4uvPDCC/j9738PQRBQXFwMl8uVzk9ZsGABFixYgFgsli57f0kvDoKAo0eP4NFH70N5%20OVBUhCzTFR8qzyId9UJ39QqdTiYKi23kjPKx9IJZtCqEN2WdPh3B1q1P4+abbyYSIQKZGTo63lIH%20B1/DgQPbEAr1IRLxIBr1QpZFiOdGtqpKUFUgHleQSKTKJ0SjKmS5CGZzGWy2ClRXN+Mzn/mOYLdb%20aTS9g6AoCl544QX1xRdfRF9fH9ra2tDW1oZkMonVq1ejpqYGixYtQnl5ORwOB1wuV9qncqmYv/z+%20IB588F6IYjdKSpCu9MCrD6Y8tOYrrf9Drw5WLgLRKhCjmnR6PkkjFTIyAoyOFuPAgW4iECKQ2UGm%20oJ+Kt946rg4NdaK7+xhkWUZHxy74/SqWLbsWkUgCK1e+F4Jgw4oVlwuAQHkGhDRYBJfX61UfffRR%20PPHEE+jp6YEkSRBFEYWFhVizZg2qq6tx+eWXc5uUuTn/BEHAAw88gKGhl1FeLsDlSqmPvLxs8uAJ%20RJv7wSsQPfLQkkj2vMyYkXN195woHys7IhI4cyaKj33sfnz+81+miUsEQiDMbbS2tqrt7e3w+Xz4%2005/+hGPHjqG3txfV1dVwuVyoq6vDwoULUVRUhOXLl2dFjF1sQvzKV25DdXUSxcUZ9eF0psgjl/nK%20yIHOJxBqw+fHb+yMEwr1oiKZb3IiFTI8DHR1Kdi+/S3U1FBUFhEIgXCJob+/X33xxRdx+PBh7N+/%20Hz6fD+FwGMFgEM3NzaisrMSmTZtgtVohSRLsdnva7HUh5qvFYsYPfnA/RkdfQmWlmFYfTmeGQPRC%20d43Cd3OVMJmoM6heJJa2rQJPINqQXlYVwu9PHWfPAoODwJVX/gfuvvsHRCBEIATCpW368vv9iEaj%20I52dna4nn3wS7e3tePbZZ1FaWgqTyYTCwkJceeWVKCkpwYYNG2ZU8n4yCIcj+MpXPob6ejNKS5EV%20eaXNOtfmfrCDma548xUfwgtkiETbKVSrPowSCnkFoigZ9cEiJPmyQnxViOFh4NixEE6dUolAZgiZ%20bgGBcPEgiiIKCgoAoKisrAxr165Nv/fyyy+rQ0ND2Lt3L1paWjA2NoZ7770XTU1NKC0txfLly+F2%20u1FYWIja2tq0k36mxHLy5BsoLZXTSYIsTJcnDD4pl3/Uhu/qlQ4y8n8YNXbjneiMbLQKRmvx0zrf%20GdHY7SlycbuB55//u3r99TcQiZACIRDeOXjkkUfU3t5e/OY3v0n3n49Go1i3bh3Kyspw3XXXpTtB%20itpU7wlgMsn47ne/CUk6BbcbcLmgmzjI537wFa/1HOhGNbD0SpnwZixtYze9xF69rHRegWjLC/l8%20rCo2IMuNeOKJgwJrhkYgBUIgvO3x8Y9/XACAu+66Cx6PZyQQCLg6OzvBQoo/+tGPwu12w+VyobKy%20EitXroTb7UZDQwMsFgsURUn3px9PIGaMjHSipkbfx6E1VWmd5tojlwPdKIxXSyB6fhAj4jFSIGZz%20yrzFlJTdDvj9Q0gk4iACIQVCIBA4nDhxQj19+jR+9rOfwefzYWxsDG+99RZWrlyJ+fPnY9myZais%20rITdbkdeXh5kObWXfP31Y3jqqf/EwoWWdO4HSx7Uhu/yEVhaQtGar/RIJGXCG08ERiasXE2mtOG8%20Rn4Q1thteDiVWPj44z0oK6sgMxYRCIFA0ANTHLFYDD/5yU/Uzs5OPPHEE3A4HOmWwUuWLMGSJQ2I%20xYJ47bVfY/58M4qLM7kfzITF99jRc6DnCuHNFYWlxWSy0XMlFOr1CmHRWCwnpL8/CYvl3Xj88Z1E%20IEQgBAJhKmhra1OHhobw6quv4tixY+jq6kZn50uoqxNRVpYpXcJnnzP1kav6rtZ8ZZSFPhGBsEc9%20H4heh1AWyptIZLdZ0GvwNjoKeDwqvN5SPPdcFxHINEE+EALhHYr6+nqhvr4eGzZsAJAq2bNxY41q%20Np/N6RTXq7CrZ7IyqsKrRx56PhCmPkQx4/cwIhxGMrKceWREo/XLsP+X2SwgHO7F4OCw6nYXE4kQ%20gRAIhOlidHTksCDEDPuY5wrP1ZIF/5o2AsuoGq+e+uBbTRuRB2/yYgqFfa+eY5+RiNkM2GwiRkc9%20cLuLaQBMAyLdAgKBAACKkrhclpMTliHRkoKeg9yISPTOaXR+PRWj9z25vtNIITESsdkkdHa+QT8+%20KRACgTATRKNhAHHDhVdvkc5FAEZ/65Vz11MUvLIQhJSvg09rYe9JUsbUxVSHouiTlNYEl1JbFMZL%20BEIgEGaEcHgMqhqDJInjzE65VAP/vtbXoY280kZgGUHbIZSZpbQEA2TeYyTCf78e0WWrEBEDAx30%204xOBEAiEmYAvE2KkIHhHttH7/Of0zjcReeiRCXOkMwXCKxP2HiMRRRkfLqxVPtnXTpZ8IhACgTAj%20GJEAv4jrmaL4rPJcn8kVRTVZEuHJjh3su/hILSPCMHqdMM0xQ7eAQCAAgM1WAFm2pBf4XL3L9Yoh%206hGF9vMz7b820bn1oryMHvk+7AQiEAKBMANkunNmFtZchGC0gBu9P9OFWo/EtERmpHZy5ZvIMqWA%20EIEQCIQZwWy2QhDkrDIiegu4niLQ5mroLeKzYSrSFmDUkkqua9AjEUVJorR0Pv34RCAEAmEmcLmK%20BZPJnu5FznboPJnwiy//fCLzlDBLm3ymiozOnet7+NBg9phIKCgtXUQ/PhEIgUCYCaxWCxRFSteX%200pKHkTKZiCxm089gpDomIis98kjV0EqipGTeWfr1iUAIBMIMUVe3HtFoIqsCLnvkF+DJPp9tBWJE%20DEZkMVF73EBAQVlZaRH98kQgBAJhhvjSl7ZibCyWVTZdj0T0lMmFimbSUxPskV2n3rXyDaYUBYhE%20EvjQh/6TfnQiEAKBMBtYuHChYLe702XRtZ0AtcqE95foLepGKmE2FYfe6xN1NEwkgEhEwbXXfox+%20dCIQAoEwW7Ba56cJhPXd4IlDqzi0rzNS0fvsbJFIrkNretPrYhiPA6pqR1lZFcXwEoEQCITZwqc/%20/Q2EQsk0ifCNm3gy0ZIKb+bSI5XZIpGJiINXHPz18p0Lo1GgqKgBJpONfnAiEAKBMFu49tpbhOHh%20CKLRTJtYLZFoSYSP2jJSKzMlES1J6H2XljR41cGrj2AwjmXLNkOSqBIvEQiBQJhVLF/+QQQCSppE%202O5dT5Hw5iE9H4nWsT1T1WHki9FeA98znbW9jceBSATw+0X82799m8xXRCAEAmG28e1vP3R7NGpD%20JIJxJGKkRFhuhR6haI/pkIee6tF+n5Y0eLMVM12FQkBBwQ30IxOBEAiE84H8fNdDCxe+B4GAmiYR%205hPhzVpGPhIj8mCmLvY4GfIwUhj83yxiTEsiWr9HOAz4fAruuefn6bpfBCIQAoEwixAEAf/+7z9F%20f38YoVBq8WUkojVp6Zm3+MVcz5nNv5Yr2c/oXHx0GHsvHtdXHbFY6tojEeDs2Sje9777UVxcLggC%20WbCIQAgEwnlBTc084fbb74ffr6ZJJBbLHFolwhOI0XM9BWGkKvRMU3pEolUajDR48giHgWAQkKQa%20bNnyH8QcRCAEAuF844Yb/rcQCrnSJBKJjCcQnkS0UVvax1wEw5OQkdPeSPkYkQgjj1AIGBmJY+3a%20z9GPSgRCIBAuBEwmEY880ikEg3kIBFILcTicbdIyUiRaP4n2b+1zI8WSizh4EmOkwY5IJEMePl8S%209fW34dZbv0HqYxZBLW0JBMIEJGLGpk134tlnvwaz2Q5Zzu6DbtTESVuDSpYzvcv5trJAdrFFvdpW%20eqG5WrXBDqY6GHn4/QICASc+97mfC4AKgDiECIRAIFww/Mu/fFWIRn3qoUM/hCyLkKRsEtGWVucd%204ow4WP/yZFKfeLQEopfrwasTXnkwNRSJZJRHMAiMjQFDQwnccMOvYTZb6IckAiEQCBcDn/zkvUJX%201+vq4OBOiKIpp3owyhjXko6237qWfPTUB59RzqsP3mTFyKO/P4RPfeo5rFp1PcmO8wCBYqEJBMJU%20cN99t6pnzjyNsjIzCgoAhwOw2wGbDbBYUofZDJhMqYOZvCYyfRmRUK6SJFqzFSMPnw/wekV86EN/%20wNq1NxJ5EIEQCIS5gkcfvVs9ePD7KCszIT8/QyJWa+pgBGI2p4iDkUcu0xffuVAv+1yvLAlz5rMM%2080AgpTx6e8O47bYdWLv2JiKP8wgyYREIhCnjttvuEZJJVf3HP76D6mq7bkiu2Zx6zqsQ/piMCYsn%20ED5RUJsgGA6nyGN0NAmPR8Htt+/FsmVXEnmQAiEQCHMV+/btULdv/wJk2QOXS0wrEYslpUSYCuFJ%20RBTHqxA9BaKtr8WHAuuRx8hIAgUF6/C+9z2KhoZqIg8iEAKBMNeRSMTwla9crqpqK0pKzFnmLOYT%20YQSiJREjHwg7+KxzRh6som4kwnweAkZGgOuvfxCbNn2SSpQQgRAIhEsNhw/vVPfs+TE6O59DRYU9%20i0R4p7qRH4QpEL3eHnzUFSvuGAyq8HrDWLz4Flx33XdRU7OYmIMIhEAgXMrwenvVe+9dBas1CIdD%20TRMJIxAtiegpEG3o7vi6VjKAcmzZ8gSuuGIVEQcRCIFAeDvh9Okj6h/+8D2cPv008vIUOBwm2Gwy%20LJZMWK/WD6JVHxmTVRw+XxyxWB62bLkfS5ZsQmXlQiIOIhACgfB2hKqqYP6InTufVEdHW9DVtR/h%208CAUxYdodAhmszSOQFLkoUCWi2E2FyMvrwrl5euxbt0nUF19GZEGEQiBQHinkoqixJFMKhBFYNeu%20F9WSEilNIIoCmM1ONDQ0C4IgQRQlyLKZbhwRCIFAIBDeTqBy7gQCgUAgAiEQCAQCEQiBQCAQiEAI%20BAKBQARCIBAIBAIRCIFAIBCIQAgEAoFABEIgEAgEIhACgUAgEIEQCAQCgZCN/w8TpoPR8pedjQAA%20AABJRU5ErkJggg==%22%20preserveAspectRatio=%22none%22%20height=%22375.937%22%20width=%22375%22%20image-rendering=%22optimizeQuality%22%20transform=%22translate(-203.214%20-291.76)%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "95c11f5f-1f78-4a4d-b54f-4a518cb91188",
              "type": "8450b0478ebab7fb7e86228070118db65aadabcc",
              "position": {
                "x": 256,
                "y": 256
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "ee688929-908b-46a4-a39b-dcc32804d4cf",
              "type": "8450b0478ebab7fb7e86228070118db65aadabcc",
              "position": {
                "x": 256,
                "y": 160
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "1e4496c6-b4da-49c2-8409-fb4bb90c489c",
              "type": "8450b0478ebab7fb7e86228070118db65aadabcc",
              "position": {
                "x": 104,
                "y": 256
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "7f8831bb-2fe2-4c7e-a46f-b4ffc8d3dcdd",
              "type": "8450b0478ebab7fb7e86228070118db65aadabcc",
              "position": {
                "x": 256,
                "y": 360
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "94bfc931-8e14-485c-a391-3a001653fedc",
              "type": "8450b0478ebab7fb7e86228070118db65aadabcc",
              "position": {
                "x": 416,
                "y": 256
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "2833ca90-d2cb-4bf8-b4b3-07fccd0d8eda",
              "type": "basic.info",
              "data": {
                "info": "Átomos de Silicio",
                "readonly": true
              },
              "position": {
                "x": 216,
                "y": -16
              },
              "size": {
                "width": 160,
                "height": 32
              }
            },
            {
              "id": "351d64e5-c73c-4226-b419-3988c9fe7b31",
              "type": "basic.info",
              "data": {
                "info": "Nivel 1: ATOMOS",
                "readonly": true
              },
              "position": {
                "x": 232,
                "y": -56
              },
              "size": {
                "width": 144,
                "height": 32
              }
            },
            {
              "id": "8bcd0e31-7bd4-4663-b112-c0be595e69a1",
              "type": "basic.info",
              "data": {
                "info": "Los cristales de silicio se forman a \npartir del enlace covalente entre los\nátomos de silicio. Cada uno de ellos \nestá rodeado por 4 átomos de silicio\nformando un tetraedro",
                "readonly": true
              },
              "position": {
                "x": 136,
                "y": 32
              },
              "size": {
                "width": 336,
                "height": 96
              }
            }
          ],
          "wires": []
        },
        "state": {
          "pan": {
            "x": 124,
            "y": 59.5
          },
          "zoom": 1
        }
      }
    },
    "8450b0478ebab7fb7e86228070118db65aadabcc": {
      "package": {
        "name": "Atomo-si",
        "version": "0.1",
        "description": "Atomos de silicio",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22400%22%20height=%22460%22%20viewBox=%220%200%20375.00001%20431.25001%22%3E%3Cimage%20y=%22265.309%22%20x=%22178.214%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAZAAAAHMCAYAAAD78/5AAAAABmJLR0QA/wD/AP+gvaeTAAAACXBI%20WXMAAA7EAAAOxAGVKw4bAAAAB3RJTUUH4QgOEBkdJUM4xAAAABl0RVh0Q29tbWVudABDcmVhdGVk%20IHdpdGggR0lNUFeBDhcAACAASURBVHja7J15nBxVufd/51RVL7NlsidAEggEAiEgIBEEaSISrqgs%20inIRRTZBgYABbiQQEXEMsogKqHgFxRXF6+tlu0gEkgFBFtmMRAiBsAkkZLLM1ktVnfP+UUufqjpV%203RMChszzzafSPd09vZ45v352gCAIgiAIgiAIgiAIgiAIgiAIgiAIgiAIAACjt4Ag0ule2o3SwaXw%2055XPrDzZcZwRyAGoAR2tHf/cZqdt/hRc39XVhYULF9IbR5CAEMSwFI37u1E6qIQXn32xOHX6VOdP%20f/pTbfFfFuPh5Q/jkeWPAAYADkACXHCY0sTJR56MkbmR//zz03/e9/QjTrdPPuXkGr2TBAkIQQwv%208WClg0ryib898dA5i86Z+fybz7ettdeCt3CwPAPPcU9AAlzvcCsuUAFGWiMhB+Vr3zjtG6vY6+xT%20X7rkS2/Ru0qQgBDEVkzX5V3sovkXyc+e/NkPj91u7L3X/O4aFCYWwFoZUACQA2D6B/MP6R8CQA2A%20DaAKsCrD4FuDOGq/ozDeHP/ouaef+81dZu5yB73LBAkIQWxtVseSbpRml3DB1y+Q37/1+0AngFYA%20LYiKhwXP+lAFRPiH6wtIzRMRVAAMAqyfwewz8Z153/n4F0/54p1dl3Rh4SUUIyFIQAhiq+BH1/7o%20u7+47xdfeeSVR2R+bJ6hFUBREY+49cE1FogLwImJSNk/+oBaTw0f2/1j5dtuvq1lznFz2OKbF0t6%2054n3OpzeAmI4MuczcwAAZ5x/xmnzrp/3lafWPYX8xDxDJ4AOAO2+FRJYIi2eqLBWBtbCwIr+aQvz%20xCa4TfA7bf79dAAYBeQm5nDX83cV9j9qf3nkwUfuCABdl3bRB0GQBUIQ70WO/vzR19297O4z5Ujp%20bfSq2yrvWx4WwCzmua5MgHEW/auRgBQyDKZLR0atEMWdhX5A9krk+nJYdOKiB88696wD6VMg3ssY%209BYQw5FPfP4TC+9fcf9XnU7HE4+2mID4IsLyzDvNMTCL1U/N+gEOMMM/5awuMhx1dxfz/toYZ5Bc%204p6/3jP54q9cvM2Se5dQcJ14z0IuLGLY0HWl5zL66H9+dO7dT9/9zUpbxXNVtSF0UanCoYoHL3Dv%20yHMYBQNG0fBO8wZ4wU/xzXunyNWFB3n/PgMXVxsgOyTESIGv3fC1L17+nct/BQBdl5E7i3jvQS4s%20Yljx05/99Pq535t7uhglgBGoxy2UoHkoAhYLD25yz+IwGBjzrAwpJSAA4QpIV0I4AtKW3uFIoAZI%20W0ZdWWV47qwBAH1ArjeHrpO7lsydO/fD9OkQZIEQxBbKFVdcccb8H8w/XXZKz+oIgt9KzCMiHjmv%20cNDIeZaGmTdhFSxYBQtmwQxPzYIJI+9bI3nPSmFW/X6QQ6o1UmurYd6182b/7Oc/+y7gtU4hCLJA%20CGIL4tllz16868d3/UZh24JX59GuWB5F1OMdftouz3HvsHwBsQzvvGmAG973LiklpJAQroBru3Bt%20F8IWcGsupC0haiK0QmTVs0hQ0VgiG4DyS2X8465//N/ue+7+Mfq0CLJACGILoGuRF1uYf9X8E/Pj%20855wqAWCapGgf3CLh4eRM2DkPOsjV8jBKljIFXLIFXPIF/PIFXMRqySwVgILJrhPZvnnc4olUvDF%20qx0oTCrgk3M/+QEA6Lqii77YEWSBEMSWwLlfPbdy9R+vzhUnFRk6UI97qNlWBd/l5LuteJ7DzHmu%20KStvwcybMHMmTMsE5xyMMUh41odwBBzbgV214dS8U7fqWSFu1YWsSciaHxOpyWg8JLBE+gD7LVue%20Nuc0dtqM03Ibp2y0S7NL9OERWzQmvQXEVmt9fKuLTdph0vbnfee8fHF8sR7ryCvWR2AdmAAzvWA5%20tzgMy7c8cp5wWHkLVs7yRMUwwJj33Uu4nngwo/5dTEoJSMCFCyaYVyviX8YEg3Sl99hqGxQXsEZa%207KeLf4oJoyfULj7xYvpyR2zxUB0IsdVy3333oafWs/6lwZfAOlg020oREbXGg1te7MPIG6Fw5Io5%20z22V9w4rXxcSbnKv9gMsFJVALILTxBEqTfJyBoYnnnwCN1514yt/+H9/eIo+RYIEhCD+DSy6ctEd%20N91z0zRrtMW04pFHJFuKWUrWVc7wYht5L+aRz+eRy+eQL+Rh5kzkrBwMw4BpmJ6A+C6tQEDiR9gz%20CwCTTC8s/vW2Y+Pxxx8/8u7f333jlGlTeu+75z76MAkSEIJ4N+i6rIvdd+99eHL1k79GJ1hYKBi3%20PNRUWwuRgLmVr4tHECgvFAueFZLLwbTMMCMrFBDpCYgQAlLIMEsLImmVpIqIf/T19WFscewxX1/w%209e/RJ0qQgBDEu8R9996H4089Xj75+pOSd3AWD5iHNR++cDCLJbKurJwvHgXP6igUChEXlmVaMEwj%20jIdISDDJQtGIHKp4iJjFkWGJ3LP4no4/3PSH9j3et8ef77uXrBBiy4OC6MTWZX1c0YWOlo6jFvxw%20AcxRJkMB9fRZy1/xBsLmiGEfKwNhpTk3OLjp1XyYlpd5ZeWsiPXBOYeQnqUR5DJKIeG6LhzHgeu4%203uG64C6HcAS4wSEMAWlI7/Et1IPoFrx28I4vcDZQ3K7IfvzbH5+3+PeLz6dPltgSoToQYqti4fyF%20eHT5o12iRdRrPQLhUMSD8XoTRMZ90eAc3IgKRyAe4ZG3kMvlwsPKWcjn8951lneb0MVlGTBMw3uM%20oA2Kfxp29jWV5xYIXVArUgQWP71YLvjagkH6ZAmyQAjiHeatV96aMvagsTOKk4reJmxpLI/g4Iqg%20BJaHYn0Yli8kpi8klgXLsGBxC5xxSCYhuAATDMIScHOexWHbdig+ru3CMA2vTxaX4WPBBaQhvbRe%20QyaFJLBCRhXZ9X+8vnj33XfPKrQUHit9qESDqAiyQAjinWDaR6b9vDCmkCkejLNwIw/arzPDd1+Z%20PEzPNUwjFI+IgDALFizkkIMF3/LwrQ/DMmBZVmh9cLMuSMxk4WNHRCx4fmpFvFKxXjbLeGPdG4+Q%20eBAkIATxDhC0/2gZ1VIKqsoj4mFqrI9gfofqxgosEMMLkIfuLNOEwQyYMGEgempKE6bhFxz6wfUg%20SyvM1FIsnGB2SFzQwucYPO8g1biF4cTzTsQd/3vHMfRJEyQgBLGZWTh/oZx34Ty5trI2aX3oYh/B%204Cf/POe8fvhxkPAIxIQZMJmJ4F8gIBazvEsMxVoxLE90/N8PhCMcPGU0YY0oItIyoQWfPOuTJwFA%209xLq2EuQgBDEZuOXP//l56+5+RoYrYZWOMLpgLEjdGH5mzk3OAzubfihcCjiEbc+OLgnKtwMb2ua%20ppcWrFgyQZA+EKtAvMJDFRI1FuK7s2RBAkUc/uhfH11OPbIIEhCC2IxcdcNVx+Q6c3XXlYX0oLk/%20ZjaMhfhurMD6UEUk/BmeiHD45wP3lS8mBjdgcjNidQQHM1nkvsL4ixG1glJFxLdCeBvH8XOP31VK%20uR194gQJCEFsJrbfafsjIq4rI8X6YHXLAxzgjIcWSGghGPVTg3viYBieeMT/GVBEhfmiwRVLJAjK%20K7EPznl0Znr8OaaICCsyvNb3Go7+9NGz6RMnSEAIYjNwyy23vHHrkltlaH3Eg+Y8KhqMRU/BvPPM%20YJ7lwXkoBNzgocgEQsHAtCLC4d024vpS3FfBEQbu/dG4oaj5BY1ZIoJWQObkL+hTJ0hACOJt8sR9%20T+SPP/941jK2hUViH+o3eyNpgYSbNqtbHqGwKFZIcD0HTwgHU8bphCLCPRHhZt1lFbjGVLeVGgMJ%20z7OYeHBE03t9V9adD9+JR+57ZBf69AkSEIJ4G/z1+b9OGTdx3HhpSW2bknBjZlHxCMQhsDzUTKzA%20Kgh/ZgxMeuIBeC3X42KiurHC3/Pv1zCN6H3x6ONmurLU1xSISBFY9NNFZIUQJCAE8XZ48eUXF60d%20XJus+0jLumIsaY0AkY1d3ew552CSQf0XCElcQBiY58IK3GB+LETN9AoskuC5SCa95xSLzUQExVRe%20mwVYbRb+seofswAY3Uu7afAU8W+DWpkQ71mklDm+Hf9UYduCvlAwHv/wrZBg8JNOMCKWif87jLFQ%20IFhsCjQHhws3tEzCeAnjidoSbvDw+XDGIbjwmjJyAcY9MQFDMg6iWlW+FfLy2pfxm9/+xikdXCIB%20IcgCIYihcsNPbvhemHllasRDjXdoXFhqHCS4LBSS4JBKoNsXiUA4VBEJ/gW3CQQojH8EoqJkfYWi%20EbeUWOz5q2LiZ5lZrRZO/urJeOn5l75EK4EgASGIIXLZjy/bu9hR1FsfTHMaOxjzNvUwC8sXh4iA%20aKwOVUji5znqYhFxizEeibMEwhWxjNSakDQLRImFuHkX373+u63d95MbiyABIYim6LqkCwCw3aTt%20PiAtidTsK9XCUNN1/UPduEPXFVeuy/gLkZChcASjbMMYiSIeakA9EI7QjaaKiE7k4rGQmCvLbDXh%20mM5VpYNKktqbECQgBNEECy9ZiMu/efkdf1n2Fy94nlIsGNmUobdAwniIWhuiXscACH8ErSIWwalq%20hYQWjGp1BELCeFhEGAoWWCQjLPK849ZTSizkht/fgGeefuZmam9CkIAQRJOsWL1iNi/waM+rtM1X%20E0iPC4m3lytiogiDTjgkJAREwr0VFxH1UN1YkZ5YSFoeEasko/W7bdm46bc3fYhWBEECQhBN8pvb%20fwOraOlblujiHtFdvh7fUMQjYpGov+TfV5qIxAkFSK034VGRAgMkl5G04ohoQGNJxV1ZFpBvy+N3%20d/9u2+eWPbc7rQqCBIQgGnDOheccZraZLZG4R4r7SnVJxbOu1BoQVWgiMRDp3U76/wCEosHAImKi%20urUiQfl4jCWoCYESTEfyeWpfk6bFSU+5B7vM3GUjBdMJEhCCaED3/d1THO7U+17pqrgRtUAkl1EL%20AEmBCTbxWHgDUtYvCMRDFYx4PCQerA//KUKiikdqunFcPHQNFy3AMR384Cc/eKV0EE0sJEhACCKT%20A/Y/4McJ8dBtuiy2wtMC6IpbKRSR0ACRkEImBEP9JyAiWVlaEVHFRBOwT8RmoDyX+OuKBdR5nmPB%205QtoYRAkIASRhdPnHP6DX/xAPywqHvOIZV+FG3JwSCSq0xMWiATgelaIKhZq/CMuKOrvR9KFNUKh%20zfrSFRYyjaWluLF6nV55489u/B2tEIIEhCBSuPbH156FIpKZV7oaihRBCcWCR2MVEaQiDCxpebhw%20EyICKO6uWExFm5GVZoGoFpMuLVlTYFgcUWTnXnauQyuEIAEhiBSuu+W6Wr4tnz2qVvONPx4oj2dE%20abO1AhFhUhtEF/4/9XLmpWtFRUARrUBAgr5XcfEILZG0bKy4oChpvVMnT/0srRCCBIQgNNx5+535%207SZudyTP8XThAJKFg+pGjmTco77XM0U7ZGhNSCYhpPAOxYUV1ZqoiysRy0B0/rqaQpwI4qsiGKT2%20AskAuyoiFrBs1TI8v+L5I2ilEO8W1I2XeM/wzMpn5MbBjXXff0azxIQrCNDGOxLuqyAuIr3qc1VE%20AqEILA21yDCRziuV6nQWfawgIysR+8iomtdaILGhU7zAcfb8s/8HXn0+QZAFQhAA0NXVxebPm197%209uVnk6m7GQ0TE1YJUn5WNUQqrioJCCFCV1Y8iB6cRgoKfRGK14XEHztxmerKigf801J6lTiIkTew%209KmlRrW3OpNWDEECQhA+CxculJd2XSod7kht1Xl8NesKA4cgJlLKUDw8HfEC56po6NJ5If2MLSHD%20GIruOamXRQoJwbJFME1M/JoQlmP80KMO3ZaaKxIkIASh8Ng/HoORM5g29qEpHoz8LFO+/essEVk/%20ldKLf6jFhKrVof4L4yayfruIVih1IPGuwFqRU11uupTeuCvLBKQlccSRR9xFzRWJdwOKgRDvCWRV%20zjB3MJHbJhd1XaXFDeLiEAtoqyISxCoi9oRMnqpiwcETLd0jvyv0ReGR+EtMxNTsrNTXwTMsEN8K%20eW7Vc7RgCLJACCLgmh9c80GzxUxv195M7IMhM/YBGT2CCvQwDhIrJlStEQCRTK20xwkytDjjdauE%20RavftZXpcSsrIxby89t+TguGIAEhiICnnn8qWjzXRMGgthIdDUQk2OhVy0MKT0yE3nWlpu4GPbeC%20GEgwRyS0OtBk1hVSLte1aol16a05NfzyF798gFYN8U5DLiziPUFPb8+HEvUfGZtvIsaRlXUVd1kp%2058OgeErg3LtrFsnECu9DRtu9x/tsxXtwRa5nGaKiyzxTLJFcWw5XXH9FhVYNQRYIQQAomsXPZw6N%20yigejPS9apJQBIRMWiONgugiok4RoYoQLyBUsrAiApjmxtJZIn4674jRIz7y2COPtdHKIUhAiGHP%20mxvfTAbP0zKvgHR3FjQ/K1lXgcURWh5SQghfIpQYR9ALC0AkvTdsexITnkxSkgAikxFVt1dWg0U/%20G+vF117Exd++mBYOQQJCDF+6u716hoeffFjvvuLpG3B0j86oPldERHVjQXqB8TCdl4lET6x4MD0U%20ESYTFkhD8YhfnuXGSqvC9+MgPQM9+PxnP/8BWkEECQgxbCmVSvjH0/94sOpWU6cOZm7ASLleQ1jD%20IaNxDCklpOuf+tXoLtxQRMLYh/CsleC+Ui0PXcW5cp22Qj1LVOLjbjkgDIFVq1bdQyuIeCehIDqx%20xbN4yeIRyKFx08S0NN34jA+tAZIcTRtYH0KIMBNLSK8PFmc80spdQIRWR5jyqwhSeKQZIsqAK/U1%20hWNzWYrloSuqNLw4yA0330CLhyALhBje3HbPbbDyVnLyIJDaHmQoloevAmHNR8SFFYiBqFekh4IS%20Kx4MYyTSa3+iZnAlqtKRrP/ItKSy0n7j9SEGwEyGV956BU8/8fR/0QoiSECIYcuDjz/omnmzcdV5%20o6JBFrU2QuHwXU1B991I9pUiGJCAcEUoJK7/L7A+Ii4wJNOBA+HQWR/B80uk8sZvl5XaGwuomwUT%20V117VZVWEEECQgxL7r7z7sk7Tt1xj4SrBsjOvkKDb/YahBQRa0SbjaVUpKtxDuGKqJUihTYOoopX%20otFilhWVVWCYEkzneY61vWupKRZBAkIMT5avXC7KdlnftiRrw22Ev3frRtKqrqyIC0uJbQRiorqt%20hBD1QLriEou4xaAZaoWM6YiNkgPUTsSxgkIYwMw9Zn6SVhHxTkFBdGJLFxBU3Wq0fQmQHReI7LcZ%20m7V/Pp59pbZkj9R0+OLAOIsMjIpUnkslC0vIpKXhCwtroHIMrJ4K3EzTyJT+WH955C+0iAgSEGL4%200b20m5UOLlULOxfARrLGVoh+J043QqQS3NYE0VXxCKwNLrgnIn4FuSoYas8sVYgS2VexjLBEK/es%205582qVB3mQE8suwRSFvOYBZ7hlYUsbkhFxaxxVI6uCT/+L9/XBN2t210pLl5MkQkaHYoIevn44F0%20ES0slEJ6wXTFZRU0Twwvl7H27oooqVZJmKarEYjUdibIeM0xV5brunh62dO30WoiyAIhhh0PPvQg%20mMn0XXeb+bauq73QWATqZh9p6a5YFsL1LA/B/FOlaDB+Gj/qT4nFHjp6nTqbpKFVlTYHXgmkG60G%20rrvhOkkriSALhBh+33CKZjLzChiaGwsp2U/qyFmR3PgD4VAD6gIiElwPUDO01PuL9NlSRCYuGk2J%20RdppWgyEAzzH8eK/XiQBIUhAiOHHsmeXgRksWTAX32SbaNuuFZZgk2fJJoqJ9F34LU2EkoWlpvaK%20aHaWWpDYVEpvinuKMRY+x9Q6EV2lOgdMy8Sqf62aunLFykm0mggSEGJYsfjBxV7WU6O4h7KJsqYa%20X9VvG6bbIprOmxATJZU3bHGiSfMNpxmKeiaX7rHVx0sMu5LIjuM0iosogfTB2iC/9ofX5mg1ESQg%20xLDC5GbjpomZOqHfvOOXBxlXkcJBxYpQ3VahcPhxEbWAMN7GPczsQnQ4VZAGnCkQQHP9vnT9sRSX%20li1tPPfqc+he0k0LiiABIYYHK59b+Z1yrdxcBlKKqLDsUYSJVNtI4FvULQnV0oi7qoLCwXBuiBAJ%20MVJbpkSfasrzY0i1WiLvAc+wSvzrB6oDOO6o4/6nNJuK0onN/AWP3gJiS+W2W2+r8RzXNw4ENrn6%20PGGhyFgmldrPClExCTKwOONhbCIyNEpELZjE9bHnMaRsK6C5uemaehDbsd9HK4ogASGGDfnWfDJF%20Vbe5DgWGiEBExCQe91CKAoUUYJKBg4dCkhAj1ZWltkYRyZTeQJyaqkgPAuysgcCkiAgzGX51y69o%20QREkIMTw4c577oRpmY3H0w7F8oidT1ge0NRxiGhFOji8inSIqBUiNAF0XSW6+vi6KxtZVizjvKY2%20hBkMq1avogVFbHYoBkJssVgFK7uAkA39PnVzOSJWgS77CspUQiG1bUviLU8iFg1kos9Ww1G3soFg%20DMWFxYE3174JKWWBVhVBAkIMC+5/9H4YhpHcON9Gy/Y0C0SdGJio3wjEASLR5iToxKteHhlEpYoI%20kJnSm/la0iyRJmtCqrUqVq5YeSWtKoIEhNjq6V7SzdavW1/VVqE3KyiIVp0Ht4+4q5Q020i/KkU8%20wvoOUa/9UOtAAreVcIV2IFVivG0DqyiVrNReIH1GiAEYRQPXXX+doJVFkIAQWz2l2SV52hdO+3pT%208Y9NGGEbBrEli8ztgESYSRVYFgASqbxq3Yc64jZI4U0TpLiFk6oVjDUnIjLFEom5s7jFsep1ioMQ%20JCDEMCH1mznb5DvU/6zOLo/XgchoNbka64jHP+Ixk8R8kVg6b6IKfVPEkDVnoRiWgaWPLi13L+lm%20tLIIEhBiq2ewPIhUF1aTG2wiTVbX3DAmJOF5pZo83rYkPqEwiH2oWViR4VKaxorhU1L7ZMmU1ygz%20hCLD8gjeP8YZPnX4p75aml2ixorEZoPSeIktlrfWvpW9aTayMiQgmQxrKUIxkRpLR8bG2spYWi7z%20Dy7DwVLg8KyUmMURzlZXLJaEUMSeb2YL90AI3JTrWAPrJZgNwlxaVAQJCDFMaLZlu8y4jQBgpFgi%206txy/7YRNxTq7irGWWRMreACXPJEJ18hRRhsV2MhkerzeI+sobwfiI27bSQoyvHUsqdoTREkIMQw%20Ia1tyVBRs5/izRTjczpk9JBCAhyJbComWUKABETUdSUUKwYy+Tw2xZnUqA4EevEAByp2hdYUQQJC%20DBP94Dy76lonFL446FqESBm9PPg5rXV7JLAuFPeV5OE0wsjzUTOthNQWECZiHZsakZBIL65MsUJe%20X/M6LSriHfuORxBbFC+89EJz1kfs+mC2eXS/lRHhiJ+PWwgR4ZCxvlai/nN8PkgiKwvJsbbh5Uy+%20PRHRCYfO+kDdAnnib0/Mo5VFkIAQW//iNHhDsYhbH0P6Bq+ejxUThsFzJPthqfUf6rjbeOFhpHmi%20Zj56EICPCNhQxQJNnPffRkc4qNVql9LKIkhAiOEBa/KyNIFg6ZZIIpAeb2UCJF1ZseFS8cvjEw0j%20Liz1uvDpsZSnL9/++xaLgXCT4/GnHqc1RWw2KAZCvLfEY6jWh/C/JilV5uHPyu8nJgjG2o+EqbxC%20cT0J7zkyxqL1I2oRoiIeQeA9IiKbGgtpdmKhcj0zWd0tSBAkIMSwQzZzEz9YLrNFSUpZj5fIqJiE%20omHEAussWcsRd1WptSGJA9GZIJtsbcgGAquJiRimgeUrltMaIkhAiGFqjWymRhyByETai2hajwTB%208bAOJKgFiU9HBFJbmWir0HV1KJGXyzbdjZWSzishYeUtWksECQgxzC0PuQkWStyFFavL0G36UkhP%20PALXlS8onPP6fcUeQ231nsjqigvG5srA0olrTEhMy8Sf/vInWkvEZoOC6MR7W0xkE+IildTelPoR%20XTpvaE0o2VeR/lZq911NfyxdLEVrlcRfi8Tbtz5S5qmbjL4zEiQgxDBg/Yb1yQ2/2X1V1+8qdl3c%20GtC5r1TxiIyrDVxZol7/ERQXps0DUdvDq88pnsGV+Tqbmc6YUZFebCm2LX96+aG0uggSEGKrZvSo%200Y1dUo1+1lwWsTLitR/xTCzltoEAqBMII+NrUe+BpV6my/hKuNCGYl00e9sUIeEGt2l1EZsDsmeJ%20LZZEu5CszbKZjVhGLRI1Uytonhhu8pr2JsHPTLKwR1bifhUhifx+rCdWWgbWkF1XzY6+9U9duHj4%20oYdpcRFkgRCE1vJAA0tEE0APmyPGxCLerj1NFEIB0oiOVhgaxXGaeV1DsUKU833VPlozBFkgxDAT%20h2atjKzf0c0k9zf7sNBPxlJy40WE8ewriUQzxTTrJT7adkivTzZvaWR+ZaSvjQQJCDFsxEPXBr1R%20W/RYY0S1627gulJ/Vl1Yuk0/Yp0waEUktZ4kFldhkkWGTmUK3OZstMi8OM5T/6S5IMTmgb6LEFsu%20jUIgar+rRgFpmXE+5sKqX5VSVS5kQjRU8YgH1uOpuYlYSyMRaUYgmrxOQmLN6jW0tgiyQIhhZIW8%20ndvLxufVXlW61iORwkKDhdcxycIq74hYaNJ449ZN+Ni6Ubdv9/3YVBcXQZAFQmwNjBwxMrIpN119%20LlN+R+0fFatAj7cgiU8ljLikRLRJoi7jKt7NN5xuqHGZqULSlFA0m/6b0lTRsqidCUECQmzldLR3%20ZIsD4Lm5muloG29ZolgeAKIBdCQth0hcI15MiNh1MjkLXT0fxj+aEIIhzQlpQkhc18Xtf76dFhex%20WSAXFrHFIlyRLQzqWNehFBwCiayrUCQgwSVPzAaJBNWDxxOxb/lqnEMjJPHGjalJAkOxLIZqhTDA%205CZsUC0hQRYIsRWz4w47Ns62im+6KWm8kW/y8cuCKvOg+65/XjsUSmNVxDOtApdWvP9VRGhkcriU%20Km7a14Um3gtGf/UEWSAEEd2I45tnA2GJzPoAUtupB0LCwbWpwmqNSDj7XApwwRPWh7r5q913tYOq%20oJlQKN/hJfiZ/wAAIABJREFUN5SBAugECQgxPDCYkf2tu9k03qHUjMh6zYgqHGHNSJCppdwRk9HZ%20HYnsK00cJNVSShOTt9sziw3RSiEIMmaJ9yrd3d3s+p9e//VIkLyRkADNxRakXjjileI615UuJqKb%20s55ozS6zXVOpPbCarb7f1LgIQZCAEFsbpVJJFtuKxcSmrNuoM77RJ/ZaNU0XseaGDVJ746m5iaws%204XfqFVIffNdYJ+rjRmpJhrrpb+psdYIgASG2RqZPnQ7hCL0lMZSNUuq/qavZUUG8JDE1UNMXSysE%20gVgIpI7JzSxyVK4Px9lu6muWb/N6giABId7rTJo4CdKVemtD3QyFxjIBMoVHl06baD0SqyAPU3GF%201Lq+AitCOxo3HhPRPW4gOJuj9iMLcmERmwkKohNbLHbVbuy2CjbENBeWpkYkCJTH24moTRbVOhEp%20JRhj9R5YHNl1IFJvoai3adjePcNSaWpyIUGQBUIMZz52yMfgOI6+2jxejZ5GVoBdtTagr/PQBdbj%20tSHaSYaamec6C6dhEWHaZZtiRQT35dLaIkhAiK2cOXPmQNREdixAxiwQ3RGzDuKXBTGQSIuTeF8q%20AX1zxfjckJRCQ21BIfQdeuPXaYWkmey0NCEivwOxmaClRGyxODWnLdjfww1zU9p/6ILojaq84ym8%20ikiFQW4fxlgisys+Tz0ysRBS2wY+8ZzlZrA4dPdLFghBFgixtbPbzN3mtuRbWMOBUlkbb5brS7k8%20EfhOuy+RURsS7+YrkBCS+HOJzGXPamHSbAdeNBZV1yUFIUhAiGGAcAQi1kfKpt5UED12fTywnbhO%20Iw7a1iSiicB5mjsrlnWVKExkTQTN4xaKTLfADG5gTmkOLSyCBITY+vng+z8YTeXVbZJMY4HI+kTB%201G/mym3VXldxUdE2UhQyc/StNhCP5Cz0him7jZomNlsromoSozxeYvNAMRBiiybHcpmB8VQLBGhq%20EqG2PkR1LSlDpYJJhBAA46wuNCw5YTBVVLKEI81NlyZ8zaD7PUHriiALhBgGnPjZE+vV6CJlg2VI%20jYtoGxjG3EeZ1ecyOl1QLSbUFQdq4yOIdujNtByaTdttJJgZ90UxEIIEhBgW5K18pPJbm40lMr7F%20x86nFvClBedj6bfa7rrx2o8Gfbt07dxl49GE2e6pRqnO/s8GN3DEYUfQwiJIQIitm+4l3ezoo48e%20bXHLEwmB7JYmzcxOT3ODxavI4x10lceLz0SPi4i2caJyf2H7d9lA8Da1B1gD15ddo2mEBAkIsZVT%20ml2Snzj2Ey0thZak314MUSxkE9/oNYKQEILYZWGqbjzGobFIdJ1/E7GQZqrRm53SqBMkAdhlEhCC%20BIQYBoxqGwVDGnVXVZoLawibqm5+hzY2kXJERCT2YNqYSJMWRlNurCxRaZTNJQHDMHDEUeTCIkhA%20iGHAeeech9Gdo6OxjngwnSHTNaXdfGUsFqGzHqDvqAsg2tZdyPTOu0ivD9GJVqInV5OB8Uhab9Z7%20IADbJguEIAEhhgHTJ09fu7Zn7eth+w2h2SgF9NYDhnC55vpEIaB6XsaysmSDuhDlcYKRuamWBJqw%20LhplZaVYO7VqrTp9t+l/p5VFkIAQWz25zlwFNayXrqy7sHSV6RnZT9o4g0Y8Eq1I4i6mwGUlYiKT%20EbzXWRva1u4Nfj9RUb8pHXwl4DiOzRhbRyuLIAEhhgV777o3XNvVxzoaZWQh+3dSJ//F3Fm6bCtd%209lVWC3jdGNtEXCYWyGdg6ZZKM7PflcN1XBzw/gNoQREkIMTw4cxTz4Q9aNcFRGeFAEPLuEq7TrEK%20siYUJmpDgOwYSqPnkxIg18VnmiLFncUEtTEhSECIYcTkbSevhaMIR8o37NQ2J5rb6tJuU7OuUqrU%20dRXn8XG3afefcJchw4oA9M0Sm6kdUc47toPDDj6MFhRBAkIMD7qXdGPPffY8ePpO0/W9rxptnI02%205tj12m/88ewoZMw4T2lpoi1KTHuOaSN6m+nt1UBYqgNVWlQECQgxPCjNLgEAxrSP8QYhZQXSMzbP%20odRjhPtw3GqIpfCqohPprYWkdaLep1rvkbBSmhEE1SJpJCTK74uakIf9x2FttKoIEhBiWPHhgz5c%20FxCJpkbYNvWtXVN7kRYk11kZaR13E63hZXo/L21/rnhhYdyFJdBU2q5qtRXzRbbvvvuy7u5uWlAE%20CQgxfHj0b4/+tCnrI83d06TVkbqJy2RwPJGpFc/C0gyfClxUifTdBk0Qm0oQaJB5NnrEaM+qK5Vo%20QREkIMTwIW/mH5aOzM7EaiYWostwShOWlPvQxTcSm7rOygmER9PHS9ecsaEl1WzhpP9+dbZ30kIi%20SECI4cc3LvgG3JqbnsIrNkFI0jb6DJeUbkph3JJILUjUuax0z5NlWEZobDVpBVEC40aNo4VEkIAQ%20w4+ZO818QFRFNJCeFgtIq0iX6RXpYWBc0yU3rTo9vI3QZ2VFXFgp96NtoJjmpmpi1kha/AMCGNE6%20ghYSQQJCDD+MduPZj+z3EW86oRoLQYpFAuiHTaWJQIrQJDrvxi0T6Lv4JuIbiTi5bGw5qPfLMkQF%200D6H+P0UcgVaSAQJCDE8Oen4k+BUnahgpJ1vti5EV+Wd4QpLBNEzWpmkZXilucVSW6xAY0ExNFdE%20qFggv/3f336vewllYBEkIMQwZGT7yF8wh0UtEIGhZV01mkWu6cabiHGIZCZW/HezmjimBe8TVonu%20vM6ySnudioDUKjWcddJZPKirIQgSEGJY8b3//t4XJ4yeEK0HAdIFpZmRscj+Jp9a6JcRH0mrD9G6%20u5AiMFmPg5TXkWFhCVtglym70CIiSECI4clxRx+Hbcdum6xIbyACWdXliZiHbqCTpnFiVh1Ias+t%20zVEAiSbFL+a+khUpPzL7I1SFTpCAEMOT6VOny/ZCe7+0ZdQKiZ/GN9BGs9EbCU8Tfa50G36khQli%20acC6000pEky7XcwqGzd6HJu++/RTaBURJCDEsGTWB2fZpjAfCGeDCCTTeht9q29CKCST6a1OAH3b%20k9hGrrtt08+lmVbvzXTkDdxXjsDnPvU5WkAECQgxvLnm29d02BtsmSocQMNJhTrLIdIgUSDVwtDN%20MddlYjUsRmy2W3CzmVZZLiwXEBVBi4cgASGGL91Lu7HzrjsfOGLECAbXtz6aTeUFkoWHTWzI2hYj%20mgB7agA+vDqZYZX4/SbEL9UqyYh/wAU++IEPbqAVRJCAEMOW0sFeCuoRBx9Rd13FA+rN9MhK+bYf%20b3YY36B1YjLU4LnOgtEWJjYSCSC77kPtwmsVseiHi/aiGhCCBIQY9kzbcdqf4UAfSG/0rbxRZ16g%20KbeYbpa6VP6pz0PXIFEbNAeG1jxRNngN/tGWa8PJnzzZoBoQggSEGPYsW7bscsM1khZHWnFhhmuq%20YTNGqc+mSm1XkiU0zQpb3PKBzE5XBlKzryCAglXAoaVDJa0cggSEGPZ8a+G3csxhCOek6yyRtJhI%202uYLJDOtIBtu+rpuvGlurERBIVKGSemEAo2FRncwl2HlipUrd91j1xdp5RAkIMSwZ+ddd77rgD0P%20GHCrbuMxt7rAcjMbdeyyREW6pkdW5J9M7+6bJnDh7yjPMVG9Do3FpBNNX1gHBwZx3aLrGK0aggSE%20IHwumndRvtZfSw+iZ9WFZKTpZo2m1TVJbKbvVuZ9MI0loZxnkjVXMxIfshWcLwP77b2fRSuGIAEh%20CADd93fjQx/6kDVuxDgkgukS6RMLgebqKjLOawsEG7i4mgng64oRMy0X2ZwFMmniJLz/A++f0r2U%20MrAIEhCCQOkgL5voowd/tC4gLhpXpavXNRIBxSoIg9gp1oUuBqKbSpg2O0QnHE0LX4MCwv323M97%20zw6mDCyCBIQgQjb2bPxlJA6SZnlkZWUB6cH0FKtBKxhSRuIgiRTfWNxEzexqqi0JmhQTERXUh/72%200KW0UggSEIKIWyL7lhx7wG9rologzab0Nvo5JZW3qTqOjA0/4q7KmGeSmgUGRJMBdK9XAKImMHPa%20zB5aKQQJCEHEmDdv3smtViuDjWg6rwu92youKALZLqosK6LJOpDMWezxqveh9rpKq4PxxVTUBD5x%208CeqtFIIEhCC0HDZ/MsgaqJeE9JALFI3Zo310FShoKaNiTYOAqS2MmlqgiKQXQeiERGn38GZc8/8%20Ma0SggSEIGJ039/N5n5p7ljTNZOBdF2jxUbxkIwZ6I3Sd7V1IE3ENKSQjduXxOtX0lx0qnhUHSya%20v4gWCUECQhA6SgeV5N+f/PuoCZ0TAFsjHi7SiwizOvc2sFCaSs3ViIA2JZfpH1MXiG+YXaYcpjBx%20w+9u6KRVQpCAEEQKe+y1xwrTNl8UVRGtCUkLputG4abVYaTNPccQR9XGLReB1CaLTYmSQGbrdjjA%202BFjsd9e+7m0QggSEILI4I5f3/GMqAh9TUhaPyzNN/qIO0lkbOCN2pNkxVJUGg28atSaRSeO/mvP%20iVxt76l7k4AQJCAEkUb30m5M23XaETuN36nuxnJj38hT3DwNW70rt8ua75EW7xhKo8WmAue6eEfw%20syKclb4KvvDpLzx43oLzyrRCCBIQgkghqLD+8AEf/ousSSRSetOCzc32lwKain2oYhEpJmzQG0sr%20FkBzM0ygeY0uwGyG7Tq3+wmtDuKdhrp0ElsFr7z0yunbf2j76/Pj80ArgCKAvH+YAHL+qXoY/lco%200z/l3mWMs/rPTDll/nWo/xz+Ben+ktKESChdd2PWkRQyUc8RnreVU8c/rQGo+scggAFgr4l74aE7%20H6K/bYIsEIJohsnbT/7xzCkzIWvS21zVeEhWOi/QXBv4tGD7EI9Iy/ah9LUSSIqOehoIjQ0ceciR%20tCAIEhCCGArXfOua21iNpTdYTMvIApqLT/gbeGrGVoP+VY1qQzJbl+hEMD4X3gaYw3DV9VeVupd0%20kwVCkIAQRLO0tbd97n3T3ld38cSD6QL6zKxGUww19RhNWyKNxKOZ+0hr1x5L3YULGLaBB/7wQEdp%20dolG2BIkIATRLPvsvU/fhjc3LNWm9Eqkp/XGr4OmQlzTDiXMwGrgjmpk0TSs8UjLIlMPB3DKDg7/%200OH29JnT76DVQJCAEMQQWfy7xc+IARG1QtwGm2+jzT2tLiTe8yqGNsUX0NalJDKzmq0BUUSS1zjO%20O+28R2kVECQgBDFEupd0Y9LUSWddes6lXnaS6saKn+rcWTHBSBQANqgdCWeCZDRYzJy3rgvup1XR%20qwJie8f7d3k/Zu0/68DuJTR9kCABIYghUZpdQnd3N+ts7zyc2zzcWBMZWY1G3yoZT802RUy9j6HE%20OnT3B+i77casD2fQweiRo6/vWtSF0myaPki8O5j0FhBblYiUShLAXeN2HSd7q72M5fysLFPZcIMa%20D4F6nUdwXj3lMUHQfd0KGiIypLcqQYa4ZKUXZwmHKiC217p9zj5zBs6adxYtAoIsEIJ4Oyw6b9FM%20MSgau7LSrBBdEHwotRtZmV6KdRO6ydKERDSwPmxA1iRO+PgJOGveWefTJ0+QgBDE2+TUU0995n07%20vC9atZ0VVE+bsdGogBDQX95suq7IEI1GsQ+/YDIncrjz/jsndy3qotoPggSEIN4u3Uu6MbF94k1O%20v+NZIcGGGw+ku0ifYBjbyFNTezfBMol08h1K6q4bO2pAi2zBxSdePGLhhQup9oN4V6FvLMRWi5Ry%20xxkfnLFyVXkV0AagBUABXl8syz/S+mPx2Hle/7rFOEv2wtL9NaX0wgrFqEFgXLUywoQAG17fqwqA%20AaC8piy/O/e7lXlfmddCnzhBFghBbCYO+8RhL5bt8lTDNqKurKzaEBfZ7dOhmRvSKENLJx5pwfW0%20U6VgUBWVbUdsy+Z9ZV5LV1cXfeAEWSAEsbkxxhurcxNz49AGr0tvYIXkYlaIEbNC4hYIi1kijGV3%205NXVfKideOODoOIdeNXuu7rOu32A0W909b/Y/zX6lAmyQAjiHWDds+u+WnAK3gYcD6anjcBtlAml%20a2USt2YUEZGQ6eKhi4Goc93jri1fTMpry7j7hrt/T58wQQJCEO8QI0aOuOlzH/+cQBnR4sK4kGR1%207s2oSNe2KwmC5VLq4x3NBswDt5WaeWUD7qCLb5z5jZ4DPnzA3+kTJkhACOIdoru7G//50f/8dvmN%20skQ1ZoU4aK7le4OUXylkKBbqee3vAUNL11VjH771sV3HdhjsH5zWdRnFPoh/HxQDIYYNXYu6br7s%205sv+U7SJeiwkj2hWloHsWEhsQuGQphKqQ6Gy4h9O1NoIYx8VAINe5tUh0w9Zdu8d9+5JnypBFghB%20vAsc9fGjzt51wq4IXVlObLN2Ur79Z1WuD8VakSni0WDGR9z6OOGjJ7B777h3z65vkfVBkIAQxLvC%207nvs/tbl518+Y2x+rPdtPgiqq6m9afGQZoUjLa6RFqBvVDAYEw8MAhPaJ1wHAAsvWkgfKvFvhVxY%20xLDjO9d+59ULf3ThdnwEjxYX6tJ6g0OXypvlxspqc9LIfaUWDlbrwuFucLFL5y5Y9sAy+rslyAIh%20iHeb7vu7cd7c8ybtP21/iAFR36BVl5YuQyutyDBrSFWj69wGIhIcfgxkj8l74HNHfq6VPkWCBIQg%20/g2UDvJmZVx90dVzx1hjwKos6spKqxFxUzb+rFbraaKhc5HpUooVK6S8piynT5x++1fP/+ogfYoE%20CQhB/BvZe9be13XN7brK3ehG4yFx6yP+c1rrk7TW7cF5F9mzPdLcWFVADkqcfdzZ/b+64VdHUNou%20QQJCEP9muq7owkknnvRfl511GWSfrItImpColkJahpZODNJuq6vxiLutagAqAO/nGJMbc1jXlV1Y%20uIAC58SWAwXjiGFL95JudtDBB3V8/DMf33DXsrtkflSeRXplxWtD0gLqabUg8V5YcQsk3nVXDZz7%20/a4mWBOw4AsLvn7aqaddSp8YQRYIQWwhlGaX5Le6vrXxzt/fyQ7b8zAmB31LRA2s6+IicetiU37W%20ucnUdN0y4GxwsO+0fbvWbFhD4kGQBUIQWyJdl3XhkP0O6fzBLT9Yf8uDt8DoMJJV6mp1ugFtd97E%20fJB4FXpaMD1ece6Lx6WnXIoLzrhgLCuwtfQpESQgBLGlisgVXeyi/7qIzT5mtvvAcw/IXGeOhSJi%20aUQk3uadIb2Via5gMG59KOLh9rrYf+oHB7pvXdpGnwxBAkIQ7yGOOeUYeefjdwKt8HpmpcVD0qyQ%20NAsk3p49Lh7+lMH8yw6OO+AwCdt2pONgxpw5vN+y9ltw7rl/o0+HIAEhiC1VPI4566IlS9Z1DeIx%20YNuXgVbFnaWrUldFpJGACI14KCNqnQFg5r+AD/QDBeHC8G9acV0MWhbkmDH4V0/Pz7756KNXfXDm%20zOVXdXXh/IWUlUWQgBDEv52zz77sYzfdtPwO254CYFug/RZg1FNARyXbElGzsYK/Kl0GVtx1pc43%207wX2WAd8ZmP9YYK7cfyb9ANYD2BFuYzShRe+esGiRZPpUyNIQAji30h39xL27LMrzp0/f+lVtdqO%20ALYBMAYMIwH+BuS2JwBteaDI6z2zzBQRQUxE1AmD6qjaMNtKgvcJnPmagd1E3dgJjJtAQPzwCHoB%20rAPwBmMwZs1680s/+9nX173yyk9ml0qSPkni3cagt4AYznR1XYITTjgJra17PbR8ecGzPDAWjI0E%202AhwvgOM3kuBymuQ5pOANPWddBtVlAfpwH5xIMoABsrAv/YFX70vjsUqTIRAJ4AOxtDOGFoZQ4t/%20FH1hUZPD1r/yStuqlSs/ccqCBZecMWcOHnvhBfpACbJACOLd5Iorumrz5z9jFot7srqAdILzETCM%20dphmG4S4HZXy/cC4O4H2jUBRRFN81XiIiioqNoCaBCoc6O8A/nU6wMeBYTm+x27BHhhAkTHkGIMJ%20gDEGKSVcAFUpUZESA1KGVsgaAM/btsx/+MP9P1y8uIM+SeLdxqS3gBju/Pd/L+vP5yePBEYAaAdj%20reC8DYbRjlyuE8ViK/r6ngVYJ7Dmm0APAPMPwPgHgJZ+wDIBw4y6shQLRdoOpGODVUzkNl4K0T8B%20wt4Zkm8A8C9ItAAoopOX0cI58pwjZxjgvvbYQqAqBAZdFzkpYUgJJiUkgKplsRceeqj9K6NGTR5/%207rmvLli4kFxZBAkIQbwb/OhH1x580UV/Hcl5B+p5u0UwVoRptqJQaEFbGzA4WAZQ8ARCTASzL4f5%20+hSY5p9gjlgF3v40mPkmckUOkwGMAcIVsPgEWHxPCPsgDPTtjMFaCypYDbC3ABnMy7XQyTk6TRNt%20uRyKpglumgDngJQQjoOKbSNv2zAcB1IIT1ikRBnARsdB4dhjX16wcCF5FAgSEIJ4tzjvvOdtKVt8%204ciDsRwYy4PzIiyrBcUiQ0cHsGbNOnjuraBisArwHhjW4Wg3WzG6FZgwHhg3Dhg5EsjlANsG1q8H%20Vq/2jmoZYLUBMEjfPeWZKxwMY02JzkIB+UIBKBaBQsETECHAq1W0lMswy2UAgHQcOK6LKoAOAKMY%20w6M33oin/vnPG9+3666n0KdKkIAQxDtMd/cSVip9ZkOxeAzq+bkWGDPBuQXTNJHLAS0tQGvrdhgY%20cCHB4YJhovwptnWWod2VaKn0wVorYLy2PcqtHXB3+zxGzzgMtRpQrXpC4jiAEIAQLqQUkLJeWcjh%20YFtTIF8sAu3tQEeH96CmCbguMDgI9PUhxxjapYQtBCpCoAigRUq0AZhoWfj+OedUl3R3Y3apRB8u%20QQJCEO8kpdJsecONv/3H3DPvR4ENgqMPDkagijwsboIxBsMALAvghgBDP8biZnwId2MUcmiXBgoS%20sITv2Vq3ErV1wMBLv8a6OxkG9roc5bGnon9gJCoVwLYFhLAhpZqe5YDBxqS89ERjxAhg1ChPSCzL%20U57+fs8n5jjI2zYKto28EMi5LnLwMrM6TBPWiBFfnl0qnUGfLEECQhDvAi898yg+hl9je0iMBUOH%20NFF1J+Kv9gn4h/wCKhiHqgAmjN0FM17/EqYyiTEoIoiY5JU/IulLQsUoYiKA9X//GlYb38Sbo6/A%20gPkl1GpVOE4FUgbDPmqooYpzrb+hYHEgnwdaWz0RGTHC+9m2PVdWtQoMDoINDiJnGLBsG6ZiN+UB%205BiFQAgSEIJ4V5j3+c9/9B9XX40ZxSK2ATASwAjU0IqVONBZgGLPfNjrO/A/b+yN5f1/wy4MGAeG%20TgBt8IvTGfOyouBn6zKGqpQYBNDBONqFg7Y1Z+Bp8+f4m3kdpOyAlIOQsgxgAC4GcJS1qt6o0bK8%20AEqh4J1yX1gsy3NpMeZlCwenqGcPv/naa/ShEiQgBPFOc9/SpRN/e845/ze96FkLYwB0An4BH0eB%20mcgzhpchsaLvEewGYCKAUfAC162MhXOnDM7rAiIlqoyhIr3k3DwAixXA3KfB3I/hIfYH3wLpB9CL%20PMo4u3o6DtjwJtrtHE7reBXFMkeuKFE0HMDxAyiu6wVRfEtH+mm88B8XAOS7YIFIKdnTTz493jRN%20effdd+Pp5U+jZ0NPtHQewKuvvYoXX3oRsw+aDSFEPaUZEgftfxByZg4QwKx9ZmH8uPHlabtN640/%20Vnd3N0oUzyEBIYgtjTeeffZ1uWwZxuXzGO2Lxwi/ArzNMNBqGBids3BKbx/eD2BCIDKMoQPwqsMZ%20Q45zmIyFnUtsIVCVEmUpYUkJU7FObKzHa/LrWIX54NgAoAcce+JJtx1PlAvAoIlvrjHQaVXRlqth%20ZKGC86Y/ieMnPA9UeiErVTDHgS1EYi5VDcCICRPe1nvSvaSblWZHW6I89fhTz/ZX+gev/P6VeO6F%205zBiyojc1B2mzgAHevt6Ua6W4Qo30c6+VqtBFAQeWf5IpC+YlBL/fOWf4OCQQqL1j60ol8u9xQnF%20F2buMhPTdpyG9898P3aautOIUqm0I63ULRtymhLDjqV//esp39l//xv2KRYxGcA4eKmwnZyjwzAw%20IWfiHhRxfcXFNs567ASGCYAnNIyhnXO0cY4W00TRMGByDsY5hBCwXReDrotBx0GfEOiTEuulxFoA%20/wKwAjYW4wtYi3EwMBuc5QG0+OnDFuoNtVxIaWPQsSFFGYd3PoF5LYvxkdrDWFN2sdZxsU4IvCWl%20d79S4vmOjh999fe/P6OZLKzupd0oHVwKrIr8y6tePnbPg/fsn3/m/D+8/K+X8ejTj+K5l55DuVyW%20MMDMFhOGaYCb/vPLGuUbMVk054Xys1Jw6bouhCPg2A5Qg2wptjDHdlDar4TxI8djQ/+G7z3x1BNP%20XDD3AsyYPiN/yKGH3BC+nvu7UTqIrBUSEIJ4h5nd2vr56UL8YhqA7QCMZcwTEMPAmFwOF7nj8ePK%20HijhHsxCP6b4IjNaEZkOy0JbPg8WxCcY81xMtg23UkFvrYZe20av62K9lOiREm8AWAXgeQAGBB7H%20x7DW+BYYLBhGAYxZ4NxrTyeEAyFqkLIMIQYgZT+k3AiBdbjDuAQj5RqsFwJrALwG4MlKBQdec82N%20Z82de2qj1//3p//O99hzD7F0yVLnp7/+qXHzXTeDmxw8z/UNInUt63XCEZhhLEU8ZOxymXLoeo0p%20LWGkKyFdCTjA3FPnYvedd8eJJ5zIvvyVL/N9dt+HnXrqqW7wsF2XdmHhxdTyngSEIDYTl8+dK9fe%20cAOCvrtjGcMozjE6Z+HT9o7otmchz1bjBNyOnWFgWwDjfJEZaRgYmcuhrVgEa2vzUm+Doj/HASoV%20oL8f7uAgNpbLWG/b2CAEeoTAagCvwOthNRrAOrh4FSYezv8KTv5IWCbAud//ypVwnAocZxCO0w8h%20+iDlBki5DibewAw8ggvxO7wBhlVSgh92GBbdemvm37OU8uA5R86ZW2O1Q5e/sLy9p78HZsGEkTc8%20ZzbXHExz6HYOFhMMNCEisoGY6IQk1sDSsR24NVfmjTzbYdsdMKpjFB5/4vE/nvfl8+TEzokrzvzK%20mQumKSJ4AAAgAElEQVQAoOsbXWzh16nNy+aGYiDEsOOFBx7ABNS72nqBcInP1SbgQfcDyLEdMB7P%20ow0MQY16AUCBMRQNAy25HJiabtvaChiGl3Lb1wdwDkNKtDkOKq6LshDI+/fTAmBn/7QTBjohMab6%20GTzUvhRyxAEwuLcb2zZQqbSiUsmhWmV+DYkDKW04qOAJzEQXVuNodOMtw8CYqVP/qXut3//e9w+6%206y93bcM5v5ltw2C1WzCLJpAH8q15TyTUZpDx1C6daDT7tVPnvpIp51W3Vvy8ellMRExhwhQmgwBW%20bViFVT2rgBE4etFPFkHaEvscvM8FB+x9ABZ2Ldzr0m9d2nr2F89+o3Nc54v0V0AWCEEMie7uJSiV%20ZuPotja5l+tiB3iZVWM4x02YiOvFwWCYCoEp2BOXYw5WYAcwbzoIYxhtGBiTz6O9rc0r9hszxjva%20270U22oV2LgRWLsWWLsW7oYN2DgwgLdqtTBe8TKAPRnDgJToB7ARwFsAXpUO/jn9TlhjD4WUoSGD%20vj5gYMBGpdID2/YsECnXAngdwIvYBbdjm9xqvO+s+b2fO/6wn+22295fAYD1a9bve9I5Jy2+7/H7%20Om1uR2e7q3PdTSRH88aFg6fsGM1aHWjCfZUmHtBYIlIjLvGRwUpbfelKMJchz/OwB237kvMvGWjL%20tR3z5bO+fC+gTx4gSEAIIsGV3//F8gfOOWH6rGKRTfEFZAcOzBKHYBB7AZgEF5MwCxfhUDyDKeCY%20CGAs5xhtGBhbLKLY3u4Jx4QJwNixnhUSCEjQ/GrNGqCnB719fXirVkOP62K1lOCMYQpjGPQFpE9K%20rAOwGgwvFsahcsQqCMfrXrJhA7BunXc6ONiLSqUHrhsIyBsAXoKBv6KKyRA1DtftwZw522Lk+N5X%20upf/3+SewfUwW836AKz4EKw0d5Uu1tFox5CbaHlkCUjcnYUUtxaQjJVkCEp1oArDNTBj2gzss/s+%206Onp+eacWXP6zzj3jCvoL4RcWASRoKvrMtg2xnz/6iW77lycABcbIf298ttyFDZiKiw/oZexdkhZ%20iO6h0muA6F3I6gfnnvsqOILLww2XhXtuC2PYM59H2XWREwKWEDAZ8zruQqI6+BpeXnYmOko/QN9G%20r/SjXPaOSiUHzi0IYULKoAY9BxdtMLE/kOsHMIAHHtgAyN7JGLENzB36PF9Zlnjo3FVZQfJNEY5g%20g2cagYhfJ1MskLh4ZFkjUhEMzTz6fD4PuMBza57Dc4ufg1NxvnbbPbfh9HNOvzzv5m+Zvvv08798%20+pdXM8ZqXYu6sPBCCsKTgBDDmoULF+BrX/vmk2++0YrtDBc1eG1HVkPgt3IvWP4sEKAVHHn8ix8H%20KR6FAPf2HsYgpIQrpbez2zZQq3m+pnLZE49qNdE90RUCrj8UamprK0blcqjYNgb81uzMdSEYgy0l%20KtzCxmd+Ame341DoODAsRjcMgHMDjBkxFTD8HXI7AH3wxhx2AqwD6G0H/jEa+OADQKuRFI8sl9Xb%20jXU0CpynnZcpri2hOS8biIfOxRUTkuDULJgw20zcdOdNQA2fmfjgxM+cf/H5r9z0s5tuO/GkE+fS%20Xw8JCEHgllte2M7k2+JNzMIA7kMFQAVFSIyE15ykBYx56bQbjI9jUJyPGvzJtH4X3JrjQNg2eKXi%20BShM0xMLw/AEpbfXC15UKnBtGzUp4QCQnGOHKVOAwUGvNXulAlQqEEF3XQCDAEZxE2vefByy40AI%20AUjpHb4RhGTQwQVj4yBlEd6s3FZ4ZkcBcA3g0Qpw+COAaSXdVVzjrspyWckmrA85RNdVMyKSdaTF%20R3SZW1li4sJLY3aB1ZXVYJ1s8kkXnnTWHgfucVaL1XLLqZ899b5Tv3jqj+mviASEGIZce+2V3/jK%20Vx5GLteKjdgL63EfPKdPHg7aUG9MkvOK+ngBrxv7YFv3SVQAVAFUpETFdVGrVlEYGPDcV64LBOdt%202wte9PcD5TIGbBsVf27H3rNmeWJTLAK9vcgxhjbXRc2vXG9BvTX7a09cjfLkc1AuewaNZ8wEHXwF%206vXnNgABzkdDSgtABVLmIWWurgxVB1jcARyzxHevNSEcjSyPzSEcaGBxxN1YjcQjLVMrTUxS3Ftq%20rUkhV8Dza58HHHzmjG+c8Rk+ml9/5cIrr2aMLejMddonn3Gy7PpWFxZeNHxdXCQgxLDgySd7XM47%20IdCBjdgZj2NHTMJKrATAwihz4OMxwXgOf2+/DDPXlTDIiyj70/8GXBembYOVy8hL6VkduVy9kLBa%20BSoVDJbL6Ldt9FWrmHbYYSiMGVNP82UMcF0UbBsFx0HOb80epPq29b6CV/7Vg76B0RgcDESk6hcW%20Bs63KoAqON8O+fxIOI4JIQYhhDek3bNWBIAa0N8L9FjAJCcqGnwILqtmRaORiAz1smYsEGjEAjHR%20iFshBlILFeOWCVzAyBkwWg189TtfPXfmTjPPXfHciod/9+vf/f7Y44+9uuuyLrZwwfCsMeG0tRDD%20AiF3Hsmfxe64Fp/GMdgLK/A6GF5NBAUYGPOO9YWD8LcxX8NGeBGGAQD9UqLXtrGhUsFAfz/c3l7I%209esh16+HWL8eTm8vegcHsd6vRC9MnozW7bf30n5HjvQyttragEIBzLK81uyox7ktAAWTo3/FL7Bh%20g2fMVKtlOM4ghKj4bqoKvHjHACzLQktLGwqFUbCsTnDeAcbawVg7vBnvIwE2Ebh3d6Dgeum8wZGL%20HdZmOEzlVHdYKddbEf1u/gh+z0q5zIo9btoRvH71vSn45wsIJh3D6rTw7OpnIVvlfseec+x3Tpt7%20mlyxasV+11113T4A0PXNLrJACGJr4MquLnbEF76w8w/PP//J12+5tngMl+gEUEQxnOOxDqpryPuK%20Gk4MdCSeH/lf2G3d1ShCwPKDEVJKuI6DihDIOw4sX3DCeIaUKLsu8uPHY8fZs7127IGVkst5rU/8%20jC0DAGfMO6T06/oMiL6V2Oh44lGr9UKIfqUNfD+APkj5JrbZZh4MAyiX8xgcNMAYQ60WDK4Kht52%20An07A6ufACZ5reA3xeqQ3n9Dc1U1clepP/OYNdGsG4srv99M2i9PcW0Zys+Gb30YUdcWLG+5SEui%20aBXxyz/9EqZrPvTIE4+Ib1/2bX7BggvYcGqfQgJCbJXMmzMHU2fM+NgVRx11u/H005hhWeiEF2Iu%20oF4/ty84/oQaGGzfNWRDShtCOHAcB4N2O+7f5THMfqEE5gx4mVgAakKgICVyQoRtoyS8YHtFSrB8%20Hrvuuqvn4nKceqsT1623Zvdbsqvt2b2ZIiYK5QcwiD44dh+E8FqZeHZQr3+sRWdnC3baaV/09Xn1%20i4AJIdrhujVIWQFjRT+43gYYI4DXtgPb8Y30mEeDIDmTTC8esW67bytYjtgGLzU/p12nioYRE4v4%20ed1l8UC7ETt1Y+JieqeO4+DljS/zC6+9UO46a1f53Z9892op5cWMsQESEIJ4D/K+T31q+z+eccbt%20EzZuxATLwigEeVb1KYKcMTgYgCl74aKMYEogUIMQFdh2GZWyhbesXdG94z04eMWBcKSDGoCylN5A%20KSlDAQn2GJNzfHDKFC+9Nwiw53KemPT1QQlseK3Z/Uyt+qBbiQGZR6W6HlIM+paHZ3UwbACwFlKu%20wn/8x28AeHcNePpUq5mw7QIcJ6f4ZvIAKwJr2sEKbzZ872SY9qVsyIidTxEFVWQiYjKUCvRNPQIx%20iFtXWUKCFPHQxUfiQhKcOgAzGfK5PHtp40uQpjyXjWTnzl8w//8mTZx09tyz576wtQbbSUCIzcq/%20uy3EJV1dbMftt59114IFD2+zfj0mMYbR8KIBbYyFUwQDARkvXeRkD8p+lMNzEZUhxCBsO4dKxQJQ%20hN2yB+6Y8iQOfWkmBiHQDo4WKb0+WoqAGIzhsNZWTyiCwsJKpT7ffGDAS/Utl1Gr1bwsLSFgK/JV%20gYuNciTe55yH8XgcLhgqkFiPPP6J3TDotONDBxyOsWNzcJz6QwwMAKbJwLkFzk0/oF4vOkR/C1ie%20ZbcfkQADqwtAilgkrtOIApMscnkoKGhgScSFqtH5uLuKa07j14mY4KRZIrqsreC2ruLm8q0ROADL%20MRTzRXz/5u8fPqZ1zOFfOvNLPQsvWjiGLBBiOAsDSrNL8W+qOzy7/NmPX/6dy7FhcAPuefQelD5R%20Grjw0gtvhAE8u+JZrHhpBTjn4R/p6vWr0buxt+7vlsCkiZNQyBUACUwYNwFt+TbsuMOOeOmVl/58%20+7233z5r5iwcO+dYzJk9x522+7Qfpj3HK7q6MH/hQnnigQc+PGbtWmzDGMbAH1XLmFchYRjIMQaL%20cz98LvEl5wlc5k5FAaMBtELKPITwsrKqVQkhXDhOEWVrR9w87k3M6L0Qe5d/gAIroABPjAS8Drv7%20GwYGbBtWuQzOWF00DMNzXVUqwOAg5MAABmo1DLquFxKXEhV40Y11MHE8lsKbc2j4w6iAQUjshRfw%20SssYbDvySOSLDLzqWSCm6Rk6nAOM6SoEOZg0wQsMECwhHnGrQwoZdVnFLApVHCRkMm6hOSK/kyVA%20UvEJqueRIgZM8zs6gRJNWCRMua16qoqGKkzxWInhm5EGwE2OdfY6/Pet/z1quxnbyXmnzZvf4rTc%202mP3PL/wgq0ja4t6YRGZQvHYo4+1/v5/f48rFl1Ru/tPd69/ffXrrb/43S/w95V/R3+lHw53YObM%208A9GW6ymngL6grX45qN8E5Q1Cdd2IWoCM6bMwKcP+zSWPrx03MjOkYP77bKfOP+C88vB3Vx1xRUP%20PzZ//qw9ikW2LYCx8IZAjeAcbYyhxTTRYprImSYM5rVO58LF5L7d0CP3AzAJ3vSPkeB8BIA2GEYR%20nBdhGDkwxiElIKSD2ZUDMVq+hhY42AXATH+iYadhoN000ZHPw1R3dykB24ZTraLPtsN5IRukxDop%208SaAlwCM90XPVPZEG17u1QCADQBWS4HXx8zEuP/4A5iYjDVrvBZc69YBvb0DqFbfguOsg5Rvweub%209SL4pCXIff0Zb6OD3qKQom4lBIIRuUxIraBoLY0hVJhLKTePG6uZgsOhNmrMqiNxY9aImv7rKKc2%204Aw6OPzAw3HrzbeyN156g03cfqIkASHe+6KxtJuVDq67nZ549ImHrrzuyvKK11a4La0th65evxob%20Bzeip7cHML2ceG7y5AwJhsazJLKK1nT9k9Q/Xscr8HKrLkzHxJj2MSii6B738eOWTu6c/OtTTj/l%20Z5/aYYeBqW++2RJ02h3NmCcg/hCo9nweRj7vZUYpm/pvegdwfO8hKLJgSsgoeH2xWgEUwXnenxjo%20+SukdOHIN9AmH8Yh8ns4Gq+jFRZGMoYOxryJhYaBgmEgZ3jZUVJK1IRAxXEwKAT6XRd9UmKDlOiB%201183eGTLd4epwfkqvOTdPgDrALwhBZ5jHOLQV2H3j8batcCGDRIDAxtRq/XAdXsUAVkJc/d7ULzg%201bowK1llwQauikZ4GZTrRFQgwo0/QzwyBSUmJOH9YzPFRYbST6tR8WGjGElcTNyYmNiAqAiZR57V%20BmsP//zbP7/h2C8ce2PXJV1s4SXvTYuEBGS4iUV3N0qlcJTpiJUrVh4wbY9pvdf+f/a+O06O4s7+%20VXX3hN3VKiJyTsIiGAOHDdhLsjCHCT5szhxg+zDBiGDONoiwYAwDxnAgkiMmHtgYfiTbYJIFC0Jg%20cs6YICQQyivtzkx3V9Xvj+7qrq6uDrusMNgaffozPT2zQbM99fq99/2+78WXPvT//vT/8O78d/HW%207LeE3WUTWqWwKlYc+21KcM1iHGqjmol9FIEIMj7YinEpP5St/hbEgMDh+x6Ggd/eLD7TbpF1wiv5%208eEQqDGVCsbUaqBdXcH8jno98CU4D2WlAVzxYRPHLPsiCNaPWAjQBUK6wv/8AgCLIcTzCBr56hCw%204aOCyXgZR+ABrIcBdBOCDkJRB1CVM9NDAPGFgCsEmpxjAHEa7/wQ8FZFMHekoujLIvyvSvNexsAv%20BDAHBM8L4INJCzCwvI5ly1y0WotC9iEZyBxAvI6Orz+Ajv9aHIOEEAFQhGAR7XMRgQbnHBDhvQFE%20JCOJQIIXAMkQQMFowvMCEFoRjCSvs70gZyvFSMJzlngEnbQT+/Xsh9/8+jdVQojbOKuB3tN6VwLI%20ytsn+/bwww+LG269wf31Db8mtc6a41EvNgLVez25VbrFWeNOs8ADORJWVj9Clp6uf1A95UM5Dzj4%20VWAzAqwJYNVwiuA428aEeh2Vri5gzJigoa+rK2AhMopkyRJgyRJc/uEgjlj+RdTJ2qGrMQ7Acwjm%20CK4egopaDEwURGthD9yL/fA3rIlBdBAS9bERQgL8C5lEKwSC/hAINkAwGbGDENQJQSUEHinDe5wH%20wCNE0MwoBBaHv9XbAP7mTMa7ox5Hu7kInrcEnC8G54vCV7wH4b6EidP7UPtsFZzzBDAIJoL7EEg4%20C/blMQkkCVbCNdaigwoMYKIs0infJG+/SOIqAqUiFlKUq1VG2hoKG/EUMGkBrSUt79IzLv3TMd8/%20Zv+VDGTl7ZPBNB7qIz1fDGSpCy644LoHn3zQ6eruOmDWU7Pw1gdvwe6w4dSdbMCwNNDIYxxpvzZf%20vhpq8msWiLCk9lx/FjjkLWCTEEBWIQQTKMX4SgVjOzpAx44N5njIGR61WhAvsnx5NAQKixbihiUt%20/Ki5JRZgFChYyAvWDMFkFIJiYDNHYGijEx+gBzPx37gTNRCQ0A6Xr5JS1PLQz9gYwOqhf9JlWYH0%20ZdtwLCvwa8MMrpbvY4AxLOc8kr7mh9LXa6KJO6p/QFv8GxjrhxBLw7kh8wDxNmqbzMIGty6D3y8S%20gMEYA2cBoHCmbCqwaAAjmIiZh8pg5CJvYChGRsGV5kQTGBj2S/krw2UhRQylKKwxD0xUNqJ5I/CA%20UfYoLFu47Irrpl93ycuzX36+98RPh6S1EkD+yW4DCwZG/f39v6+9xRZbLL7olxfN7T2/FwPegLA7%20bWLX7PRsCHUqnQk4suK/TYmutASAqKxkOCACGAcGCQFMeAz45ivARiqAWBbGV6sY09kJjB8PrLpq%20sI0dGwAIYwH7kC70ggVo9/djWWsAG7lbwcW2IXhMQFgMDEJk8KJ8c2IAEWIQgdW9FE0M4DBchR68%20BISx8BJAlofbpgDWJQRjKUU3peiuVNBZrcKSHesysFGa72FEylLGsFQILAjN97cAPIAt8RK9HEL0%20Q4gloeQ2FxCvYKuH3oY9nkcMgzEG5rPEvnwsj6mAIriIgCXBSJQt5Z0ozMO4nyVXlQhTHDEgKctK%20yjIShrTZroOJKRMzrOPeddtdcccNd6wFYE7jZw30TvtkS1ory3g//Z4G6enpEUKI2hFHHPHW7gft%20Xn1/yftjOyd1Ytpl00BHU9TsGjECh0mioiWAI6vCqki+ymMfZQcXmT7gLPyain55JMtQRXLIEyDr%20XZP74eMqOA7wNkITn4WFtUI/ZFyYMRXIV5RWIwmLEB6m5brgvB4Oo3JQB8Xv8Q3cgVdwCG5DBzz4%20IXD4ALYHsBqATkLQSSm6HQdd9TpoZyfQ0REAnASQZhP2wABGDwwEUSpCwGUMnSEnGgNgEzyOF8QA%20IJYgsNkXAmQuKhOWYPwmowIA8Dl85kf3zGPwPT8AEMbg+8G+xawYYHwWsBWfgXIKzjgIJxEYgQGc%20BoAivR5BgjJgwUVcSsYRHddlLFniK4Qwl/BmlAQP1aDPLBcmGYAij+vlwxIQCNLDsiiSJcFMe718%20LQ1PBOWz99en/oqO9TreO+GwE5b1TuvtbpzVIL2nfXLZyEoA+bQBhtKoN+PeGT/+6cU/Xbzfwftd%20vNkXN8Nr778Gu2bDqlrAaIBaNC1P6RKVCTzKGuTkI8hXJNsTIQqCiPDTT0DScod2FdkeCzARtDkw%20IIod4UJAMAYStGrHXXcyWkR2hnsewBju9Kq4U2wBJ6jjCsFjDIBRoLQrLOmtgVInLOtl4NwDYy0Q%20UgPnDoQIy33BsAQefoudsa31V1TGT0D3vHnoIQSjQsO8RgjqloWOahW0oyOQ10aPDsx+ywp+r6BL%20EFQIdHKONueoc44agFoYB98NCoibAWwR2vJzYHe+hK+8OgqkEgAIEwFQeJ4H3wviWnzPh+8G+7Zn%20R8eoRQPQoCFoUBLdS1mLgIBTDsooBBEQVIBwAk6SgEI4CcCDhwu/3LeSnkkKdNS/MUnvG4FEBQAL%206b6RPMYRdYQaXkM0YCHa70W0faqBiw4qhs8bsQmELXDmr87s+sznPyNWX3P1wwH89pM6t30lgHw6%20/Az0fLEHzz75bNd1f77O/cudf2mf/4vzsevBu4rq6CqhtQAoqhOqcQppnkSlm+F54FEGOPIqr5Qt%20CvErABD1XgUT2SFtYiJEAAMTBZoC0bRBX5rPnMP3fTitVuB3yOqrSiU20ZctC6JHPBfntlcJwUOW%208gbptpY1GpbVhUqlC5VKLZwUGHwr3xfwvBZcdzl8n4ZRV1KfGEQTG2DR5NUx8bUbsV4YoiiDRiqE%20oEYpbMcJmEd3d5DeO2pU8LvKyHjGANdFpdVCldKgITLshg8CYy2sgbsxB6uAiNmwam9gr5nj0F0f%20BwEBZjEwzuDZHlg1ABHPDTfbC0DF8kE9CmrRAEQoDb7OYyCUgNHgntOYeUjw4DxgJhwclISAovSQ%20yIVZNikKEjAQQkMQoMFrCSHRYhuBCTFcwZMcRqJ2tpuytPLytXQQUWVTPXBRBzVqABVo57zOXAwX%20bDWrRt5a/BaO/vHRl19z7TWX9+zSQz6JktZKAPlksw307NKDni/24LHHH3viyJOOnDzIBmvTr50O%20q26hvmadJKKrrQIzXGccxLBfprpKBwplPwES1OB96KACUjyLO0/OUqqA6MYEi2yBQYFoCFQ7LJkd%20dF2MHhyMez+azWQZ77JlwMAA/jywCA+xXVEPGQfQCUK6QGkXLKsLtdpYdHRYqNfjVpLgWxA0m/Ww%20VwTwPAZCZCLuaADj8dqrz2Oi6yXURIqg38O2rOD3qVSCEuOuroCF2HY8VWpgAHAcENuGTWnwdcr3%20ckBQRxtu8yVs/PUPsNvV66PaWYcI/zEw+NSHAwee8IIZF3bQ00PbFJRSWNQCtWgAIpTCpz6oT0GQ%20BA8GFsTes5BtsJBtEJFa+CX7SCyqypW8BBmTjEWIwkhguNIfjrRVZtNBhOYwDW6QwIhhnypyqwlA%20DPuEEvz3yf+Nf//Gv7d7p/VWVzKQlbd80HigDz0792DJh0s2v/TySze44JILbr7wNxfa/7bPv4na%20+BohDoEz3kma4bYCBLYBMPL6N4rM8ZKsI8UuMpiIkYWQdMQ4ISQfSAzGq3CAD1YX6J8bjIcdFCLo%20qWAMDgBKKbqAQMrSGgnRasFrtfCsNxaUjEZQqhsOgUANlHagUhmFjg4Lo0cH5EAqTGrEFWCB81Hh%208KcWgDqE6ADQBbc9DgshzDUE0f+XxJkklMYjc1WfJuwrgWYbEQHUVm1ivz+0sOH2WwAgoOFPkwBi%20w4YHD5RQUAQgQSokeExpwAY0GVH+bYhPwEjcxk4YAQnnp0gQkeyDy9WTKHJVCBaEk0jqEkQE8qRi%20skdypfw5GkNBCSEn8T1MPgXJkcY4koBFcwBG30cB0CAHSIh2PPwMVmkVdz92t7PtrtuK7+z/nV8f%20c/Qx32v8tIHek3tXAsjKmwIeD/ah50s9mDVz1vItdt2iY2FrIRGOACqI2YZuhheV31oGwLCGAR7K%20PiGklIRF1BGqciGA9n2IclzbVxevFHgofkhUBcSBVzcU2OQ9gbE0gICqEAE5Ywyi3YbPGDo8D5XB%20QZAQQHzGMOj7aPkefs8+g2rgLACogpAKKK3AtmuoVquRwjR+fEASHCfAnwA8AM8jcN0KPK8KQuR4%202TARFx1YhG5wLAYHiYt1hAirm3gkU6HVCliS7wcMRHo0wXxbMM6Dr1PqCHwOjJpsY43tJ8IHQwUV%20WLDiugEETEL+k++roALCVkpxRZoFJmaBaNKijEbhgoOCgnMOKmIJS/6LrsJDSUhYIbAoWVSRjCVI%20ikVEICTLhU0gkMVGTDNDdFajs1ya4bepjEIY5C5kyG0qoJiAhBj8xHCr0Ap5cc6LOPYnxx558SUX%20b/79476/00oGsvIW9Ws8+8yzv//SPl9a9pUDv3L4jgfviGpXFWQ0MU9rGw5wDJVx6MyBkvSJrUhY%20BElQSbw+fCyIACU0BhcdSAiJAERlKvrVtspAEh3UTGD5dwief8nD6IUBd7ABkHDWBmMMrhAYZAwO%20paCyOzw0pfs5w3Ihx9Elx94FIBIURnV2BgxkzJjYogBib35ggMKyKvD95PcgqGAhJsDFInggamMy%20XMYgwlG5CZ9Gmuj9/cHxVgvM8wJfB4nmZrSYgL/TePjwYMMK2EAIGiqIyOMWLHDCYRELtrAhLAFu%2086jRkHMOy7LS8e4aCxAQEdPhRGEg3HDCq3JQuB+Z7RDxos9F9HtHTCJcsAlIzEaQBCUTu8iVtUxe%20SZE/or8PxPz/SgCxSdrKAhLTZzbcauNrOP2y03fca/+9br/j5jv21WOIVgLIv5C3MeuhWdvu8MUd%20Fp1+zulvbvXlrVCbUEPfS32orVJLj+7U5SkrR57K8jfKggbNAQ6dZWjPq6xDgoQEhYREEt5LQJGJ%20vYTGV8cJMKHxrAl5NawCCGeBhEI9jjeOI9j4NBdVGv+qTIhgkeUc1XAIFA2ByUcwIGoAAiLhTgT/%20MUIIKBUgJFjPbTu2K5zA8oDjBMcDY12AEBpuBELEb1AbFpYhaCRsy41zNBlDvd1GXc4PkdVhchDV%204GBk9Dc9L4iBFwLtMMW3CaCfCdS+ugraaEfvEwdPsBAOnpCHJJugJPjbUBpIWdSisLgFbvHgnnJQ%20SiGssFtdcBBBQAUN318WPAYNmAhVZCwkjWQ16VdwEVxcSJbAY7YqmUbCB+ExM42qt7IMdooUa0VS%20bcYAACAASURBVErJWln7JllLvekgg4L9tMaWBhKTjAVNCqaA67q454l79j74sIPF1ltuvS6Ad1cC%20yL/QrWeXHvzvhf+7/GtHfq2zY+MOnHf9eaivXTfPitYrqaySHodJqipgGhEYZMlXOtPQAUMBhwR4%20KMcIJen9cFPZSXQcJClrKemt0cbi5jjuc/B1OO4+SuDLl3hANfg8yvgQOcPDISRmJgBcIbAcAgwe%20TG3HjAV2CWPBei4rgoHgXqpL8bDBYDSu+j0EODaFiHKvBgB0hoOpqpzD8TxYzSYqQsTDp2QMfLsN%20NJsYDJsJBzlHUwg0Efg9ywEs2LQTtQ0dDPqD4DYP4TD4J2UrrvxjYJG8JFmGnAcvN0opGGVJ8CAB%20QMAK/p9EBK+LvocgESvhgkcoLpmGlKHk31VlG5KRRAs+jSu1ElKUWr3FhZlJGBZsgtDQz6vUokhP%20RyySs6wMT8QEblYOeKkggmx5yyY2uemvN+GJPZ5455rfXrPW7Hmz5/ae+vH3i1grl/OP73b9Ndfv%20VxlfmWaNsW77v7/8n8M7OUEHQDqIlNxjuVwOlHMURUU+tpEGG0dhKSbmoudcKeBELAJiE7OvEm7E%20Chfy8OuITUCs4DG1aPSY2jTewuOWHVb7OBSWY0Wb7djBfcUO9qsWnIoDp+rArthwKsG9XbGDY44N%20uxq8Nvoa24JlhZVDNLjiJyDga1G8twbBas8yNFnQGyK7wOUVu1x45aDYZQAewroYxEQgHIBLSGCi%20W1YNllWFbZOoQVyChyQHS5cGKtPgIOC6y8HYAIQYgAwt4ZiP/ekTWIO00S+UQJQQzAiCDm/CGKjv%20g4agIZpNsGYTAyF4LGMMyzhHP4JQxQUA5jCBt49YDdiyI1ggATDKwEkAFBIw5D8fPjh4cC84GGdR%20j0gUbaJnZqmSodBKdJG8mpYgYjS4SXI0biRhgiSfBxJeTQQymmdhlDiR9nGiCyVBzEUaRU2uWVWC%20BMXfK690Pe81qkSnF55YBIuXLca8D+f9YO9d9753y223nD3jvhkrGcg/hUwVVlO99dpbY5576blD%20pv9y+iXfOvlbsLtt0BpFfbV63AxQxhgvkqqKfA6NVWRKUyZ5imqGt/I9dKZBrZhFUEoj4JH7UiIB%20RbTwExICD03KKHI/krpI0kBnjAWLnB90S/ueD9/yg9/FA9rbAzduRrDVmS7WXyIwkQcFtTKIRA0h%20CYY5EYzGO5iHyaBoQR1xy1gTnldHs1mNDPNWK1mFJafVum4bjLUhhKt8jzYYBrBXh4tu0YHzBwbQ%20Hf4utgivzBkLYts5R9X3YYf9IkwIeOHxQc4xIMEjDFRcAOAtX2D5d0eDLx8A5wEbq1ar8KoebGrD%20IlbkU6jyFkcMHhGLU3OvFHYSTStU/CoiSGBuI+lXyecEict75bkiZavITEfcFyJlJkJJkolAYyUC%20KRlOpA8m/QiNVUTVX3kDpXQmYmIlPONnmWbcqH6NlcFCsoDJwEQooXjijSfws9/+bOa39/v2mPCa%20YiWAfKrB48E+0vOlHjFr5qyXDjjqgI1efe9Vx7VcVFatJFmEnWOMj2T/BkXKuDZ9XaJqiiDlV0jw%20UEFDlZtgxT5HCjQsGrMEi8CiVsBOZN+BFfQgEIvAsqwEkMgPikCwwHARXhUrOU6+54PaNF6YRDA7%20pNJJ8fzZDl5+j2HcbRyfeVZgXLhwww4+18GMDYKnsTfmYTNQvBCKTIMQogXOm2CsCtetYGAg+IO5%20bjJppN0OQKTZ9OF5y8F5MB43KOUNuM7q1nz0jBuPCvOwuxB4bHAwBrKwosoNpakKY3DCkl0Rzkxv%20cx4AnRBRiu+HAN7hBK+etwrsuctB6jVwxuF7Pry6h0qrEjA2yw7eTwnECogILuD7fgA8YSYWY8GW%20CEpExphbbZGLus9ljL0KIlAqqZReIClVqUxGGutGEDGwm0ie4gavIoOdyEiWlGeS93XI8EMo0hlb%20WSN08+QsgeKeKA1onvn7M1h67dIlN95w4+TX3nrt5d6TPx45ayWAjPBNCFH7xkHf2PPQYw69ZYev%207SBqE2uEdBIQhySlJyvDHKcFBrnJ5ygwyXVgKPI+EkCh+BsqkESGePicZBI6YBAaAIJc3C0rlLMo%20jY5LJhLdh0CiMpHIOJWmuYiZh+d50c+Xiw/nHBazwH0O6nF44wnm/jfBuxwQswQ6PGCHPwJjLWAi%20GK7FgahhcxBsBOBVBDm5Mrq9Cs4d+H5wycj5KLTbTjh/PPA8PE/A81y47jL4fj8YG9BEssXotpeA%20ThwPtNo4rFLBM3Pm4M12G4KQKE9PeiIVAJaUtUKW5AkRfcclIXjMho/HnXWwfIyP+kA7GLgVgqrn%20eahUKnAqTiwjSpkvfK+EiJN2OQvYiBqiqAKJlLQkM4kAJQSBaMEnycVfLcmOAEhfHBXAiLrUMz9k%202vdX11L1a0XOAqxIYYnfq+g2VJNd7SnRmQq0fZGWAnMZiHLMgoV3F7+LX/3+Vy9OPXDq5wA8vRJA%20Pg1sIxzQNPOhmaSjo+OabXbe5pCX5r4EUiWorx32bjgGj6LIHDfN3igTrW7q18iSqLTnyzINQgOg%20IIRErAIUEQgQGktSkT8RAkXkWcjHVuiJWFYSSEIQkguTXDDk1XB0leyxCDyECBdPi8GyLDDKEiBK%20fMBuAtiUwB0QaNeAjTzgNTA4qIfTzRkI2RFCPAYpeAnhAKChkc7AuQvPq8Gygj9esAi7YKwNxgbB%20+TIAyyCEdCkWocnm4idb9MNebX1g+XLYjoNfATjivffwpuehGTKhbgB1IVBFOiy+HRrv/aFs9R4E%207sVuWGZ3owP3o920o1h25jFU3Ar8ig/LseA4TgzWlCZ8A4HY14hi3Xky4j3BRpQIdzWBN1rQpcxI%20NGagXFmrsTQCSmaW9toE8xDJjvZo4ScFcpZAYbJBFiAlFnGRIW3xDDlLb0ZUb3rZry5jMeXznue1%20aLdHXn4EH1784VM/O+9nXdNOnDawEkA+6RVVPT249dZb/3zuL8/da8bjM8AcBtpNhy5VmSqrSAZo%205MhWCTZh6uXIqqAK2YMOIJE0RWJpSoKFSaKyrFiGojYNpBObRsAh723bjmI0Eo8JTXojymInwUNq%20/J7nwad+IMWExyw7/tpog6Kvk/gK+KUtgU0fB1q0rv0xPgvgCQBzwooGC0IQCMEhhAfOW6C0Cs+z%20w0WMQwgfQrgQoglgIAQP6VC8j8s+L/D1rXeMc604B9pt/Hr8eNyxeDEub7exOoLc367wpzpIjquK%20x9n6eBt1PIYjMIguEOsRMNsDaSJmEqEU5bouHMeB53jR3yTylwhNLI6RNCjCrnIRAkj4mDEWM0CN%20jSRG20oQEfksInElrRvjJg+EpBlGAkQUxpElc+WTixwfRQ1IFBlswyRnUYOcRQy+jMkf4RmSVV75%20kwBem/cabvjjDcuFENs/+MCDj6/IEMaVADJMc1wIscrB3z14Sx/+fV878muiPrEOjAJohaYrpFSZ%20ykZ+Ca6F/DnjeVIVSObzCRlL79HQ2EfEOKw066BEkadU8LBj9mE5VgAcVgAcEhwsy4orp7Tjlm3B%20hh00uNFghrjU6+UHW5BgUWOEJUpAVc/EJI1EfSPaJ3/hdsCbzwLUF1HLWvT5tE4F52dAiNmIBz0E%20ZrgQNTBWASFWtEIIEbTzBQAih87OBxfvYa2O1/CNyRsEQYlqgGOlAmLb2L1axZeEwHTPw4sh++gM%20QYSGpbaByU8xB+vjDfwb5uEQ2HgJhL0BsuXrYIwDbT9e/EN5z67Y8B0/eH/Dv0kEIgrARr4EkKq2%20iiQu5V7dVycPquNyVYZTuHATYS69NXWM62ADjYko1V0qK8r8vtrXJH5nkSFHDeVGkfZl9MfIkbZM%20TCpHlrNg4ZV5r+A7R37nb9f85hoy5T+m4J5b7lkJIJ8IxrFzD55/9vknJ28/ebPZ/bPrnuWhvpYm%20VZXt4yjqGi/RPZ5iHEh7Gak+DZV5WCQtVVmxZCWrqiI/wiaxDGKR6IpfsoaISUjwcOzgWChV2Xb8%202KZ2DCJhlZCF4F7+ixl/WDFEWHTlLLiI2YaSp5QoNVWjObQ6frsFPLwb8Pl7PEC4kNN+hGAQoo1K%205WK47hFhqm5QABwMjApcCiFsZTVSZw32A1gEgvexbv1FPP/VdVHp6I7zrZRMK7kWLBUC+xGC7YTA%20PAB3A3gNLXxYOREMW6PJ+gHxWXiiBSH6YWN2AFLufJD950K0HTAeMAQwxD6GzyMG6NkebNuOPSsa%20g3QE1CJu2Ev02ijvJ2c8wUSk5yQZjGq0G+eaD4UREJHKmEp5FlmRJCLjCl4MEQhM8ezDARHdXDd5%20IkLzTEzSV5nVWwDX33U99vnmPo/88YY/fmFFrYcr+0BK3BqNBpkxYwb+fOuf97ht5m3TfvG7X3x1%20CVniiLoAqYc9HGofh4NkH4faq2GXlLV0oFEeRx4EJcbXyuej1yuvJRaJ+jgSTEJKUHbsWVAnBgHL%20TvZuSF3drthwHCfo3wh7OOR9tVpFpVqJtmqtimo12Cp2BVUruK+QCuQ/Bw5s2HDgwAr/qRlOEkyY%20CKLJ5RAkOdPCc71gtoUbDEtiHgP3OLjHo9wP4QpJJiAEMK8GiA/WVQSkDhBSBSEW6vVvArgbnvdm%20yDjaClBIS1t6HYsBzIfA+2iJt7FX57OYuXUFVq0jaFMPZSsMDgYNI/3LgIEm7FYbzPPhcwFXCAwQ%20oAKB9+iWeMe6Dh4fAyZWBxODEEJa6PMhMAf4t0dAN14W+wcq2xJIsgZ10qAfFiEojxljgVTls0iy%20Un0QlYUIZu4JSfgkQksMUPK09Gyt1IJfHmVyj5MkVSn99cbeEpLBXob7+5IcVkFKPI98xmZZFt6b%20895ap/3PaRvMmDHjtpUM5B/nc0w49bRTP/zq976K+vg6nKoTA4TeyKdnVpWJVDdVUhm6yI15VDnP%2055XhRoAS+gyRz6H0bURXqbYSbxFW8qjeReRxSFkqlKoi9kGDx44dVAPZxIaFQLKylH+SdRDt08HA%204v4ACSQciZne6jQ99Zhc7BKzqdUrYh9w6wSEzoXgmyDoCGmF5bst+H4LHR2/wujRz2Lhwp9AiNFh%20um4n4m4SDgEXwCBsLMTG5G3cMOp1bDJ2ArDcBipLAc7RtGy0fRf3vTcb9y6cg+f8ZXi00gLGxWxk%20k0FgveXAOFdgLjYF814HgQchBsDFMgBLQTEfdbyDceJvGFjtdSzxKiAi6DIngkRzOcAQAIXDQXwS%20FzSEG4hSdq1UZpF49Y1DEEnM7IAAmCQLjEz48LnIZFe9ERMj0STGUv6ESc7Keh6alJUlkZkWeJOx%20LnIksOFKWqoJr96rxjtTjhdd8mts2xUuen/We8jjjz6+/NSzTz36nj+NrJS1ciZ6Fus4t0F6T+oV%20J5160ss333fzpHeXvAtap0l2obOJMnlVZYY46d5FzkyOVCUVIcaqqmjfIqnjEigSwGHFFVYJZmIp%201VTKFklTcj9kLbZlB1IVDY+FwCHBg4Imojb0ZjcBAR9+1D3twUNbtOFyF+12G61mC63BFpqDTbQG%20g/12sw236cIddMFaDH7bh2gJ8DaHaIsw6z22KsTLwOZvTsALZB8QbAg5A53SsaB0NBynG5XKaFSr%20Dih9H647C+3282i33wonD3rYnM/CHliK7SjDZMowvlJFd0dHENnbNRoXuYtxYfsDLLN9DNgM1CEg%20cqqu6teEKSrCB6jLgOaqgDcO6y04FD3kMYzCHKyP10CwBPPB8QYjuO0AwJ8cXhA4caoAteO/Y4Jx%200mSTZ1RhJ0GEZBjL0miPftekZ2LyQVRQMT4vkqnK8vuZZp8n9g3TKVPHlIU0T8pMHdMep3pfsr7u%20o8xj10fpqseY4bgaw6zOWmfKvuxhbQIbjNug/eIjL9Zk4vdKBrKCb6++9up3Djj0gCvPveZcUR9f%20Bx1FzbJUmVj1keogB9Jltxn9HAlfQ62eInHJbaLhTwKJYoxblhV5HlGJrVpNpRrhoXGeYB6WBYc4%20USe0Chw68wj+azTKa1J9DwkmkXQlArYRTdPzvEi+krIV81iUkQWGKO4dPhJsRDBgoyXALvgAr+Ad%20MIyL6qCEsME5hecJcO7D8+qw7fGgdH84zv5hTJULzxvEQe4WWB9NjBUEg5yg6vvwB5u4njdxXP1N%20UEJRHRP0AtkWSf9d5VWvzHniAJgFjFoAuAvw6ujvY90FDnawKTZeYGGABmzMtYBdbgXuXUcAXSRi%20DMQOGi4JJ4kZHNziyXQApWgiKsTImseiXowrC3LCOFeLFrhIBF+a7vVFOgUSRVfaeWwCBa8hyDbY%20NRks1b+SJbkN5ZJcn52u+itDMdblvaX9n+wYdF5898VK4/yG6PlSz4iShpUeiGQcZzcwY8YM/OWu%20v6xvd9qLr7/3+n3fnP8mnDEOSXkcKgMxGedZ7KSM1yGNbdXjIEkwks8nPBHFF9F9jaihz7biK1E7%20ZhaJnCrN65DMQmZPyXun6sTeR9VBpVKJNqfioGJV4BAHDg034kT+hgQRlYVI8JAyVSJqQ7IP4cHl%20brC1AgbSbgWb2wqOuW0XftsHc2P/Q7gCwhOIuvW8yBMHWQx8/nVgA1BsjA/wBNZC8Ae3I+czKNOV%20c8+b8LwBeF4/PG8JfH8xGFuMSeI2jMHS6KsWE2Db8W3cM86DU6WwO0hw/ph8Mv28UZtNw/PLdhy8%2000Ux0yG4ciyw3iJg/XDyK+fA211Acw0tuhyxGZ5gChyJCPzEvtrnocxZUR8nok4Mfkf0M02AAQPz%20EMIYEa8eK9WjkfM8STeLfLTHRf5LlsQlcp4nBX6J6fsTZAOb8p44tkNmPToLe++598yXn3/5rZUM%20ZIRvvaf2Yu+v733XYdMO2+PD1oeojKvEYGHnsA593niZDvIMlqEzCmMMSYFUFUWj02RWVeRzqHlT%20Vsw8pK+hl+WqjX+2ZUcgE8lVYUxGQsKidgwUxEr5HWqVlTrgSGcbMuzPC/+53IXHPbjtACgkiETA%20ERrnvhd4IdzjEL7BA1GGaHQOAmN4sK5/EU08gifxLOqwYYXgEbyQ8xaAGhizQUgsTgsRoNEcdGMt%20AKMEcFFd4IY1GerywsNBek69yj5IhiTiKL9zJQS+KlBvAZduCKyzBDhqEbAqAba5F7hjMlCpiSib%20SkCkNHXBRDDIicQXIYk4GiQj9RNjh43roTD7Gfq+qTJLZy+G5xPvSRnd/6OyFWLwO6CEQw6lykvk%20GOEE6T4R1TzXfRBTnwjTziOhMBGhrO48OH8YY5izcM59AEjj3AZ6T/roEw1XMhAAJ59+8g+c0c6s%20e56+Z0Ov5hHaSePKqkoJ1mENs6pKq6zKkr9MbEOtrlIZC7UoYCvxIjZJdIMnWEdYdkttCtuJ7+UW%20VVo5SqWV48Cxleorx4Ft26g4QeaSYzmwiR0wDhIzDpVtSCBRK6uiXCY5u1sBDg8eXN9F22+j7QWM%20o9VqRezDa3lwWy68tge/FYAId4PKIuHH7CNiIe3IK0d9AbDVfGBVBPm7h5EP8TQ8zMYoOSJJQZw2%20CFErsAbCqqh+1PEiJuAd3NQF/GVtoCYn4qrnkJ6aXDb7TN+3g/G9S2rAn0YBrB9YnwNv2oC/Rjw3%20RU3GzfUWeDxOVq2m0h+nOtG5iIsSpDXCRUKvT4EFMgAlx2PQB1oZezuG6/qSj/DaobCSofx+ullf%20pj+miJWF++/Oflec8oNTvnHwfxz8y0t/fulKE/2j3rbfbXv/xdkvWqzK0jHqReW2FNk9HVnzOCwk%20R7wOITG3VLih1ggYxYxojEPNqFI9j0Rfh02TTYC2HcWOJPo5SCh30Zhl6IxDl6pUSUGa5WrkeIJ5%20CBeu66LtxuDhtly0mi24TTcwzRUA8V0fvM3BXAbRFkHZbhuBgS4zQ8Lq2+6Xgf98D9g0tM4nEoJV%20LQsXYCJ+438RDlZHkIk1StGf1PKYwKW0xWx0j/9fLJpQCQq0atp5pEfU6JlGyDBledKziRiUh6gU%20GU1g4kKgY1Xg7S/HP1OWbCdi+ZX8stS8FkpSM+pVLyRR2ppRDZXFTHQA0X0UE1CYwEWXtrK+V4qV%20iILXFJnpJcHuI5vsPGNfPRf0fZZxnmhsW1agr1pdFW8/9TYZCUP9X1bCOv3M02fdcOcNX3hq9lPC%207rTj7Iis3KoyEeslzfFC4CAZDYBUCzckmjluKXJE2DUuQUQ1x+V+CkAUg9zURZ6osAqNdYc6sKgV%20lOpmGOQm4IjC+DSvQ/U7PBGDRwQgTcX3aAYyluz9YG5grnMvyIKK5CsWSDfJGbLBJrz0ueELgXMr%20i7BTfRYarTXwUnsD1OhokAhEJHGXQfCD8Mf9CQtXqYDIFvKqxjiyxpSaZBPTgkIV2YKmZdR5NiCa%20AJ0DYG0kWIT0RaKZ4xZSJePqsCc5fjjRdApkz9AwyEVqT0rCeEfG4k+Q7hEpO+kva/qfKCmBDcVX%20IQWSGMkG1cxLd30ioUnOAszzRIQmYVGY5T8enoscmL1otjjz3DNHxFD/l2EgMvTwyiuv3Pavs/76%20+PV3XS/q4+okYYzbJc3vvOiRnJTcFHCYxscaSnQTV4ZKRVXWZD+9TDNiHGF0epRVZSWBI1WiK6NH%20rHS5LiU0YBw0YB6qNKWzDr1E1wQeHBwePDAweMKDz/3ALPcVr6PtBsDRdmPwaHuxcd5mAftwOYQn%20wF0egEQ7bByUyeqDAfvAEmDUbIH95xJMArBWyEAmUIpxjoPxHR2wxo3BNYzhikVb4p1WC66oY9AP%20/h9V0kYnaWKe8yyw9kJASp9VjXno5w0pABBkXHUyRVFTry5luWYr/H9tCWC95HmcYCNEYSOGcvDU%20PHrld9XLfDNLfrP8B5HNUFI9IXnHM3wXoyciMmLoy7KRIgaUx1r4MNlImRJfU1lvEQsJzxN3kYuH%20b374u223fWVPz/BZyL8EA2n8tIGenh788je/nHvqxaeuvqi9CPWJIXjorMNB+cFOeT0dGhPRs6gy%20I0nyynENw5sik1xpDItKdOXcDa2nQ+3nSAGIzEzSQg71EMRIqjKAR5ZEpQJHIACxxLQ8Hz584cNl%20LjzmwfM9tNuBx9F2k5VWEjy8tgfWZlHVlfADpiHvEx8eL8k+/OU+tvrMF9Ce9xTajMUvEQIe5/B8%20H9ZgC98ePRrf3nwhmvU62raHAZcBrSY6B/rxu3nv4Uedi4EOGvsdjuE8ohkAQnJM37yUVyv7XMKL%20AF4DsIeygEo2wkn0PQUVyXOSp3+/aBCUfAyRaawXRbCbjqUa/EQG0GS8JovV5DKSMsb7cC/FRYnj%20WdEr0KqrTJVWWc8TQ/GNmh6srlk2UOmq4N6H7v35aSeeduVKBlJwmzlz5vcvu/Kyi2648wZRX1Vh%20HbpGXQQeRRVWZdNxTY2AOmCYwg71eeEK25A+RyLnyAAaCenKUiLVVflKVlxlJOhaNG4AVGUqlXGo%20HeWqbKX7HRwcvvDhcz+Qrnwv2lzXjSuu2iHbkMDhevDbfrDJ2BKXAR6i0l14iPwPaZqrDYTNt5v4%20/Vk33njL1CMOmNxuY10EZvoEQjDGsjDOtjGmXofV2Ql0dgZhiI4T5J+0Wljcvwzj+Juoj7GC+bRV%20rdhCr9LLYiBZC65J/zY1j/kaOLbC/yMFsKuiumk+iH7hkzhXoXlwpoosYmYhuRVb6v+NZC/skV9h%20qlAjBj8j594IMmVksAxWUeiljJQnwkv4IzxnM/lmyjkyyh+FVx94de+xq43980oGYrg98bcn6g88%20/MAVO+2704H11eqor1knqYoYB8Mb7lTC79DBwWSIG2UDSrK7yE0AogxzsiwrYic6gCSiLOxAglKr%20slQZS0pXKshQGnsZagOgZBwSGChoVJIrn5cVVinwgA+f+WCcweNBU6DnBeDhuV7kccgyXQkivhvk%20X8mcK5l1JSuv4CPd++EmjefvfPU7OPC/DvjPY/fdd4+Fd945epxtYxSAASFQ4RwOYyDtNrqFgO15%20QLMZDUNvuy628j9AfbyV9M9MhRfULFmWYiAwaOAk45i+DQB4AMDuyQVHWEF5LxHJczDBSPSQP52R%20GDT7RFx+mZvIqKhS97nh9TyHSeSZ6zlMKPfYSPgnZb0TIL/EFxlshGYwEqqxVh5fSHy49ENcft3l%20ZwFYCSDqbcq+U0jvMb0bn3D2Ca8+9upjqK9VR8rrKGOUZ5VR5k0CNAFHhlSlv1YHjgTjUKQqNWrd%20ZJRH7MNKVlipTETKVOq+zkYSnggJE3MJNbIL9QqTgyf0cBU4ZJkuQ9hRzgMA8VjcTe55gTTlujHb%20iFiHm2QcEjyEL2Lw8JCUr9SrL9lAOEjQVevaGwCmXXHFv586efLDS/r7o1kcthCg4fwLn3N0+D4q%20rRYopbCFwHWsjfdX5XBqSDcE0gzmkWegmxawrE5ldfOz2QAQMpF7AeyCuEcgXEQi89oKwUTLZIrG%20w2peiDpTJTFtEGJ4ukbOAp4pcRVIUoXSVh7ryP1VR3i0hknOEkhPPjSBTJa0ZfLYVIkyXPdqXTXc%20dPdNm85+e/bYtddbe/Fwfn36T+V1nNsAAHjwvnDE6Ue8+ugbj4J38kBekDX5ajew3tuhXz3aBSCj%20VcJEHeJ5vR4SZJRu8kS6LkVyDofs8bCVzCo110jrLKe20lFuJ+dvpBJ17bg017bslIEePZbmOyWZ%20gYcqw5B+hlqO68KFJzy0WCvo5/DbaLmtIMuqFeZZNZtoNsNMq2YrrrhqtiMJK6q2kt3mLguAQ2Ub%20kn2oxqFSxsgHOTYYt4GYNH7SAgBYa8KEWRvuvfeSOYyJhQgydfuFwFIhsJRzLPY8LGy3saDZxILB%20QdzbP4DDxg7CqRskKxOLLZgcWUoSpdnnXaKT3VHO7RqCVBYO4P5Q2vI0ScNX3i9mAN7QsBdMJCvZ%20NKNWPq9uufIK18xgpT9F3QpNasPzpcFjOMA2EkYBKQmyWdMI89J7DU3IWecSsQlen/16SYQ0LwAA%20IABJREFUfe311uZ99/cNy874p2Egfff3oWeXHpx5zpni7MvPDrKrupCOjCjTyFWmkzynS7xo0JPO%20MoyyFSGZw52MvR00yTj0Pg91Frne86Gm66Z8E20mucoo5D4DM3odQBC+x0VYphvO22Y8iGL3fC+K%20Yve8kGF4MQthLosj2sO4dlmiqzIPdcs0ztsx+/CWeDjwKweSY0485lEAmNnXh516esYeueOOYs6T%20T4ISEgT1CgFPCDQJQVUIOOG1x9mdAvUOkmYeWeeOlZYwCxeSMjJW2ZhvhHJWH4DdwvfD0sxzlZFQ%20xWwnSXM96m43MBD990hcrQ9neRLlZaXEfJCikt4yrymqBFuRN1MXu0B2uXCJmemJCYk0ZskDAwP4%204x//uKRnl+GV9P7TdKLvuP2OJw06gw9dfefVcMY4AeOoIt1NbsqssjT5wXSVZ0jYzZzJoXeNG+Z4%20qOwjlYZLlRTVjAqqRBWVzhxMLMKQpqua6glwoVb8e4QLAyXx4KaE5q39S/R0CBYY5HJjgUnuem6w%20uUmDPCFVtf2EbKVmWzEvZh0m8EiwEQU40ATIcoKdJ+2Myy+9nDTOaJAZD8zAlVdfDQA4/5pr7L/c%20csuXiOuCEpLwqdsimNXxHBe4ZE3A6UCy6sou8NHy5tqTgg0a6CDjyjPvKpeE78ObANaFubIp4yo/%206mznJcxh7fnofOHDMJFNPweGUblimPtFslYRsBX1n4xEFVfesaKqMv335OaiDLac4YVnXvjJv1wV%20VuOsBqZ+b+qEH/74h9vcfv/td7WsFkRNxKZm2d4OiiFnWGX2dOgVLKYRsjDM5iAKwKgNgjSdmqtW%20WKX8Dt3zUNmFZqirxxLPU5oYE0tpWFlFkqZ5VqmuEOE8bR5vvu+DMRbN6vY9Px4E5fuRKS4TdeXx%20BGh4PM64YiIBIBIwhCeSZnkIHLL3ozmniSt7rzxzw3U3/HHPLun692deffVPFx1wwPb2yy+vsrpl%20YSyCxvJ6eEodNx5YvopyUO04d5DfM0QNYEBKLlR8CFVZeo+IFxcOYBmCxvrPKZeQJqake3cqi0YO%20kyI50ktq8SGl/v9G36EsOxkqiGSVC5foNRnWvjD8nfV9vQ/E1CeSV5HlI121p0S9ews8eO97VUKI%20+y8jYckwsCdefGL+/c/dD9dx4095Xux62XkdNNsozyvNzTLJTX0eKYnKMFpWH/KUKNOlSWYSyVaa%20eZ6QuBSGIYdJpaQzxRCNtGiEg50kC1GpNA8n34VT57gIp9hJ8OAhEDAegYYEEc/zon3ms9ggD49x%20L8i08n0/aA7044DEFPMwSVjKB0UMChy656E49DuH/th0Tt3f14fPbrrp3gBw8o9+JN684gp0LFuG%20CY6DDgCDFrC8S2MdepRNkXFeJEGZrjL1gL2hXOEKw0KzCMArADZSqnJUk5UqZjvVFlDVVOc54EFy%20QJIUGNLkI/gUQwWWgmO5DYgj7ZVkSVnIMNF5zteV8UfCAgqf+HjztTdPA3DaP72E1fdQH66+6mqc%20csIp0wbowMzbHr5NkFGEGCUrU9R6Vr6VjexmwYwYdf0KM2WSy9BDmjbL1UVffk99CqBFw/h1qlVR%20URoZ25F5rk4LtDTwsJTXm7wSaiWZEFE4BiFJIAkXk4hdiGDyn9x8FkpVXuhv+H6yuspVqq0Uz0N6%20HNEWggfzWSxZaX5HBBheRsmuPn12EYDlmDR16tRFM+6bkTq3rgmlrDMaDdJoNM44cPr0d8evu+6r%208+r1Hf2OTvyh+SEGx5JYHjWdX3nMNs/oLPI3iKHspchkRc4isiBkUPUCOUsgXTarSlSCDO0qv0y8%20CB+GVyIKQET1EEz9JSjwPMqW+paRtUTO7zhccCwCxqKMtSYeeHTWow/8U0tYjfMa6D2xF4/+7dH7%20Pz/l8z31teskUVk1lJnjFPmDniwDs8jq6RhC1HoiOjuDhZjkKkJIyjBXwSHaz2AcETuhMVNJfC/J%20RpR72dmekh2QrpaRMyIYD9hDNG7W50GfB2MJppGQsrRjwg/mcnOfRwyEM54AjagiyEMsYWnVVurY%208ta8FqYfM/3N448+fqOhnHM/bTRwcm8vLpv+i8uOmX700fXVanFVnynu38rwPrL6QPI+iSJnQdfv%20meFer7hSZb1BBOVmXwjlODtDyiXInohJzOCXyswqY/aPxEo01H6OnIU+15Qvcy9y/oZ5f1u9eEJk%20SFhFsqYaf5PXeNoG2DKG3T+7+5l33nTnj/9pJay++/tIzy494oJLLpi1+8G7f6G+Xj1pYlZgnk9u%20MsbLTgjM6+kYaie54mvoIBLJSBmeRyLXimosgirZVgZwUMElUcUlfyc1YVXOIOI8+h0ZYwnZQp11%20LaO9E5IV43GlVQggzA+YiWQTjIXyVPic3ORj7vN4YzwBGhHrYIps5Rm0Xc0833697XH80cdv1Di/%20gd4Tys9BOLm3F41zGrj4D9O96qhKstgiyzsgyA3LzGUZIqcahxvkHdOUOvm8XWBccwDPANgpXEx0%206SoLANXIE32KnuwTUf5Pxu71jxNESkpbmYxjJKq68pjTEKrNRkQW0zbLsvDXWX8d1rf71ADI9p/b%20/rPH/ujYp3543g9RX6We7uXIi1+XjV2kJIDkeR1FDYFKV7mxm5yS7BBEkl7o5TFZuhtlW1GaBBgN%20HCihRklKH9MpJ8gRGoxATQALT1e8RADCFfDgganNeSxnccZj01wxzznjEYhE8hRLA4ccRxvJVSzd%20p6Ca5wkGooYLNoHmvCZOOeWUvZ7b6TnSe0KvGOKFC3p26cEOX93h+Pe899KDobKuzE1SVZFMlcdE%209FJM3RtBgVwiAcPW5AsPwLMAJiHdbMYNnxW9yU39PwtzkUBiEBPJSfUVIwgmojyIFOVxDQtEhlrp%20NdLd8EMEFWrRf04Aafy0gdGV0RMn7zr5qbkDc1FftW5uBDSZ5WV6OyxkBxtmxbETYnytCTiyZCs5%20m1zKVikQkCW+upRFNfCQgKNKUIQmDPEEy0D8oSEiYBSgAeuIzieidZdro0ijsaahdCXZhwQOFTzk%20vjTCua88JxkHi0GDMRZUV6nzzJkmW5mYh+59NAMAYUsZph00Dfvsu8+dwzn/enbpwSMzH1n2hYO/%20EJx7WcUXJoOSlgAT5JjpWbo9NyziWVHeVs4CJkFkKYC3AayjmOoc5Roh84AkoydBBxTTebeigMTY%20y1GGAQyFfZQBljKPUSBrkhwW8zGZF59oE33KflPIfl/Zb5fp/zf9hTcWvQHSpRiYFYMGPRQPJMPo%20NJrkFpIlt2pnOUka6Op0QF1+Uh+nzGyDuZ4IRcwCD4Wh6IxE7eWIfr5B7xAknC4Xnphc8BgoGI/u%20VTbBGQ+8CxawCFlyq/savuenynIjzyNMz00wDz9mHinwMMlWJtNc6flwWs6cGbfOGN04u0FmzJgx%20rPPwuXeeO22hv9AhdZLd95G32OqPkeMv5DWDoYSnQHKqdvKuZBcAGI14HGqR6Z0VXZ6n+5dZXMsG%20Ew6xd6SUXFRkfJcxqsuY6mVN/yI2U6ZIIUu61L2yNvr8fn/IJvonMsqkr68PwhPOmmusueHUM6bO%20eOnDl4LO8jqSUSSmGBITYJTo/0iAg6nbXB05awAMvYQ3UZGlyFSwYnkpT6rSwSFlniuGdwIkQsZB%20CTVevUTgIHs1Qv8iAgnGEt3hvh93icugQ88Lwg1lyGEUfNiOBzzJqPVok+m5skw33CTAyP4O7vHI%20/DUa5p6Bebhp2QqDQK1VwwVHX/AQAPSe2jssEeDJvz2512tzXqvTCk37H6RAwspK383rnyAljtOC%20n0GRPUJZTZ2W3mEtNNLfQLqDX32ffcNxXzPs1V4U02yKrNTYrGl7psfDBZKhHB/OMKuin1EESqIk%20gJXxfLJ+3wzAii4g/xkApKenBzfcckPz1vtvfX2eNy8eEaqDRxHrsGFO1dWZhQYOqW5yPfDQ0saC%20EpI5n1wt1c1kJDQNFAnwIEpzIZACCwGRov+JPg4k/QopM0Wswmdxya1kDL6fYBOeF5bctmPw8Nw4%208DBKyw3BI4ogkeGHbggWYX6V7/pxlZUWSaJ3mRv7PLI8j1C+Ev0CO2+z87Qjjj3iwMaZjWEXbmwz%20ZZslLnHjcymvixzIHhg1nC0PkEwgUmaTAKh+biSIcACztffW08BDr+RRAcPUyJg13MgENNxQNZQ1%20rpUPY8urVhIFoJU3alaUADiMIACWZRukBEPhAPMZdtx2x08/gDTOaRAAOPSIQ2cfeNyBtF1tg3QS%20pEp1TeDhlGAbhv6OKPwwqxNXBxq1PNfKmNOR4XkkPA3LYJhrZrrKLFIltog9F5MslfAtwqsLaXQn%20vAvNs4g6xqXspABBIqtKAkXbj6NH9B6PsJ9Dfp+IeYSlurJEV99X2UeiVDcr40qVrwYBd5ErDply%20CG655pbzAKD39N7hXcjs0iPOPOnMmammQZqzgA+XWSjHErlSeQZ9zhwaY5WYfhGlBzB2hlLWgAYg%20rgYifgZQZIEGywEGZgCRIoYiMo4NZcZG2QXfVCpreq5IWuIoN0NkKB5MUaVXTv+Oeoy5DF+b8rVP%20N4A0ftZA7ym9ovfHveLqu69eq75GnUDNG9Ibt4qYR4n+D2OJrppzRdKAkVlJZZnBQy/RhYWU7JQC%20D6UPQwUPY1UXIcEcB419SNYRnSSMxb0a4X7UAKj2ZSjxIp4XDHaKGIgGJuqxBKgoDYFR7HrINpgf%20mOQJ8PB5MvXVEwlpxOh5qODRiqUrsVxg+/W3J5dffDkZbsIoAEjWcut9tyaZbFYfBEpIWhnAoTNK%20tew7YsAoYCZZIGIVSFq2AiDVEETeQbIk2sRITIBiYiJlQCSrjyUPTEQGwAwh+beQoehjaUUOGBQB%20E0o+PxSGkec5FXlJahZWm2HP3fccGGYB1ycEPKb1YuoPpi787Z9+O84aZaW7fYt8jiFkWSWqrMrM%20JTf1eAyhTDdqyFMAJQIPNaqEKJMFNeYRxZqQdC+HWror6+6j30etwVdKP4kIynYT5bxhnDYXPIgn%20ETyuuOJx97nql8h9WcorK7ESBrwf3EcMyI/LgCOjXLmXC4Jgwiyb6LKVMmlw78/tjSP/48gJu+25%2028KPel7+fPrPLzjmwmN+UFutlpRR9bG1DpLl4lnnniZxZQ1myqu8SQxUymoqzMrJ0mUkH8ayZ/Qj%20aJYcr33eiiZzkgKQ1YsIsiq1yhQLFK1eZVY2McTnRiKosSxQDEXyKnMOqJvyGeIDHP+1+3/hqkuv%20+nTGuTfOb5DeE3rFUT84asEvbvzF2Pqq9WSXb1amVdbchSwQKQpAJAXDnoghkh354CG/VyZ4KCAg%20P1QqSCSmFCLtcahd4dE0OCldcZEc8qObZhCJnB8JFup+1GHORNJs58l9WXKrHlePRSW5ISjI5yWA%20gCGxH0lY6glvWvC0jnOxRGDxgsWfe+SFRxaNxLn5fv/7m0fjYPMi/YHiXg8UHEMJEAmBX1Al2E/t%203eDa7yG0ffVr1F4P2RvihO93B4LSXhkWyZTPm1rma0pvMP0uamaWelWfV21W5l7kgMZI9E2siMDG%204VShlR17CwxtLG74ORvfMf6e4b5FnwgG0tvoFeddex6sbsssWeXNKzcFIRoiSXJnk+vgQopDENXw%20wSzwUIMKdfBQ5ao8cJFyVwRWUL4emuShGOnGmnrEdfASPKRHolZmqeGIESAIBRC08l61kVBnHzpg%20yEFD0cChIvAw+R560u4A0J7fxjnfPWfZSb0ndY/UeVlfp343xmAKRimLqamAI++CxlApJS8+hhVp%20oiwSsgk0IbOUmY9tYiF69P1yBMm9ayEdU5+VGzfULvwylWl596b3a6RWtLLsZCR6RoZahmtK5NWl%20N4Z0lIlaMRcyztU7VscxBx+z+uDSwQ96Tx26V/gP80Aa5wUa83e//913z7nqnAA85Ie0ZvA7sjyO%20Iq2XFDQGGszxRJWV1jCY2UU+FPAgJB1eqG06w9BPTHXBj0xxw6YGHZr8DrUvI9GzoRjfvq8EHnpK%209HpYmaX2gXCfx/0dXrK/I2GQh/d6c2AEHr5Bc9dj2kPpqjm3Kb5/wPcfOan3pO7GTxojcn5eeOGF%209U033nRKYrHMK50lOQsaKWmuD3GLWDGQP90wy1jP8kMcRa7rV6rb2hl+iIt0ea9puiEz3BdtRf4I%20ywBK/hE3MUJfW0ZiEsgvYx4qeGTFv2sXEsQn+GDuB7PX7lp78XDA4x/GQKTn8cPeH7oXXHuBXZ9Y%20J5FsVc2orspjHVlZVpr5bdJoTQwj5XNoHegJc1MDFSN4EMVERwagaMCS2EfSR1GrsBJMQ/U8RDoQ%20Ts2wivwOziPZSvU9dMYRRZdIliFiViEZSPQ6wz440pKVckIn/A+TbJXle/QDJx504ts/OfUn64/U%20+RnGl9CJn53IljnLzP6HKUDRKucNqNJkrnxFkD/DW2ciomDxK8NCVIAeCKuyxmX4kDTDh8wqdc7w%20gobMSFDA3MgIrHbDydQaSRZSJEshw7hnyA9SVNhmc34TV5515bWHfvfQb3/qJKwTTz9RXHLTJUF3%20eValVRZ11oHDygGPrLkdpgRdnW3oprk2ryPFSDSg0JlJQq6CNvtDAYuURAXtZ6qZVoTkfggiyQpK%20Oa9Iex2yTyQx20Mp+432FSABRxJMmIj3hYiAIgIOFUR08OBIN6N5SA9FUtJkmx82xVnfO+vD0048%20bTV5UTJStxn3zVj65SO/3F2ZUAkARC0jzwruNDFhUwwORX6neR6AZMgbmSDCMhYTpkkaJn9JDqBa%20CqAb6S58B8VBpXmpvqSkjzRcIPm4ZK2PmqP1UXwQrgEKg7nbXPcQW8BXt/0qbrr2JtL4aQO9Jw/v%20s/OxSliNn4V9Hscc+vZ5154nIvCoFYCHaXZHQTVInmyV6DgnGVKVnqqrgwdNM4/odTp4KKNgo/ka%20RCTnbuhnucHojkxuzhP7EStgcfxIlEGl51Jp8pXamyEn/6nHogRdJbtKlarUyHXBRHQPL5mem5Wk%20q870MEpXpnTdQcBb7GGnSTs9ctqJp63WOH9kwQMAHnz0wW7qUGNWWuEY2QzjPDU3PE/WokOTuhIX%20RBRDL/G1NHlYkbKq3VXsvPnOorWgFbC+psIC20gmAZjKfU0d7Vklv2WlLVN12VAlrKyS3jzzmcMc%20oy8KZClRQhbLa2bkOVKYeoEgClhneMHQXNyE67gHNc5pkOGCx8fKQBpnNdB7Wi9OPfNUcfZVZ4v6%20+FC2qiE5RdDUx0EzPA+Spsw6s0iBh6YbZ5rkSDYJJkxzigRT0Kf5JRiELmURsxmuH1fBJleq0tmG%20zjw0yUoNREywEKXqKmIhipQVyVsKy1CPSXYRSVM8lqkihqGM2NSN80xJRWUeYaMglgFf2uxLS+7+%20f3ePXVHn64577iiemPNEEKHTgfTMGSfnPCVmBpJiH0VX1yWMdF3rjt7/onkhvuG9z5AK/SU+jtn3%20GOyw3Q6HHXj0gT+tdFdW4Q4HcUhSxnNQXOpbNgIGKM4FG0r5b9FqR9IVbyNe5jsUKatohnwW0DBN%20yvKRmgnDljGcNfWs+dN+OG3iR/2cfCxhin19ffjWt76F4/7nuCWX3nxprTK2QlKhiENN1TVIWJmR%20JBmNg0UVVkbwIEgb53nmuH48BAS1Z0ONXM+alJZY/JFkIomSW9WrkP6GWj3Fk7M7GGNxCq5WjquX%204UY/yzf7HRFwqJVW2tWg8EV+X0JexdUg0F7UFjttutNr991639pT9p+CN19+c4Wcs/Pd+WfQThqf%20o0XNqaTA99BKxDN9AKB8qKJh8dMvNIwLotAksgL9nRKKRx5/BIs/XHz160+//t2rLrvq2PkfzO94%204+9vwLbs9OJVprEur6GuaJgSL/g5+jFgZPK0yv5/OMpHnAz3a4rYiAk8PIC0CbbdeFtcedmVXY2f%20NWCazPmJk7DWXm1t6xe//sX7l/zukm46ipYbO1s0ZjYnZsRUNmns4zBUWEUfwjzw0KImTA1hKYaQ%20ulhJ+hEpv0IBCtXETqXkapEkanw694PEXFW6SmwsGameGuYk5SnGU7M5oswqpZJKnduRMsX9MAjR%20BBhZFVdatRXv59hp052evv/2+ydN2X8K7rn5nhVyvl46/dLjucXj86xIdy9a9JFzdVz0fYukrqyr%20cZpdOJICOfWizDT+uQI43Q4mrDrhFgA4+KCDJxyw8wHbXTjtwmsnrTppkbfIM0tbZeQt3yBxqb4M%20G4bcZdL/h9O1PtQ8LZ4DoqzEwm/6GQz50S6mqjRmAA8/+LusN249HP4fhx8KYERk348FQI467aiO%20xm8aq9XXrJNUom4F5gwrO4NxDGVqoGm2B3KqrTJkqwgotP1U9IRWXaOa4KaFIerFQDzYKZKXQgko%20VZqrMAOdTaRARO6rQ5u85DwOfQpgAkRYDCKJ2HUWA4cEkwg45L7maeSW52bFsivVQGwpwy6f2WXw%20wT8/uA2AFQYeAIAqWsY55uq5VQY0SI4hDAy/vBf58k+qyiuvxDdrU5N7Q4n5d3/6HR5/5PG5AHDU%20D456YqA58O2nH3h6/M/P+PkuzqDDyAAJKrcGFSD5qD6JqRTYJH0OJ3+LFXgFRd/TVDqctfCLgoU/%20y7cQBWBRls23gBqv4ehDjt5x9vzZV43UR2WFeiCNnzbIFpttsf3Us6Y+stBfGFRcZcWx63KVjVLx%20JLngQUjmMCijfKX4G2UYSGpokypbIV3BZfQ0CIr9jazqKiDVFBg9ViuvJIvRPBB5TC3fla+VXkgE%20bMprBRMJUz8qyzVosAmvI+sKyQQqSrJue1Fb7LjJjk8+dOdD2035jym455Z7VugFz1qT1/reQr7w%20lxiNuDepamDMpgufjHM2cS4OVaJCQSWWQeKJmG3eAmXyQnIqssRygfVGrdd++LaHNxq/2vj3Ur7R%20rjt+ZY211vjLTXfdhOqoKmiNJllNlj+SV6hAhwioQLkGxJGo2PooVVnDneWRxWJMHpcfy1YbTtwQ%20xx183JTDDzv83pH8rKxQBrL+KutvOP2q6Y8s8hcFqbrVEtVWpjyhkWAexPwhTshWxAweJqlKrawy%206c+JCBGBVF9GJFEhaXRHZjfP2KQfEVY8qfuRhyHZg8cTg6Dkc5KRRI8Zi5iDZBlRsKHKNJhBovIz%205CpZdeVp5aJehlyVIVuhH9ht893eeujOh7YDsMLBAwA22GCDTVOLmqnCqkw5rnpBUCRBKeeRvhkl%20sJwKrtwAxiwJS2cpWuMuqRHMWTynesXvr9jd9L7tufued9907U3kF6f/4g9brb3Vu+uMWgf+Uj+K%20msmUt9oFzKQsW9Fz00ySl+kxz2EzeeyAIztROO8YQzlwz/raPMahgb9oCkysTcS0w6d9Z96iefeN%209GdlhWVhvfrCq+t+/civv/56/+sBeKieRwXmjvIsr0OrtjKGIerggQzwIFpfB8mWAHTWEH24YYgM%20Ifq6QRKZ/LKzPAIKgmRmP+JRnwQkwTDyKq1SrEOvupK9HxKAlHnmiddzJNmKxlwiE1woPR1CpD4A%20qT4PrmnRpj4PU7puE2jOb4rG0Y0lvdN6N5yy3xTcc9uKBw8AWGPCGsfjbRQ3vekzvIXBsxAo16dA%20ckxwJLPQRFHQk4gvjuTIYjAkZ5pT7apX/cypi5vaoc4Az/Fw70P3XgXgav3H9p7SKxqNBqYeM/Wb%20l55/aaWf99eIIDNOOfeUbewuG06HY/Y4y4QzlmUjXHnvGNIz401shI+QLjOU0bh5+Vh5ScBlmkTD%203inREugm3Zj6n1O3Pvigg59ZEZ+VFcZA/u/W/2v8fenfQeok3edhwZwjlBeKWBY8iAYe0MBDk6t0%20QNFnbagf8EQlTR41FkGfR8ok5yLV36Gn3CZ8D8bjIVA8WRGlehwm30MfGmVkLUwbI2t4Xh0pm9rX%20rtr0Po/CSBLTPI/warX5QVMc+/Vj/9Y7rXdc42eNjw08ossqq8RikscCUMLwNsS65/olBOmKvYJB%20VInPQ9FkQwvZcSeShVQJ7n30XnHxZRdf0Xd/X+ot6e0NjNljTzjWFUz0n3LSKds+ffvTa17ce/EJ%20O26248vuAhfNBU2QJolZSdvATHRW4uewkKxJiWX8k5HceMHjokiWIj+nqPhEYfDND5rYY7s9/vL0%203U8feuK0E59ZUR+VFeKBnHfeeb87cfqJ36yvpfR66PPLs6qtCnyPIXkeyPE6Mo6lus41f0M3zIvA%20x9Q9npA2si5mDDEk6pCoLO8jwTi04xHTgGLUiyQbkVc86vOqERgxDEWDTfR5lOk38JHsMFf7DgaD%20WeanfOuURb2n947HP+A2aYdJ4p3WO0H/RwfS5eYWzAPMTOXlWSnQWklvismW7AdRL1CySkIj1ihQ%207u/kG7wQT5GgBoA9t94Tt1x7C+l7oA89O/eUfm9n3jVznafeeOrhk845qXvUuFHdS5pLQB1qfh+L%20OtmH64981J6RoTCR4XSh5/09TVElyueKNzksz3Lvu+G+xTt8YYfVVvRnZUQBpHFeA70n9mLr3bcW%20ryx8Jc4QKgpHLFFpNSLgAZijSUgOiKjgQJMatZ5LlYhez4scKTH7QQUMvTFQNc8LJSy1ukvZ15vO%201Od14EjFZCiLUSLTKq8yJKthzUOiz2ON+hq48JQL39p33303aJzZGPY0wY9yq61fE2QsAbqU8zev%205Fy/WtcaCYlFcrvZU2w37zwxSCApEFF7J7QLgtzSz7IZWYOAt8jD4zc//uzW22z92eG8x9ddcd24%20dxe+u8qChQvuvf2+29f++5y/o9ZVy76opJqcDWRHoxSBSY5fZZQdR0rKEh8BQEyVXNp8j/ayNs47%208Tz86Ps/GgVged9Dfej5Ys+nB0BuvvrmCTfPunn+DQ/eIKrjqiQxFKqSY5yXmOeRBx4RWFDDh1If%20CgUzaKRKeYFk859uphvAQ20KVN/dKL5EJuySNFiQ2CxJMpDhgofCRFR2oT6fktf/6Q0pAAAgAElE%20QVSyGIfhJE5UXRUZfnptv49Usq631BM7bLIDWat7rQ1/d/3v/h4GGn6swNHX14eenh50bNghxFiR%20DlGsGCqw8q6crZxkBBOAkJKfyjwQyQra4zkgYmo8K6rIWiawbue6/iuPvbI2IeSDYV1whhlMQojJ%20l1x6yXF33HfHPksHl672wusvoMmbotpZJYUXlmV9ElWwL2IjQ63QEiMAItzw2JSkKzTZ2BXwB3xM%203mDy20fuf+QdU78/9Zi+vj7S09MjPo7PzIgASOPsBnpP7cXYTcbu1rJa96Eb6fgHB+ZY9hLBiJng%20oQ9+AsxTBNXXguQCiW6262BhZB05UpUx7DAjJiEFGtrikAASkQ8kWaARgYp+XAOJlOxhWoT02ASW%20sRhlTcALwUMMCGyz7jZ4+K6HSePcBnpP+vhZh7w9/eTTb2y999Yb1teoBwAy1Isg7Vw2Aog2lS9i%20ykD54VKGRSgBIhkln6lYmTKgn8FCyDKCPT63x3633njr7R8ZvLULhukXTRc/POuHbmd3Z8Unvvli%20s8TUx9xMMWDkZo2IEn+n4bKODJC3mY1O2ulddMZFk7/5X998/R/xeRkRE7331F5c89trThozfsx9%20UXKp6cNm5VP93CC4Mk1TWXlDmvFokpj0qxGSLI9KehKGahiT36DHi0QmOePGBsHEgCYlFFE30CMD%20nHHjY7VzPFHmy5NluXo5rik9Vy/Nze3j8DMkKlOJbhMggwTuAhcnHnQiZv5l5jqNn/5jwQMAnn3u%20WS/KsyrTfV4kgZj0d4F8aXOYTYX6ZyHzKjzPSCeGC7mMsEVREdh00qa3jcT7roJH46wG/uf4/yFs%20AatNP3X6Xs2/N3sO+vJBWKNjDTTnNoW31AuKLdTOdzlcrJ1jxpuaGbPuh7qZTG0/pwDARf68G9f8%20mWkuaIItYThz6pk47+TzdvvgtQ8q/yjwGBEGInXqsZuMfbTd0d5edIls3bhMU1HR/HI9nC4HUBK+%20hXKVlzLToTQIZshUiWMmb0MHn7I+R5ZslSVhaVebZdlHyiTXpSohMq98TOW6ud29ZYIRm0CH34Gz%20jz/7xu8d/r3/7Hugj/Ts/PHQ7rzbRRdf9PLxFx0/qb5KPWDRqoeXJ2FlSC168nPhZEJSXGQR+WMG%20LT1ikxleSPT3zOqmzpvJonpWslru/SbEB2JjQsgbK+pv0jinQXpP6RUA8NBDDz1+wWUXLH3qhae2%206BrdNfGd999By28Ju2oTatP0PBKd9al/AwyRkQxFXsxiHEBxc6DCOLjH4bU8sfrY1cmGa26Iow89%20+u6tNt3qpUlbTPrBxylVrVAJ65yzzmmdcd0ZVWtsOFWwjvToT7VyhaKwc7f0GFpTpLXhiixLoioC%20i4Q8RVLNHsZjKQYDgzGOtEGeCRgwd5lHiz8MYKF5IJEEhZLAoUoeWfEMpoE1eSasG181Nj9o4sm7%20npy+zbbb/EAWX3wSbnt/Y++X73r2rkn2WDsGkGqGiZ7ViS7Bw8qZhEmyy3bz4m+yLjjUvoGEqW76%20m+qFD2XkR1NSbzOI1d/n8/vce8t1t0xZ4R7Vg33o+VLAVKafP73S3+q3f3zajwevu/468ZtrfoPH%20nn8MjDBBHRqDSdYM+7xU5DJyIhmG52ECkIz4E+5ytJe3MWWnKThk/0NwyCGHkMf/9njHdttvN2iS%20/D61AHLn7Xduvddxez1VW6VmNh1NPR+m4TtlZpibBkIR84fR1OeRYiImUMkzwnVvwyRXiJx3WgBE%20kKBHxNCZnjJEkRG2mMcqTKAh8h/ri0wm4+AGPZaj3CRBWZ8+vym+OeWbzROOOKF3m+23mY5P2G2v%20r+/18j3P3xMASH2IAKJdGEXnmmX2PxKVgybwKGHapiqwdBDRzXSWAyKmrmxdotQHTg0CG4zeAC8+%20+CLpu7+P9Ozy8V4R6z/z55f+/IR7HrqnefuNty//0ak/uuqdOe/g4ccfxtwP5gpSJYRYBNVaNb8k%20eDieSB6AqPva30OOjeZtji0mbYGtNtsKq09Yffkzzz4z7fKLLq+vt9F6F5j+n5+U20fuRD/qJ0ft%20URtdM0eUmOZ4lJhWlpKttA+UsewxoyySgJSHS7VzXAQDnxIAocRgCyFARHb8eupb8zg4Ua24MPV3%20pIBDCPMxHUSUn5NaRKCY4CgADpFhkvOSkpWhf0A0BTp4Bw7e52B2+c8v79x8k83xSbxFrAEoN+0u%20ywPRXcai3oOh/pzw/CGEpGNzZJqBCLvQueaBcG3hVLvRhfYa1QfhSCf3OsDL774sbrrpJtGzS8/H%20PuFUX1SPPvbo8wEglHeulscfffjR92c+PHP5/GXzcfHlF2PihIlrMsHqxCZotpoYaA+AUAImmLH8%20P7PU2iBXpYbAhZ8pSig6qh0ggmBM9xgsW7qsf7tttvtw8kaTcfi3Dr9no802Ovr5B58PgPGBPqy3%200XqZ/89PzOdl2Lrk+Q30ntCLVbZaRSyvLo8rVvRyR9NMc5ptpA9VtlIrqqKruIwEXaOPYegCLtO/%20kTtKVmcVWVeOuhyRAx5ZHoguQyUAyuR3oARw5MVHl+mQ1bKtSJNg7dFrY7N1N5t0469ufO+8S88b%206D219xMJIOM2GvfyYHVwEukmcQVW3tCzHA8k4X/QEv5dTlFHJgvJayjMKsPWBn4Zy3lN8yR8mGfT%20DwCVZgVL31hKPol/U5PcM+ftOav+7g+/66x11nDPA/fgrvvvgrfQW3rLrbcs+P/tfXmYXFWZ/nvO%20reol6YQlRAUSQgJJzAomLJlAp9IiZDSyDajggICoIBmjIBjCL/jo0AnLoIAOsriMKIuoTMKiIsIk%20FYyAwCCyh30A2UOWTtdy7z3n98dd6txzz7l1KwQl3d/bTz1VXV3pBOrWfe/7fd/7fmv+tAaswLCh%20bwOeeuYpFAoF3H3f3cHuE65VHXiyHDVql1HY+YM7AwIYOXIkxo4aiwl7TkBnZ+ejJ371xMMPPehQ%20FFHEN874BnYZucv6Xcfuui7r3/l+xxa/4Zcuu7TzgRcfePuGP97Q0bZjWzqm3Wa2MoUl6uojYxLL%20KPtNvRBmLgmYehuZJSr1e4l8iamRglG8HVLKhnJRMrEkAiWjNkbVUhWTLBW2aKp1m8xkxlq4qR6e%20NTaYx7VsIo+wWe5ucDF/1nwc2X3kZ0489cRfvt8/EJ2jOp/ADvgwupAviTeLQPQeiMn4mhWA2Kxc%200oxEbKUsnUCyDIUmA6hhpNd/x8fCTy9ccOj8Q68ozXl/Xi03JZr3eJAj8hkNJGzxGG+lUNllzeNr%20OtuGtbHUB0v/MDFDv8O217nFWIJYYcDevM6qIaec38qHUW9Kx4ueRJObn97nkVgDq2z3i6PSfWW7%20n6+91k+uiY1ep36vnuDVn9sa3Yk8K8/Sw7A1UfWGqnoyiZJX+wCsBy5YcMHrN193Mxv74bG/wkBG%20XhOaOl2l7Y4xHt9RIq/6Zdg9Yyyz6Eo7j4HRljPHDJ9jZbTXGeKAd/DLS3NK0pSRtS3gvZ4CHGjk%208a56IHW//szLG15GYfuCfT80R3bcAG9yMGv1Y6tjN6cqSCXkqn0ONMZqE8qBSXujLAdB6ZlWxqkr%20bZom/rnQiM2mNqTW21B7HGhSqsoTK20rW+nO8nB+XfQJTNp5Es4656xZ/3rsv97Xe34v3g8junng%20S993mLNl+tzW57D5RWz9ECDXXphEarPaE4mO2UjZKIMbmQGM0vC9MPRB9Mj3sFR92U8uwyP/+8hP%20ps2Y9nkQBgW2iEDefvHtXUccOAKdu3Ymx3Rt5OHAHorGkSu7Ri8pbUnxLSYMND4sOolEzyXKVjlJ%20I9XM1MsLtu+b9DuMz5mIIytMLy9x2HYaZI12KiWrtnobSjNLuPm6m9vnHTnPBYAli5dsEx+Ghx98%20eOyxXzl2yvN9z9tP/DLj+NtSijQNgiDjeFf+DTE5qCQSxbjrO9H1BjozE46RSHjG5zokkRqr4Ynn%20n5hNp1UiECt6z+/F6Lmjv9A5orP5ZjbdwGOKFoCldJV1ddZquUoZt416DuoHMyYM7feZ3Oe5CMRU%20IpNmr0cmQcBCGs0SWNXoCpHt80hMWrXSLNeNgVWg9nYNS89eetZBcw66jDHmbnP1XMZ9IUV2/2Fr%20toktnqFUMx35Pgfq8RdPZ6lTWeG+mVwKRFchagkrOj40d3rndp049z/Onfj4o4/vPnnq5Bfo9EoE%20kkDUBBp/4Phvvey+nO572BSGzcSTJedbyQbKKCNJlh63jRc3SU15mIx+LOcVpqJojGF3WtkqRSI2%20IoGiIgDzghmdNJopDpsx0ObtyMqzqgKVv1XkcUcc9/qi0xZ9a9qMaVdt058IluN9brWMlVW6Auwb%20D22udGZeKqWXtBjS6sTWC5FMmskD2ufYNN7LG2WsV9a9gslTJ69/P7ikCe8zAimVSlhdXl2fc9Ic%202blLJ7Om6ebJtQqJpOkehKwPYV5lwLS0W6acwKO/XuYIPUxN5WqEIzTyskROGMlEWl5rGc+0lqpk%20TuKw7VLOE6oXKg+/z8euw3bFxVdd/MpRRx01+sN7fHjb/jQ4TUjg3cR851QxpvW3pl5IPMmXVVZT%20PR2RKpHSTFp6uUrC3gsxlbJCJVJndfzopz96p1QqMTq9EoGkcPSXj17XsUPHB40hiVkxy6zJlZZN%20dUht0kpm14QT47PK74g+bKmyl6JUMq82M9I2U0Ria5BnqY8mvQ7bvgdjjLetx2EzCJomtWwbBSPV%208XZFnn786WznHXfe+aijjnqt1cVC70sIy0XDu72OZhnPN1HfxkY6axCCWppNqRCG1Og5YwySy5SZ%20MB4lNxkNBdLPO1oZK7w57Q5OXXwqnnvquSXjJo7rpVPswEZLY7wr71q5nzPE+SBrY0nysI3/AeaY%20gCzZ3kKtWcJs1EtNPiFZSkpEfeSJVjb0INTEXVNZSN0rrs/ex2m3hmwp43Y/w6pM6Wm/xzS378E8%20y29SFOpsvyUJFJuByhsVuduQ3XDuyed+75ILL2H777f/awC2ffLYknJVnmOWNfsjzKpSrCO4MJeh%204j9qynTLMR6vLl3L7JWYUrIVZ7psl7j06kuHlFeWSYWQAgnQu7QXHz3uo27HiI7AYKV7PnT1Ae2x%204arL2ATfkvRLlr5PNMb1OBKWQTJ5TiZZY7raVasx8M7UEM9BYqkYEjQpVUk0d5TbjIEasciKRJvX%20hgsXXSgXnraQ3/eB+4KyZs8AIo6/Q8U+65hXvSCpUpb2OrVBnihrhc+rESeJXoiuSnjG93q0SXTv%20WEpaIYm0DW3DO33vLC71lM6hUywpEADBzo9TPn3Kf8s2mb0drMmVUtOGoeFDnTjJIl0KMo3E6guX%20jP2BHDfVuGczDJpMfCmDn/pzP2kWtE49+Q1VIj2ZPNmbTvzNJqZMhsC6RXGoquPlipw/Yz4u+NoF%20hy08baFTXlXGHbfeMeA+DEIKh0uej1DezchultPc0mSPzYRKFI/JUGhKm85alGb9jPIM5QGkm+hq%20KasI3HLXLQCA8mpSIaRAQlREZfdUfANHdl8jTx04S1nYPri2aRldjWSVvLbkqlSaSSwrvtnWILeW%200dRgxKxNZc18HRLNR3NNK2drwePahhpm7DEDZ3/r7NuP/pejP3HTtTdhwJarAOw1c6/n23Zue8wZ%206Uxp+r5vKXlkqXGDEkm51A2/K+5f6ArF9FnKG1/erIQlDM8pI70b6hvkz6/7uSzNoWb6QEZLb27n%20hE6JnYA4J8iUwKuvqc2TuttsxNcWc80yasetkpbMJpCsRrmpRGVd+tOk92JcS5qx2yG3KVDkUCle%20qDzqQH1DHV//3NcxZtSYwoLTFvgDMcfHeIyP6XwCw8MsLH0tc1aYoiHnjTnMvCDNEByaUAjcvJfG%20eOxm5GEZl4op6bDGLCx17W2eCw7LnhD0AahhY+WZynZ0mqUSFn51/a9+XfEqMpFv1WzPcCt0ZToR%2062Us24lYWMpWSqM7cRM5b0o5Kitc0FTisvYbDHEhiZJWloHPVKoyrZW1Ncf179X8qvBDX3mtgm9+%204Zu446d3nHDRsovYgtMW+AAGBXlYj6+sY/O9uqRjlmwrxhK3PHlyqfUGNgMvz1AitulK20hvEWjn%207cPPv/D8HjrNEoHgtXdeq6IYXty3EEGSKi21cuVvGm9Fviv5lqarBJp6LEwpthEZZTaqLflSKdIQ%20ME9SZakFvbdhuypUXeN6j6MCyD4JsV5g967dcdP3bvr84tMXs0J74WeD8QNhjKPJc7xuDeJg9iZ7%203P/QfxT2RkyqPF5zoOfLseySlr6sLXGWME1bmvohYbTJQ089NIFOswMXuXsgq+5fhUJbIbvvgYzS%20koTd6GTqWRiWOKl+jkSt2DBl1dKHvUm929jjMJStjMQnNAJshcyE5Tkf6S1zeiSJSkqugYRCcvE3%20+9hl2C646j+venlIx5AZ3XO73wSAUndpUH4gumd0Y9WTq1CQBfMxkbPoy/K/0EgkWa70rL9PzXtT%20AxQTi6dUdRJlafHwGMnKwlKPwSxTYaGhQta9te5KAFfRqXaQE0i9Vm9cmeQtTTVphKdiRlgTRaJu%20fGOIA+Mih218JdaMODQ3uvpvSLh79X+TNJQxbCUObZ+HUR2JFsjDZghsFoBoMgTWgcr6ipz7kbms%20q62r99Zf3Ho9Y+yJbTWGe2uirdCWfUEBy3ufoyRlJArL5ycx0pu1I73JZy9uqHOACRYTTCK6BOnP%20ljHexDallUEkdz5wJ2RdHsba2C10uh3EBGKsjea9om/ldTb1YHIIs2RpK77iygOhlS2E+Wd6PElT%20xWHbFogm5TKgNU9Hs02BFuKQVYku3oXPH/557/LLLm8DAHZj8D99QHk6thBFp5g0gMompVULkUjI%20tAfJctI3xZfYyMO4CZMlkxYS/o+IMKRMkIRKECrJZEa+q4Thw24qVBJ6i51FzDty3kkAiEAGIFpb%20KNVKEzGvOQ5NyjpoUs4xfZ91szjAMx/bplE8mBdBmcpIHrI3vtkWOZmMfTYfh8k93h/eNgGV5yry%205E+c/NvzvnLeRy6/7PK23mWUNKGjNLsEz/Wa99ZsF1hbIfbEFOVua5o39XlomzxzJV/n8W7ZfCKa%20CnHaHfBO/s9/+uOfHDq6BrECGbn9SAgpzERim1Ix9SZkWmnEYYcyZxlMfy5PyF2zhmie3oZafsvj%207dBLVUJTNQJNm/XG6a1mikNJzBUVgQ7RgY/O+qg444ozbu6e2/0v0X/mknOW0CdAg1tzkynNeUtG%20W6LAbWUrXZkY/u5ET0MpV8WKWvkdat8wt8lX/TtMCkRYyEPLxmIFhg2VDR2PPf0YHVyDWYGcueBM%20+BU/O04cyB59tJ1UhWaas/UG8ixDyqM48vQP9IwqkVQaTTf2+RnKo5ni0NWGHqFe027V8D5SHJsD%20xSHXS8zabZb846/+ePryny93hBT/Qod8Ng456BDIuqGElXVRoRMHy1EGblYqtqyqjdUFku50U/6V%20+jqTCrE51RMKIythIitxW+mD/OXJv+AXt/yC09E1iAlk0pRJS5lk5lJSsxO/6TFg9m8YAghbJg8f%20Tb0XVk+HRhQpX4epPNWMQNRmtovm2/1MS5uySlXVkDQ2A7W3a5K9w7DfHvtd8tXPfPUz5T+U+bS9%20p10KUI8jD4QQO8DXqCEjsj+3Q102IYsc5GIsP2lroY0kwdNkklkG4xaFwpsQh6mUVQA87mHGpBl1%20OroGHlpyoh94+IHywTcfDJzoHQgcum1A02j3rL3otuwsZEyfbOFyKdP3qZwtmXHCsP1MID22m0We%20egkrq2RlCz1UfB+yJiEqApPGTMLsqbMfvOKyK/ahQ7t1lFeWUeopoXP3TokdAAxFkLjQgYYTXT3e%20Tce9ksRgdKI7mhNdcafHJ33euE+pBcDoF0mtQ0YjfDPyKkXDItFFmvRlypFuMsGm0qNNo+G6Uq4p%20qrgPcN924b7iDmOM9dGRNggVCAB87qjPBfLe1nTO29zOqShMjvBEs1p7bfxYaWbrDe5UmGGWkvAy%20VIvJGe7B7rtoVqYyNcZV5VFR1EbUGO8DxHqBERiB31z1m76lZywdfsVlV+xDzfEtQ6TQ9hizh71x%20LjNKWFvh8k0NSzS9JmEcZHb1wRiLI1FiFQKz87xZsGJKtQDZu3/U50NSLbQXcOyxxx5FR9nAQu4m%20evnuMivNLU0YOn3oWuGJxknT0U786odDKAdbZD7SwxBNZkJtJj0VBhd9foVeaUhGVhtX1LaQZ5VS%20HiaVgZzlu1Zi1gXszfE64FU8+Jt9zJ46GyOGj1i64sYVyxljD5ZXBz4Oao6/OzjMyX7/bSUshi0O%20XWTp2d74d8SZWcrP9HHe1EIp2TjxRyPF0Zh77JvSl0txgPma/0OPdxew90J0QlGc6ayN4c777+wr%20ry6z0hxadTvoCKTUXZIvrn2xvfv4bvlm7U0WByiqJOIrxMEMWse3HIQCZjMhs3wwTVdyMkf5qtnk%20WFbjP+eGwFykkadUZSAOURMYVhiGfabt88qKa1Z8oWNox+0AwH4Z+jjmUI9jq3woWCH5vpqGP/Ie%20a1twqozIRA9S1JvjKeUSEgljrNFL1AyE4IEqT623Bcz7QWBQHsJCKE2ysU45/pRfUzrvIC5hjZkw%205tGrvnWVV3mrIhPNYFNT2XQ1LdF8+imPD6PZSGvWBJSXUX7KuuUpSZma4aYSlW3rnxpsGO7iwGag%208npFOhscXLDgAszbf95ut//69lEReRC2PnbfdXf7hKGNLLZW0GLGPhBjKrVpYgtKHwUG/wdPl6cy%20fy/LKHPlaaaHJHL7yuCQLa+ixINBSSDlVWV8/OMfbzt4n4NZfBLUJ4fUq+gskmhGGLZAQhth2K7m%20dTLJIhyB5nHnJsJoJQ23ZiEO1fi3Gai9VZOFTQXM22seLjv7smv6Xuxjpy88nX3p+C+9TIfte4tp%20U6eZp63ypvNu6SIqC3nYXmdL5k2RiBKOmFhKpTfmmUH5NFs0BZjXNRgI5MG/PCgff+Tx5wfqPhki%20kGZlrLkllFeWcUT3Eee66914d0RqNLXZyTlr5DaLcLbGzYO5t9DKLSv51jRuq+5KqBnURuTd6AOw%20EXA2OPjB4h+wTc9sYiuuXcH2nrz3SfF70EP14/cS5XIZvZf0fik+9mzqopVeR553zEIUJmWg+z5S%20HhFlp4juITFFuefam54Va2Iqcxma6cUdiuz0/3f6ejrKBimBhCcwLFiwoPeSr12C+oZ6g0Sim+lq%203Tat5LWoCFopXzUjD/3fZzP3uRZ1UUfzaJGIMExmP4U0Km9UJF/Pccanz0BlbWXOPcvvOfzUL57K%20onWg5N/4+6FUKmHf6fs6qW2QQD6T7Namd6kog+QC9KSRkBsUiDqVpY4G8+bkYcznsm0ytPlDtGZ6%20oaOAZ159ZsKTjzy5PR1pAwOFLflD5ZVlVuopsX/+zD+LOx+/E0VWZCl/hDphJQwyN2q+CctBaZPu%20zVbaNpuyyjoRvNsGuY/mcSMeIOoCftWXu+64Kxv1oVE47GOH3bPo64sOWPrNpSiXy2zaR6ZJAKBp%20lX8MRnSNMI+jt/JuZKmWPNE7hnJVghT0mJPoZ8rvjqevkJy+svU4JJP2+BJoCb3q59oWa6JPZDlA%20W3vbkKdeeKqDjrJBqkDUMsrtN97Oj5x5JMMmpSxTM1ydNwsKtDW4Pdib4rb1rD7yNbmz/Bj66/SS%20VE0rT1UN5an+tNKQGyXct13MGjsL533xPPbin19k3/v37w1f9PVFB5TvLkdXwEQa/2B8tPujEK7I%20N4EHmEfT3yVppMpUOpnYNhRyWH0huvfD1gvJHahoex6w9kFefPVFHH7o4dXyyjJNYw0AvKs3sXdp%20L5uw44QP/vm1P7968XUXY8gHhkB2yMaedHW5DM+QulkKpNXwOlt5gcGcbZRnQ6EP+0KnrKa9C1Q2%20VLBd53YYM2IMZu8/+9oO2fGXSy+99DsAUF5VZqW5RBjvN6x9bO3XJh8y+ZLiyGLDja7uRldvuhtd%20eRy7zlU/BGdJVzoL7uMSU/jYVHYyxpRYPguqGz1KW4iNuMomTSFEwogbGW+NzvTQmJsZ16OXedWB%20kX7Ae8fDbT+4DfMOmUcEMtgJRD0JXnPtNZctvGjhwmqxCj6EB5EPRe3DpV+VqPVTXQ/xFq7aTAnA%20IqNODQOZmBJzs/wbhh6N9GT84RnRNQJDCkNw6b9f+uxuH9jtpmkzpi2iw23bQcduHZJtz4LYHp1A%201GNbvVDSjnVW0AiEJ+NNchEIb/QwrFlX+schIgyVRBTiiKNMtHSH+Dk/meqgH+8pErEpfp1AKoEK%20n7nLTKy5cw0RyABA4d3+gtLckuz9Ti9OOO6Er153/XUPPfbCY/+17KfLZOeOnSz+oGlXZnHEgW2S%20I+84I5A0ISKDNPTvs8IgbW5xaS6hSVeiuqGKiWMmYtqUaXCle8DBBx78Zs8BPd6UvaY8T4fZtod9%20Ju2D+1+6H1zwfE50Q0kr3pLZbMumLcVXK1Gpz2VtKlQ3c0rRMBCqaRBqn0M3GIIhexths1IWtItD%20perAigxPvPAEHWCkQOyYd+S8y/tk32n3PHkP2rdrN0t9W44Oy0kcpg9jnqZ5VnKwaWWsTMv1eqUO%206UqM33U8ZkyZgd/89jcX3/O7ezonjp14ZaGr8CgdVts+PnvCZ+Wv7/01nO2dRqBiu6I+igYVol8o%20GcpYcQkrKmc5IUk4jWDFWG04DSWiByymCEUlLsjENkwpwzJWVLLS1YdIpk6r5axEGctXVEmzXTS6%20ByqaQAyNsSt/vvI7PQf1nEVH2raN9ySjv3tW94I1K9awS0+79OHa32pusa8IbETsrEY/GuOsuplO%20HXnVfRQ2n4Ut7tw0Smsz7+meDMWXgQ0A38jRvrkdHZWO/sWfXdz/8K0PL3tqzVPshqtvYLded+s3%20pkyb8m9EHgMHJ59wMvx6xv4b0wUKa6JQWrkosuxJj42AGnmYGuhqlHv8mGYA9TwAACAASURBVLNs%20F3vOZVOZF3w282E0idXZxi66/KL+cpkc6aRALOg9vxdLFi/BLdff8qFn1j0z9Ylnnrjyh//9wz3Q%20BrQPawcvcnNvRD3ggNb2r+dVHD6sO8bdmguv3wN8YNb0WeiZ1YPhw4Y/W767fOqif1tU7PlYz+/o%20sBn4uOmmmz557JnH3urs6ASN9PZQhbRpKkSPdc9SIIrqiE/mBgXCOU+qEZ7si9gWRumfh7hZDnMf%20JHXzzUrEFOkeqxCTMVefalQv5sILsyMPPPKN66++/oN0pBGBNCeTC3uxZNESSCknXv6Dyy+98EcX%201nfacafD1lXW4W/r/gYUgtqoU3TSU1qtkEizqSoBCE9A+AJ+3Ue7046uji4MKQ7B2FFj8corrzw3%20eezktQtPWYgJu024efSeo6+M/oryqjIogmHwYP7R8zsefu7hytvy7cYkVltGGSsngST2f6hlKwuB%20cIcnS1dcUxeKHySx0laaJ7GEEJnlq3gqSytf6c106cnkagPT0jRLIx19wGH7HYYbf3wjNdKJQLYM%20F51/Ucd9T90nTzvutEXlNeVvP/nSk1j+h+XxHmVwgHMePLY11m2BdhIQvgATDMIXwcHuBx+wnn17%20MGnPSThi/hGYe8TcjpkfmYlxO4/D1077GoZ3DvemzZjm02FBWHb+so4bfndD5ZkNzyQXS7W1QCDh%20cimjCslBICp5xM9xnm+c16RADOpDJQwpk7t21ImsBIH4mirxDApEJRAXySSGzcDYrrF4/I+PE4EQ%20gWxdPPXYU6fc/vvb0ef24f6/3o/f3P0bMMnEV074ync7Ozq7Ync7Q6q+/LfX/3bfDStu+C+37uLw%20Qw5HvVLHwXMOxvyPz0e9Um+bNH3S99W/i1QFwYYH/vxA59kXnN2/Zu2axihvRxMFYtpQqG8mVL7P%20SyCc81RDPWUSTIlymVwTDYUkFOJIKBJl+ZpOIKkyVvS9rYSl+0G0Rnr19Soevu3h86d/ZPo5dLQR%20gbyniFaNEgh/T2w3ZrvbakNq89kwBgzJIJAi7Otttb6HlUCifoiJQBxu7IPERGL5JCemsIRSwpIK%20WYSPhS/SW0BVU6GJQNRpLFsJSyeQsA9Seb2C31712zc/8YlPfICOtG0XfFv4RxJ5EP4R2G/KfkW/%207ps9Qs02FiKpjlPP5c3XsnhDTPtCMm/qGDCSK2/VPez6cilbnIpxKss0jq/nY0XJvJ1FXP6Ty+kg%20IwIhEAYmfnDJD7rcja5MhGQC2SO6ptXHwFbbn57aVsjSqbumhnv8PRRfCZB6TSJjCyxNDMggCmQ8%20r8UYFdoLWP3A6iHV9dWd6EgjAiEQBhTKK8sYP3H8AV3bdbHEbhCTEtGTmwH70qkWl02lotxt+z/Q%20uFcfxyUyZoh9N6gOnUis48LIsUdEJQ0gFWXUNbxr6Nrn1+5GRxsRCIEwoBCVTcfvMt5MHrZSVNYC%20qjy71LNEiEomOmmwdJM9viG5aMpW4rISAtB6Kq+JRLRyVqVewYWXXUgHGxEIgTAw8eWTvpyOuAGy%20eyE24tBeG/k0MiFhdHubdp2r01iJEd/whM0Zb5SteHrZVKocppaxmpEHYPdtmf6sA/jMx6r7V1G0%20OxEIgTAwcda3z/oEXKRj/G3xJllkwpC9ZKqpBEl7PlT1ofdBIs+IVZ0Y1EiqtMWRLmMhpwrR1zZo%20KsT1XfSe1fsYrWkmAiEQBiRmTZ3lc8nTO2HyLJoCEqGG+q6OJI/IxuuVX8DA0gRj6k1wmMtSWgy8%20yYioKpWU6oDW69DIIrMPgialLAd4+dWX6SAjAiEQBiau+t5VvIhicl2xiURM5SrRpDQFs/pg5iTF%20lOqI1YL2nN7oTiX4qmRjWFSVCGBsNVDR9pyBTFiB4ba7bqODjAiEQBiY2H3c7rf31/priRiPvEoE%20OdRJ+KUSicyqZ7E00ejlJ1u5ijMeP6c+1s2JquowlqxYExUCQwnL8rits40OMiIQAmHg4ryvnifr%20/fXsEd485kDZXH3oz0nIpPfDRCbqWK8S+a7e4oDGkDxSMe/KiK4p8t26Qx3I3o0OixoJS1h33383%20Nr216RA6yohACIQBie79u9/y636yjJWnlGX7mYk48o7y6v0Jro3rmhrlXOl/cK1RrpCH+trERBZn%20ZiLIM22lmwl1JSKB51567nN0lBGBEAgDDuVVZcw+cPboUSNHJSexZA4SAayjvVHYYTNFwsASKkQ1%20CzLWWJeb2lqoOdI54zEpRI10znlQymLaWC9j1rW5pvHh3BNZQGpCqzC0gAu/S14QIhACYQAiSmve%20e+LeDQWiN9RhKWvpCkO2oDyifgiTmU11PVAxLnchqUwiH4hxRa7SF0nFxNt6HVklqrzEErrk+91+%20OtCIQAiEAapCVpZx1x/vuhKeVsKCgUhyjvaaSl5GY2GkVhisJKJmV5ma4okGukIWnCeXVcXlKm7I%2012IMksnsMlUeFaJlaxXaC/j9H38PWm9LBEIgDEwV0lNC9/RueDUPiVwsH/a1yRpRxCWrPApE8YsY%20J7J0wlCnsSKy0A2FvNFM14kkMbWlNeF1krLuUwdr3hcBjEbD/T6y38dKJUrcJgIhEAYorvvRdc+6%20m1zEKsTmShcZqiOrnJVhMrSWuNSTO2eJZrVxIktrppt2i8TlLcWBbtyAmFd9IEORhM93Deui3ehE%20IATCwMXInUdevP/0/eP1yC3tCLH5Q/QylTq+qxOJtJSvoKkR3QeiNdTjspXuFUFyOiua6FKJRDKZ%207LfY/B95bspE1roN6+gAIwIhEAY2jjvyuAaB6CO9WR4Ri/KII06QJBZbLyRVxjK4zxPlJ+W1keqI%20eh+2Pkki1gTJWBN9hDhTXeRpqocE8tobr9HBtY2iQP8LCITmKK8ss1JPafSQ8UNeile5CmT7QLSb%20lDKdbaU+nzG5lTAUKiO9EhIc6VFcsEb6Lljwd3DOISDAJItvnPPg7xchkcjwXjBIHhAckyxYZ8sb%20pbNUUx3I1/8AUmO9r771Kh1gpEAIhIGLUk9J3nXXXV07DdvJrDqEhVCa5WXB8rjFHSGJcpZmIlT9%20Hqr6SPVCOEurE2j7RJi9WR77UvJMaSlEwgvBaai8imLdiUAIhAGKsaPGvrPD0B36RV2YFYhA/jws%20E3m0QByxgRAZO9ChBSQqfZBELpZCJKnGOddKWJrSSHlDeAZZqH9WcaT31/rl6vJqWZpLse5EIATC%20AMW4ieNeHz1i9FuiJpAIV8yaxBLIZyzUgxURjvFKaSYVZvleGfHlnMdkEfU+uMMTjXVdhejfm9bc%20mojE+m/K4RdhDmOSSUFHGBEIgTCgcetNt37Wr/jBOK+pkS6yy1d64zz+niFfICMMV/4sY7EUS09h%20RepD9YQkcrK0/SIpI2Dem019aN87BQer715NBxcRCIEwsMEctqa0bwkpV7o62tusF2IiCKGKE5kY%20640e69NZLJntnu5/wODvCK740+ThpMtZuqs9atabVImN2FINdJMy4cCmyiY6uIhACISBj0cef+Sb%20cNFQIXlNhRm3hFPd1D9hSYJJqREbiaiNdN4Y4Y1LWsraW1NTXVUdxigTWMZ7W8jG4g7HXx77Cx1Y%20RCAEwsDHRedcVHErbrYfJOdCqWYGw/ih1JZOyTSJ6CWsuPcRfSkpvLEKyZjI0n+vPiacVZZKkYj+%20M60cViwU6cDaBkE+EAKhRXTv172+TbRBujK7hJVnKksnEyRVCZMs/XOT+gDSi6d4o58RXzEyDiEE%20ODiEFIEPBEGzXlUrwg9/JmRy2VTk/9gS8oDhMYIeyB1r7qADixQIgTDwMX7y+B/N2HNG4EpXm+mm%20iBMDkRgb6bD8LDy528pXSTZBohylNssTO0AiV7oTKhGlnBVtLkxMa5l2hOQlj6zXKN8XCnQtSwRC%20IAwSnLfkvGsLomAuY2XlY2X0RfQR3lTJSuGOWJmoxAGWihxJrLV1NBJRdqMnmuqMJ0mDm2PeY9WT%20FV2CHATDkd//QiACIRC2dVzyn5f827DCsGQj3bRsSlckQPOGupTGvkii0W7ZD6JuDIxIIjIEqjtB%20YhJx0sSiR74nolGyFkzZdpawJqoEAHMYf/KRJ4+mI4sIhEAY8Lj5xps37zl6zyf9mp82FJpUhrqA%20yjR1pRMLDGtv9YktBbJhTU81vlVScLgTGwq5o5SuHC1k0ZDkax3f1VRHrs2FMBIPmQm3MVDhkUDY%20ArAi855e+3Tf+APHy86hnSwmkaypLAHAUR7zBAMYm+qRGz0iiNgTEvZGoiDG2KMBpHZ3cN4IVYQE%20OILmuJQSXPLg93EJwQW4EzbZGYdgIlnG0tzo8Vgvwua6aXOiqZwFZE9oEUiBEAgDHeMnjN93ryl7%20MbgG8pAZJGIrWwHWRjvQeE2ikc6S36u7QdTodrU8lbg5hrKWwZ3OkdyXrhOKkQyySMMQqkgEQgRC%20IAwqnPipE5EyFQqkM7IMse+JXoemOBI/V4o7enPdqI60dbTqutqYVCzlLBORmMpYxlW3QHMFwuwl%20rWIbeUGIQAiEQYLyqjK799575zGXpcd5my2byhP7Dq2EZZrY0kpfeq8iEazoNAyEjuOAOQyO48RE%20Ev1MjzPhjCfSfNWJL1s5KkEqtrKVRiR3/v5OOqi2MVAPhEDYQpTmluRTjz2144p5K8CH8OyARZ1E%20YFYkTLLGkinJGoumlDJXTCoyhydEVRDRSV8CQgg4jgMBEfQ+OIfDHQguGiUsh4P7HD73rR6QVO8j%20b2/D8Pzcg+bSQUUKhEAYPJg4ZeIvzv3Kuaj31SU8QynLNs4rkB7ZtZWzDCO+MdEg3RdJeEIsS6Si%200d24ZOUkp7Hi3enqkimW9pdkBidmZWMZ8OL/vUgHFCkQAmEQlbHuLqPUXWJD9hwi433pWQrEdosm%20tGAmEbWMldgbIjIUiLZsKprGYjxYURtvGoz+HkfCEQ6EI8D9gEQEF+lwRm2dLQNLjBFbm+Es+7m1%20T6ylA4oUCIEwiMpY3SUAwAHTD0CsQLLMhTZVAk2VhESScJxriiWroZ4gDzWN1+HJ5nnY+3AcJ9VE%2015dPqRNeJh9IYr2uzZFuQyvbGAlEIATCgFEhK8vYb/p+11Y3VNNlLNNor0TunSGJfofaWEdDleib%20DI2NdJaMKXEcJyYQhzspY6G6H0QdB47GbVNk0gxZ5a0QO+20Ex1MVMIiEAaZCukpAcDxHWM6jjN6%20QpqUsaSUYCI4OUfNcylkbDpkkgHC0BNBk7FeLVwxLmOFZTAuOeA0fi/nHE7BCYyEfqhAPIU0tGgT%20fTe6aizcEoPg3jP3poOJFAiBMDjxjZO/AVmTSJCISiR+czLRS1qJZnn4c51ITAZDXX2AIZnEG47y%20cicgDe7wuIwV3XRlYow0AfI10S2qw7oLhUAEQiAMojIW+/NDf57QyTuTxkLTGG+WMtFOqipZJCJN%201Oa6VuJKnLPDspOasBuRglrKcrgTByum+h/qjnTOjKO8CZJopjhMP4/+PxCohEUgDMIylpRSPt25%20a+fbbCc2Ai6AYkgkBUWBOMjufYggl0r3g6gNdCmSO9Ijr4g0d9MTPYxIfUAGK2qFEIkJLMklREHA%209/1k2KKSjRWTSXiLfSDqRFYe9aGoECYZpJRkRScFQiAMTjDGsOysZV2VdRWZaqQ3Ge+VUqYXTwmZ%208n/E5BGGIUohIaRojPgqKiVWBhLpxVKaKz0uVTk8VerSk3qjXKysPeeZpGHgOSGFmDR90o10FJEC%20IRAGaxkLpZ5Sx15z95Jr169FrEKyghaVx6ryUJN7oyZ7womuEEbUF0mcoGWD1OJARLWRzgBHOrFa%20cKQTkJEQMZE43IHHveB3OCyxIjfuhageECB/Ez1rVzyBFAiBMAjLWACAPUfteY2oCLsnxEf2OK9I%20K5KYMELlEb8mMhaKZLyJXs5iMig3OdwJ7lkjAyt67BSclBqJc7IU4tGb84ktiK0SQfjf53GPDiAi%20EAKBcO0V195ce6cG1NFoqAvl3paRZeiNRGWqBGFEZSuljAUo5S3tLJ5I1gWDAwehi6NhKtSmrxzH%20aUSe8GQcStM03hZj2X3fx0EzD6IDhwiEQCB0DutcvviUxfArftqdHqkQiexd6tq9XqpKTWGJhrnQ%20No0V9UQ441C/1HFedaRXJxHTvnQGli5ftaA8IAHf89G9fzcdOEQgBAKhd1kvO/+884d3QhnpjQjE%20g3lfSFS6Eo3SldpEV9WIqkhU1RGTiDAk9bKgjMXBYxUSfXFwFJxC7ANRXerRBFZcwtIWSamZWAly%20aDXChHogRCAEAgFYcs4S+cLTLxT3/OCebmwstE1l+RYyabI/RFUkQiTLWeq62wZ/KOm8IYlww1ds%20Hoxys5yGIokViL4rRCOqpmcV/b/TB7rau+jAIQIhEAgAsPv43dd9f9n3X6i+XpVwYd5amGUuVNzo%20CXJQVYdqMhTJqaz4RK0pkOgrQRqKEoniTFTyUJvnCfOgNsabMBRmkUe6hCVnfGQGnYuIQAgEAgCU%20y2XMPmD2hBOOPoGhBhhDFi0TWTEJmJrqIVHEqkM0zIDxfdRgh0xlZTHlKyaNkEQKrIACLyQmtBL7%20Q7ihiZ4XtsgSCXQUOlh3qZuVV5ZpKzoRCIFAKJVKKJfLbPPGzZ+RFdmYyIpysvSoE9+sSOKeiDqF%20pUabaCSSUCdCIw+ZVB9qL4Sjkbqb6oMY+iGm/egMLSqQ8L9rl5G7BP/PekrUCdnGQEZCAuG9IxEp%20pbxlRmkGHn/ncfB23lAiUaRJ9NhX7rk5woQJlmyiC5n0hYREIqRIL6JC8iQfqQ4JGY/1CoikP6Tg%20JFzopt3oQGPCS7BkmFXKZGha5SuBHYfviOfwHB0wpEAIBELiJMpY9er/uPoGp+okfSGmiaxmN6Wh%20rjfOo7KVWt7SiSQ+4WeUsRwE47tOwUmvuOWItxqm/B8N1rCrDhgIRABOvIqRQARCIBAScH33+O69%20u4GqUsYyLZ3yYY05UctZKf9H2P+IbpESMeZpaQQSEUeimS4bPpBESUtxpKfMg0beaK4+IICdR+5M%20BwkRCIFAMGH27Nn+lz7zpTsrr1dkQoXYSCQiDF8afSKpEpYIdrFLISH8hjIRflDOivoj6sk+6oGo%20JKISSdwPCSNNTAul4viSDBLRG+b6+C58YMVvV1xTXlmmA4UIhEAg6CivLOOoo486+Oh5RwcTWa6F%20RAyLp1SySE1jRWrElwmiEEIE5CFEUrHo+Vi2kV7mwJHakiknaKDrY7yZo7s21aH4WurVOj7/6c8X%20ohwxAhEIgUBQEJ0ch7YNPdypOcmJLHV7oT6ZpcadSIP6UPsfvowVSEQecUlLmt3p6jRWRB5qX8SR%20yVHeRCYWM0SYMIvy0BWIUp4TdYHpe06ng4QIhEAgZOGaH19zy8EzD0Z9Y71RyvJhXoEbPTYYDWMS%208WXjJhvlq5g8fAFf+AGJKF86iagqJCYP5iTGeuPxXa4FKTYb3c1YnAUf4D7HV0/96k/o6CACIRAI%20Gehd1ovlNyxnU0dPzS5laTfVC6LvRY99IKHq8H0/KGmF3yceMwkBkUkiEYFEzfLInR6rECQ9IJLJ%20bPJANoHsMGwHsKHsf+joIAIhEAgZWHLOEgDA6JGjr/U3+0ANQTnLg72prvVFolKV+lw80hv+zBd+%20XMqKH4f+EBWRelAj3hO9EMdpZF+F2wvjRrr2ZSQK2IkDApCexDEfP4YODCIQAoGQF9dddt2vpo6a%20ijho0aRELGUr9SQcj+uGxBI3z71QjajkofZGFBWikojuDWFgDR9IqEriyauIM2SLCkTt7XjAxPET%2076AjggiEQCDkxPd/+v1b/ve+/x3N+lngDTEZDH1YJ7RS4YoheajlqriU5QWPo16IL/ygXxJ+qWpE%20b6pzqeRf8fT4roQE4yxVEkuQhxrsqJKHD7Tzdty1+q7FdEQQgRAIhJxYsmgJVt+0+s3Ju05+VfSL%20JIFkeESkL9MR8L7iPFfVhifgeR4834Pv+zGRRN4QtamuNsJTUe+MJ0tXEYnInOO7OnlEROgBbWjD%20QfseVKQjggiEQCC0gDnz5tR+deWvfjecDW+okHqG+tDKWnHPww9NhLoKUW6+5wdE4vkQEPDhx2Us%20dTJL72mk+hxqfDvCJroa2GjbZ6KV3qLbO2+98/pXvvaV++hoIAIhEAgtoLyyjHETx5283+T9vi76%20RaOhrkedaGokViEqkcgGmQgvJI1IdXh++hYSiNoLUZVITBnh8qmILNTmeQzWUBoS0q4+RFJ91Ppq%20+PbCb9P5hwiEQCC0ishceNuNt926x/Z7QFakjFWIWs7y0XS8V3oyMYUlPGEmD9+H5wUlLfVLH+01%20KRHd7mHcv643zfUQSOXfzl2O7du2P5OOBCIQAoGwhZh3+LxnHr/ncdbhdjBUkVQiHoybDKPsK1WR%20pJzooQqJyMPzPLh1F54ICMTzvZQSMXlETCtqU69RghoTwY0qiajk5wFTx03FgtMX/IyOACIQAoGw%20hbjjljuklJKdcfwZj1beqshUKcvX1EhY0kosmhINBSL8oA/ie40Slud58FyvcS88eDK4qSpEL2vF%20hMA08oi4QkkFThGHxfsBL/jve+ONN35A7z4RCIFAeJdYetFS+c3F35x20idPYujXVIipsW64opde%20WMLyZDyF5Xt+QBiuB9/14bvB927dDciD+fDQIJFIhahEIrm24VDdxS7QvGmu9T7gAaIqMGHshLfo%20nScCIRAI7xJLFi1BeXWZzfzwzJ5irQhUgLicpZsM9RFfL52NFZexol6I68N13eBWb9x74ZcPP34c%20kQiAgESYQhxK3yPauW4qWSXIRS1hheqjtqGGH/b+sE7v/LYPWmlLILwPUJpTkgBW/eLGX+CYM4+R%20nYVOBgdI3KJ+RHiTLDDyxWtwuYR0QhXCBXzHB/MYuMtRcAtw6y4KxeDeLbqo1+tw2pzERkAGlmyu%20K+GM6uOYRLQSVsg8RpUEDxA1gc8d+jmMnzJ+Kb3rpEAIBMJWQnllmR3zmWPYUT1H9bkbXZloqtfN%20KkR6DR9I9L3wRXDvCQhXxKUrrx6Ur+r1Our1Olw3eOxqXyqBRA72OJBRXWIl0r2YVNlKHUV2gU50%204mdX/Kyt94JeRu84EQiBQNhaKqSnJHuX9uKmn900fN8x+zK5WQYEEpWy9G2Geikr7IPAQ6IPIjwR%20kIfrBvc1F27NRa1WQ92vo+bX4MJFHXV48OAiLG9JLx7/VUkk3nSo7lwXMtM0GP37R7SPwHcv/u6I%20JWcvkfSOE4EQCIStiCX/L0jsPeOkMy7ifRxxXlZVIxGFSKSrjPUaFEjUOPfrPuq1ekAe1Rpq1Vqg%20RjwDicig0R452OMYFCUmPpr8MvY7NOUBF6hvqst/mvpPz55x5hmv0TtNBEIgEN4jfOrTn1r0nTO/%208wexQTSa6mrkiZbiG5WyEmokJBPf9SFcETTO6x7q1TrqteBWrVZRrVVRd+uoiRqir7oMSlyJ8V/P%20i53u0bhwgkSUUlpKfdSAnYo7sWuvvnbP3gt76Q0mAiEQCO8Vei/oxZdP/fIhsybOukhsDEmkZiAQ%20pZwV90M8JdbEVfogYfmqXq8HJFKto1apoVapoVKroFqtolavxeTi1lzU3QaRmMpZ8bpdPehR9a/U%20A/L72N4fC1TWoiX0Bg8QOPS/gEB4/+F/7gyW9D1Ufmjz888+f/KjTz8KXuDBJV8UaBhd/imPGWPx%20a6Lk3Pg1Sggi40pMCcIR3bA57vle7Fx3a25AKNXGza0F5TDpSvhucA8X8X2kOFBFQHybgerrVXxs%20xsc+O/+Q+Y/9zypaQDhQQGO8BML7GH996q/39j3d1/HhnT5cfXrj0w1SiEhDIxPJZfwayWSwcjb8%20OWMMHvPAnWA5lAohBPw2H4VCIfizInCz12q1oOleb6iQqHwlfGHe4672PmqAu9HFsn9bhsWnL76B%203lEiEAKB8HdCaW5JAqgt/+Xy3a7+76v/b9XaVQ3i0AkkvJdMxvvKGRgEEwADfOYDDHC521AiYJBS%20BrlZrg+n4AS/SyBQImHPJGrCR/0U3/UT7ve4B6OWrUIVMm7EOLjr3bn0bg48UA+EQNgG8Nhzj718%20yqdOmTRl5BR46z2gH0nHeh2JHklcVvJkPKklXAG/7sOrhb2Qah3VShW1/hqq/VVU+iuo9FdQ3VwN%20ng/7I/VqHW7VTZBI5HpPEYdWwvI3+nLfPfbtn/+J+XfTuzjwQGYeAmEbwvnfOZ8vv2u5/8gbjwBd%20AIYCGAKgI7y1h7dicM+KDGgL7lmRgRc5eBuH0+ag0F6A0+ag2F5Eoa2AQrEQ70CHBHwRkIVbD8mj%204sOtufBqHkRVQNQFZDXwqsiqDAitH8BmAJsAvAPI1ySqT1fpPEMKhEAg/KPh+7445wvnTJ0zfg7k%20JhmcsPvRGPPVjIfSlfF9pEJEPTAWelUPbtVFvVIPVMjmanxf7a+i3l9HvRKoD68aGBH9ug9Zl/Hv%20i30obkP9oBr8m4qVIs46/qzL6F0jBUIgEN4n6L2ol03eY/Iu537v3Jef3vA0nO2dpBJpV+6LCBRI%20GwOKDSUSqRGnzQEvcPACh1N0wJxwCyELQhHjxVT1sPdR8yHqAQmhBsiajAkD/QD6AGwE/Ld8jOaj%20K8/e9+wQeseIQAgEwvsMN1x/w9CrfnlV330v3gcMh72c1RYQiUoi0T13eFDWKvBgOsthjbpEmPAb%20mRFjBVMTgaqJyCMikM0BeWA9sM8H98GJPSdud/KCkzfSOzVwQVNYBMI2imdfeLb/i5/84szdHtrt%20wetXXo+iKKbXyCoRI1JKMMEaoYc+IIrhSG5BgPGAUKLLSgmZaJZLLyAQ1AFZl4lJq5hE+oDKSxWM%203XvsP73a/+omepdIgRAIhPcpyivLrNRTkod/9vC77nr0ro/6XX7QXB8CoBPGchaKACuwxn0BsfJg%20TmMXerz7IyKRaLIrIg/FKIjNADYA4g2BXy/7tXfoJw8t0rsz8EFNaisB3gAAAlxJREFUdAJhG0ap%20pyQPOfoQ3Hz9zQd9/eivf1e8LuC/7UtsCtRA3JtQx36rwdSUrErIWnAvqsFElagI+FUfftUPJq3C%20m6wo01Zqz0Mhj8pLFblw/sJNh37y0GJ5VZneHFIgBAJhW8MRJxzRt+JPK4Z0fqiTYWioRDrMSiRW%20HwWkzYlaLHs8baXGlIRN88rLFZx51JnPX7zs4nG9S3vjVGECEQiBQNhG0HtBL5acvQS/+93v5DFn%20HYP60Hp6QktprKOIIBGvgMa2w+isoBKI7jCPSlcbgfprddz+vdtx8CEH0/mECIRAIGzLiPoiV15x%205ZF3/PmOr624e8Wctp3awLpYWomoJKKuzZUGAlGb5psB920Xc8fNRQc69rrtxtv+Gv299A4QgRAI%20hAECKWXXqJmj/oAhmPVm/U04XU5AIm1IlLLgIN0VjQISFfJw33ExZtgYTPvAtHuX/2j5F5ZeuvTx%20JYtpwyARCIFAGLj4ANoWn7K49uPf/hjr3HWyOLzIYhIpKCokZh4kFkLJioTcIPHjb/0Yx336OCfU%20JwQCgUAY6Ohd2htfMH572bd7O/bsWHTkSUfKcT3jZOfenRJTIDAdks1kEtMgMQWyfXq73OewfeTC%20JQvlhyZ/6PSXnn1pAQCU7y7TxSeBQCAMWkL5dnK17P333t93z5p7Xln670tfefihh1954N4HXlZ/%20Xl5JpEEgEAgEDeWV5ZaeJxAIBAKBQCAQCAQCgUAgEAgEAoFAIBAIBAKBQCAQCAQCgUAgEAgEAoFA%20IBAIBAKBQCAQCAQCgUAgEAgEAmEr4f8DwqDRDet7GmMAAAAASUVORK5CYII=%22%20preserveAspectRatio=%22none%22%20height=%22431.25%22%20width=%22375%22%20image-rendering=%22optimizeQuality%22%20transform=%22translate(-178.214%20-265.309)%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "14181f6f-ebe4-4ad1-ac94-4208d423f2e2",
              "type": "basic.info",
              "data": {
                "info": "Aqui estarían los niveles\nSub-atómicos :-)\n\nEntramos en el mundo de la física\nde partículas",
                "readonly": false
              },
              "position": {
                "x": 272,
                "y": 168
              },
              "size": {
                "width": 288,
                "height": 112
              }
            }
          ],
          "wires": []
        },
        "state": {
          "pan": {
            "x": 0,
            "y": 0
          },
          "zoom": 1
        }
      }
    },
    "91abf148146a61dd0ce91850f8b25b50d215342c": {
      "package": {
        "name": "Puerta-AND",
        "version": "0.1",
        "description": "Puerta AND",
        "author": "Juan González-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%20100.89405%2059.082348%22%20width=%22100.895%22%20height=%2259.082%22%3E%3Cpath%20d=%22M-199.56%20458.482h-29.045V402.4h29.045s26.365%202.6%2026.365%2027.715c0%2025.113-26.365%2028.367-26.365%2028.367z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M-250.986%20414.96h20.255m-20.255%2029.887h20.255m58.66-15.082h19.951%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-224.207%22%20y=%22435.736%22%20font-weight=%22400%22%20font-size=%2217.5%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%22-224.207%22%20y=%22435.736%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EAND%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "4f1a05d0-b11c-490a-8792-876ebf3a8f05",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 120,
                "y": 136
              }
            },
            {
              "id": "e23ec09c-c612-4db0-ae91-83a6b9f91044",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 616,
                "y": 152
              }
            },
            {
              "id": "60ce79f4-7963-45bf-9a9c-06c84ec9839c",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 120,
                "y": 208
              }
            },
            {
              "id": "87f00e95-f179-4d09-ad63-5ee7a97d9417",
              "type": "4b9553351d0d968f4d279e4831626414f5cfa9ec",
              "position": {
                "x": 304,
                "y": 152
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "20793b5a-ae26-4369-b520-769a8bae1293",
              "type": "0ec0772bb73356cd1b754fe7d840a322387a9f3a",
              "position": {
                "x": 456,
                "y": 152
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
                "block": "20793b5a-ae26-4369-b520-769a8bae1293",
                "port": "40d86778-65d1-4ba9-beec-fc5be175aaed"
              },
              "target": {
                "block": "e23ec09c-c612-4db0-ae91-83a6b9f91044",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "87f00e95-f179-4d09-ad63-5ee7a97d9417",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "20793b5a-ae26-4369-b520-769a8bae1293",
                "port": "1a93168d-3764-4337-8a5a-2f4fc62a1ecc"
              }
            },
            {
              "source": {
                "block": "4f1a05d0-b11c-490a-8792-876ebf3a8f05",
                "port": "out"
              },
              "target": {
                "block": "87f00e95-f179-4d09-ad63-5ee7a97d9417",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "60ce79f4-7963-45bf-9a9c-06c84ec9839c",
                "port": "out"
              },
              "target": {
                "block": "87f00e95-f179-4d09-ad63-5ee7a97d9417",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 34,
            "y": 59.5
          },
          "zoom": 1
        }
      }
    },
    "42d6b1a76202ace3396086158911de819b6194fa": {
      "package": {
        "name": "Join2-2",
        "version": "0.0.1",
        "description": "Agregador de 2 buses (2+2)  a bus de 4bits",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2277.792%22%20height=%2245.277%22%20viewBox=%220%200%2072.930084%2042.447511%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%221.703%22%20y=%226.994%22%20font-weight=%22400%22%20font-size=%229.594%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22red%22%3E%3Ctspan%20x=%221.703%22%20y=%226.994%22%3EH%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M72.457%2017.731H34.589l-8.91-8.909H.47v4.594h24.166l7.434%207.812-7.308%208.19H.569v4.032h25.452l8.694-8.316h37.673z%22%20fill=%22green%22%20stroke=%22green%22%20stroke-width=%22.938%22%20stroke-linecap=%22square%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%222.226%22%20y=%2242.448%22%20font-weight=%22400%22%20font-size=%229.594%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22red%22%3E%3Ctspan%20x=%222.226%22%20y=%2242.448%22%3EL%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "8144a9fa-9930-4861-8159-76f556c2ef25",
              "type": "basic.input",
              "data": {
                "name": "h",
                "range": "[1:0]",
                "clock": false,
                "size": 2
              },
              "position": {
                "x": 136,
                "y": 240
              }
            },
            {
              "id": "f97b75ed-2ff6-4e65-917c-c8a2dcff75f9",
              "type": "basic.output",
              "data": {
                "name": "o",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 704,
                "y": 288
              }
            },
            {
              "id": "21ffee47-f42c-4f4e-8fbf-20cb13ffbc5f",
              "type": "basic.input",
              "data": {
                "name": "l",
                "range": "[1:0]",
                "clock": false,
                "size": 2
              },
              "position": {
                "x": 136,
                "y": 336
              }
            },
            {
              "id": "3545528c-05e2-4e95-8223-5b7b77587423",
              "type": "basic.code",
              "data": {
                "code": "assign o = {i1,i0};\n\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i1",
                      "range": "[1:0]",
                      "size": 2
                    },
                    {
                      "name": "i0",
                      "range": "[1:0]",
                      "size": 2
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
                "x": 320,
                "y": 224
              },
              "size": {
                "width": 288,
                "height": 192
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "8144a9fa-9930-4861-8159-76f556c2ef25",
                "port": "out"
              },
              "target": {
                "block": "3545528c-05e2-4e95-8223-5b7b77587423",
                "port": "i1"
              },
              "size": 2
            },
            {
              "source": {
                "block": "21ffee47-f42c-4f4e-8fbf-20cb13ffbc5f",
                "port": "out"
              },
              "target": {
                "block": "3545528c-05e2-4e95-8223-5b7b77587423",
                "port": "i0"
              },
              "size": 2
            },
            {
              "source": {
                "block": "3545528c-05e2-4e95-8223-5b7b77587423",
                "port": "o"
              },
              "target": {
                "block": "f97b75ed-2ff6-4e65-917c-c8a2dcff75f9",
                "port": "in"
              },
              "size": 4
            }
          ]
        },
        "state": {
          "pan": {
            "x": -18,
            "y": -56.5
          },
          "zoom": 1
        }
      }
    },
    "4ecca6b3418c2e1fcfe5c1a27a8c6401c55bc7a0": {
      "package": {
        "name": "Split-2-2",
        "version": "0.0.1",
        "description": "Separador de bus de 4bits en 2 (2 + 2)",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2277.792%22%20height=%2244.517%22%20viewBox=%220%200%2072.930084%2041.73476%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2263.946%22%20y=%226.994%22%20font-weight=%22400%22%20font-size=%229.594%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22red%22%3E%3Ctspan%20x=%2263.946%22%20y=%226.994%22%3EH%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M.473%2017.731h37.868l8.91-8.909h25.21v4.594H48.295l-7.434%207.812%207.308%208.19h24.192v4.032H46.909l-8.694-8.316H.542z%22%20fill=%22green%22%20stroke=%22green%22%20stroke-width=%22.938%22%20stroke-linecap=%22square%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2265.478%22%20y=%2241.735%22%20font-weight=%22400%22%20font-size=%229.594%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22red%22%3E%3Ctspan%20x=%2265.478%22%20y=%2241.735%22%3EL%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "5e01b577-e425-4a75-87f2-4cdba855d878",
              "type": "basic.output",
              "data": {
                "name": "h",
                "range": "[1:0]",
                "size": 2
              },
              "position": {
                "x": 704,
                "y": 240
              }
            },
            {
              "id": "200f8ec1-0d75-4147-9377-a2700f4619c6",
              "type": "basic.input",
              "data": {
                "name": "i",
                "range": "[3:0]",
                "clock": false,
                "size": 4
              },
              "position": {
                "x": 136,
                "y": 288
              }
            },
            {
              "id": "8e007209-b58f-43bb-8d5c-b35cc24afa58",
              "type": "basic.output",
              "data": {
                "name": "l",
                "range": "[1:0]",
                "size": 2
              },
              "position": {
                "x": 704,
                "y": 336
              }
            },
            {
              "id": "3545528c-05e2-4e95-8223-5b7b77587423",
              "type": "basic.code",
              "data": {
                "code": "assign {o1,o0} = i;\n\n",
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
                      "name": "o1",
                      "range": "[1:0]",
                      "size": 2
                    },
                    {
                      "name": "o0",
                      "range": "[1:0]",
                      "size": 2
                    }
                  ]
                }
              },
              "position": {
                "x": 320,
                "y": 224
              },
              "size": {
                "width": 288,
                "height": 192
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "200f8ec1-0d75-4147-9377-a2700f4619c6",
                "port": "out"
              },
              "target": {
                "block": "3545528c-05e2-4e95-8223-5b7b77587423",
                "port": "i"
              },
              "size": 4
            },
            {
              "source": {
                "block": "3545528c-05e2-4e95-8223-5b7b77587423",
                "port": "o1"
              },
              "target": {
                "block": "5e01b577-e425-4a75-87f2-4cdba855d878",
                "port": "in"
              },
              "size": 2
            },
            {
              "source": {
                "block": "3545528c-05e2-4e95-8223-5b7b77587423",
                "port": "o0"
              },
              "target": {
                "block": "8e007209-b58f-43bb-8d5c-b35cc24afa58",
                "port": "in"
              },
              "size": 2
            }
          ]
        },
        "state": {
          "pan": {
            "x": -18,
            "y": -56.5
          },
          "zoom": 1
        }
      }
    },
    "3ecdbbd22797b57d4ab062aab7f6acf7c4ee0e46": {
      "package": {
        "name": "Contador-2-cnt",
        "version": "0.1",
        "description": "Contador ascendente de 2bits, con entrada de cuenta",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22171.065%22%20height=%2271.72%22%20viewBox=%220%200%20160.37347%2067.237745%22%3E%3Cdefs%3E%3Cmarker%20orient=%22auto%22%20id=%22a%22%20overflow=%22visible%22%3E%3Cpath%20d=%22M2.308%200l-3.46%202v-4l3.46%202z%22%20fill=%22#00f%22%20fill-rule=%22evenodd%22%20stroke=%22#00f%22%20stroke-width=%22.4pt%22/%3E%3C/marker%3E%3C/defs%3E%3Cg%20transform=%22translate(-184.027%20-326.905)%22%3E%3Cpath%20d=%22M330.516%20388.654v-45.219%22%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%224%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20marker-end=%22url(#a)%22/%3E%3Crect%20width=%2239.464%22%20height=%2263.929%22%20x=%22273.599%22%20y=%22329.214%22%20ry=%223.75%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22293.536%22%20y=%22359.153%22%20transform=%22scale(.94516%201.05802)%22%20font-weight=%22400%22%20font-size=%2247.638%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222%22%3E%3Ctspan%20x=%22293.536%22%20y=%22359.153%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M275.097%20362.607h37.093%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2239.464%22%20height=%2263.929%22%20x=%22229.67%22%20y=%22329.214%22%20ry=%223.75%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22247.059%22%20y=%22359.153%22%20transform=%22scale(.94516%201.05802)%22%20font-weight=%22400%22%20font-size=%2247.638%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222%22%3E%3Ctspan%20x=%22247.059%22%20y=%22359.153%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M231.168%20362.607h37.094%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2239.464%22%20height=%2263.929%22%20x=%22185.027%22%20y=%22329.214%22%20ry=%223.75%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22199.826%22%20y=%22359.153%22%20transform=%22scale(.94516%201.05802)%22%20font-weight=%22400%22%20font-size=%2247.638%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222%22%3E%3Ctspan%20x=%22199.826%22%20y=%22359.153%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M186.525%20362.607h37.094%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "738607bf-8052-4b88-84ee-e6089b0ae428",
              "type": "basic.output",
              "data": {
                "name": "o",
                "range": "[1:0]",
                "size": 2
              },
              "position": {
                "x": 728,
                "y": -8
              }
            },
            {
              "id": "c84d81de-261a-469b-91ac-868551137e94",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 80,
                "y": 0
              }
            },
            {
              "id": "7c8078c9-ffeb-47ac-944b-da56653c5055",
              "type": "basic.input",
              "data": {
                "name": "cnt",
                "clock": false
              },
              "position": {
                "x": 80,
                "y": 128
              }
            },
            {
              "id": "a11a6609-bf7b-4b68-9d88-bb6c7fcf43cc",
              "type": "665b7dbf068da4dc5b8b7b06178900919bf668fa",
              "position": {
                "x": 592,
                "y": 96
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "194f28e9-f25a-41d5-a519-5de42cdc0e5d",
              "type": "630e456dc6c702712ac6fbf4c49ed69be8fe358f",
              "position": {
                "x": 344,
                "y": 80
              },
              "size": {
                "width": 96,
                "height": 96
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "7c8078c9-ffeb-47ac-944b-da56653c5055",
                "port": "out"
              },
              "target": {
                "block": "194f28e9-f25a-41d5-a519-5de42cdc0e5d",
                "port": "2edee2c3-68df-4f45-97a1-9908278aa0c0"
              }
            },
            {
              "source": {
                "block": "194f28e9-f25a-41d5-a519-5de42cdc0e5d",
                "port": "737896d9-185f-43d1-bc3b-71e326d811f5"
              },
              "target": {
                "block": "a11a6609-bf7b-4b68-9d88-bb6c7fcf43cc",
                "port": "70b4b327-bf4b-44be-b7a1-4feb2de66e11"
              },
              "size": 2
            },
            {
              "source": {
                "block": "194f28e9-f25a-41d5-a519-5de42cdc0e5d",
                "port": "737896d9-185f-43d1-bc3b-71e326d811f5"
              },
              "target": {
                "block": "738607bf-8052-4b88-84ee-e6089b0ae428",
                "port": "in"
              },
              "vertices": [
                {
                  "x": 488,
                  "y": 40
                }
              ],
              "size": 2
            },
            {
              "source": {
                "block": "c84d81de-261a-469b-91ac-868551137e94",
                "port": "out"
              },
              "target": {
                "block": "194f28e9-f25a-41d5-a519-5de42cdc0e5d",
                "port": "6cb7d0a4-e396-47cd-bc41-61f3ac7ed626"
              },
              "vertices": [
                {
                  "x": 288,
                  "y": 56
                }
              ]
            },
            {
              "source": {
                "block": "a11a6609-bf7b-4b68-9d88-bb6c7fcf43cc",
                "port": "f4ef3b86-e166-484a-88ee-a00b3626e0f7"
              },
              "target": {
                "block": "194f28e9-f25a-41d5-a519-5de42cdc0e5d",
                "port": "8dd87152-44af-4fce-95d9-60c651419ac2"
              },
              "vertices": [
                {
                  "x": 744,
                  "y": 224
                },
                {
                  "x": 288,
                  "y": 240
                }
              ],
              "size": 2
            }
          ]
        },
        "state": {
          "pan": {
            "x": -2,
            "y": 143.5
          },
          "zoom": 1
        }
      }
    },
    "665b7dbf068da4dc5b8b7b06178900919bf668fa": {
      "package": {
        "name": "Inc-2bits",
        "version": "0.1",
        "description": "Incrementar en 1 el dato de 2 bits",
        "author": "Juan Gonalez Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22100.466%22%20height=%2255.611%22%20viewBox=%220%200%2094.187617%2052.135877%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-7.443%22%20y=%2252.136%22%20font-weight=%22400%22%20font-size=%2270.246%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-7.443%22%20y=%2252.136%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22#00f%22%3E+1%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "70b4b327-bf4b-44be-b7a1-4feb2de66e11",
              "type": "basic.input",
              "data": {
                "name": "i",
                "range": "[1:0]",
                "clock": false,
                "size": 2
              },
              "position": {
                "x": 96,
                "y": 232
              }
            },
            {
              "id": "f4ef3b86-e166-484a-88ee-a00b3626e0f7",
              "type": "basic.output",
              "data": {
                "name": "o",
                "range": "[1:0]",
                "size": 2
              },
              "position": {
                "x": 656,
                "y": 264
              }
            },
            {
              "id": "9393deee-ffb5-41df-9af7-b5aace887208",
              "type": "098c46b68b41519e485a334c4101b48a999dd54e",
              "position": {
                "x": 408,
                "y": 248
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "8faa441d-5b35-4f4d-a3bd-d6615eb0124e",
              "type": "951893efc3df7b55954c8e63024adaf15380db2f",
              "position": {
                "x": 224,
                "y": 328
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
                "block": "70b4b327-bf4b-44be-b7a1-4feb2de66e11",
                "port": "out"
              },
              "target": {
                "block": "9393deee-ffb5-41df-9af7-b5aace887208",
                "port": "bb98565f-b574-48d9-a264-9e4db164222e"
              },
              "size": 2
            },
            {
              "source": {
                "block": "9393deee-ffb5-41df-9af7-b5aace887208",
                "port": "ab2f3016-698d-4941-9eac-3130e7cae250"
              },
              "target": {
                "block": "f4ef3b86-e166-484a-88ee-a00b3626e0f7",
                "port": "in"
              },
              "size": 2
            },
            {
              "source": {
                "block": "8faa441d-5b35-4f4d-a3bd-d6615eb0124e",
                "port": "6a253ddf-22b2-43cd-ba6f-561bd1af6970"
              },
              "target": {
                "block": "9393deee-ffb5-41df-9af7-b5aace887208",
                "port": "a7b944d2-7608-48c1-bd9d-c1f3c64f9e41"
              },
              "size": 2
            }
          ]
        },
        "state": {
          "pan": {
            "x": 26,
            "y": -48.5
          },
          "zoom": 1
        }
      }
    },
    "098c46b68b41519e485a334c4101b48a999dd54e": {
      "package": {
        "name": "Sumador-2bits",
        "version": "0.1",
        "description": "Sumador de 2 bits con acarreo de salida",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2246.904%22%20height=%2246.977%22%20viewBox=%220%200%2043.972512%2044.041097%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-7.443%22%20y=%2244.041%22%20font-weight=%22400%22%20font-size=%2270.246%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-7.443%22%20y=%2244.041%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22#00f%22%3E+%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "bb98565f-b574-48d9-a264-9e4db164222e",
              "type": "basic.input",
              "data": {
                "name": "a",
                "range": "[1:0]",
                "clock": false,
                "size": 2
              },
              "position": {
                "x": 24,
                "y": 112
              }
            },
            {
              "id": "dcfde153-2e7a-42f3-8622-f157fdf05754",
              "type": "basic.output",
              "data": {
                "name": "Co"
              },
              "position": {
                "x": 448,
                "y": 120
              }
            },
            {
              "id": "a7b944d2-7608-48c1-bd9d-c1f3c64f9e41",
              "type": "basic.input",
              "data": {
                "name": "b",
                "range": "[1:0]",
                "clock": false,
                "size": 2
              },
              "position": {
                "x": 24,
                "y": 192
              }
            },
            {
              "id": "ab2f3016-698d-4941-9eac-3130e7cae250",
              "type": "basic.output",
              "data": {
                "name": "S",
                "range": "[1:0]",
                "size": 2
              },
              "position": {
                "x": 448,
                "y": 216
              }
            },
            {
              "id": "fcb8525d-02df-4f71-8901-ba752fc0f143",
              "type": "90f305b89f0cc8cda27392a39ed68af9022a1adb",
              "position": {
                "x": 248,
                "y": 128
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "14e81998-2a5f-406a-ab26-07423c330d9f",
              "type": "21cfcc19a4ad14c5fb5e8cfebd018ec356fe7542",
              "position": {
                "x": 64,
                "y": 280
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
                "block": "bb98565f-b574-48d9-a264-9e4db164222e",
                "port": "out"
              },
              "target": {
                "block": "fcb8525d-02df-4f71-8901-ba752fc0f143",
                "port": "bb98565f-b574-48d9-a264-9e4db164222e"
              },
              "size": 2
            },
            {
              "source": {
                "block": "a7b944d2-7608-48c1-bd9d-c1f3c64f9e41",
                "port": "out"
              },
              "target": {
                "block": "fcb8525d-02df-4f71-8901-ba752fc0f143",
                "port": "a7b944d2-7608-48c1-bd9d-c1f3c64f9e41"
              },
              "vertices": [
                {
                  "x": 168,
                  "y": 200
                }
              ],
              "size": 2
            },
            {
              "source": {
                "block": "fcb8525d-02df-4f71-8901-ba752fc0f143",
                "port": "dcfde153-2e7a-42f3-8622-f157fdf05754"
              },
              "target": {
                "block": "dcfde153-2e7a-42f3-8622-f157fdf05754",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "fcb8525d-02df-4f71-8901-ba752fc0f143",
                "port": "ab2f3016-698d-4941-9eac-3130e7cae250"
              },
              "target": {
                "block": "ab2f3016-698d-4941-9eac-3130e7cae250",
                "port": "in"
              },
              "size": 2
            },
            {
              "source": {
                "block": "14e81998-2a5f-406a-ab26-07423c330d9f",
                "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
              },
              "target": {
                "block": "fcb8525d-02df-4f71-8901-ba752fc0f143",
                "port": "93ea84dc-1b54-4f70-830b-9535311b9378"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 199,
            "y": 63.5
          },
          "zoom": 1
        }
      }
    },
    "90f305b89f0cc8cda27392a39ed68af9022a1adb": {
      "package": {
        "name": "Sumador-2bits-cin",
        "version": "0.1",
        "description": "Sumador de 2 bits con acarreo de salida y de entrada",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2246.904%22%20height=%2246.977%22%20viewBox=%220%200%2043.972512%2044.041097%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-7.443%22%20y=%2244.041%22%20font-weight=%22400%22%20font-size=%2270.246%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-7.443%22%20y=%2244.041%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22#00f%22%3E+%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "dcfde153-2e7a-42f3-8622-f157fdf05754",
              "type": "basic.output",
              "data": {
                "name": "Co"
              },
              "position": {
                "x": 744,
                "y": 88
              }
            },
            {
              "id": "bb98565f-b574-48d9-a264-9e4db164222e",
              "type": "basic.input",
              "data": {
                "name": "a",
                "range": "[1:0]",
                "clock": false,
                "size": 2
              },
              "position": {
                "x": 24,
                "y": 112
              }
            },
            {
              "id": "ab2f3016-698d-4941-9eac-3130e7cae250",
              "type": "basic.output",
              "data": {
                "name": "S",
                "range": "[1:0]",
                "size": 2
              },
              "position": {
                "x": 744,
                "y": 184
              }
            },
            {
              "id": "a7b944d2-7608-48c1-bd9d-c1f3c64f9e41",
              "type": "basic.input",
              "data": {
                "name": "b",
                "range": "[1:0]",
                "clock": false,
                "size": 2
              },
              "position": {
                "x": 24,
                "y": 272
              }
            },
            {
              "id": "93ea84dc-1b54-4f70-830b-9535311b9378",
              "type": "basic.input",
              "data": {
                "name": "Ci",
                "clock": false
              },
              "position": {
                "x": 24,
                "y": 384
              }
            },
            {
              "id": "4b1d604d-db3b-40a4-947a-8390e804c493",
              "type": "af0ab1f86935a9184c5aae2e3cacf97464161c2f",
              "position": {
                "x": 408,
                "y": 272
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "1c67454a-eecf-4a78-8c12-7310eaebf850",
              "type": "af0ab1f86935a9184c5aae2e3cacf97464161c2f",
              "position": {
                "x": 408,
                "y": 128
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "d4a5bb35-daa2-4850-ab76-0eed09ae4b7d",
              "type": "28a2819c8e523fd90c6dbecc0357b5dcfa64853b",
              "position": {
                "x": 192,
                "y": 112
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "87b50439-9cac-4e34-99ad-8999cb87ad70",
              "type": "28a2819c8e523fd90c6dbecc0357b5dcfa64853b",
              "position": {
                "x": 192,
                "y": 272
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "4286d88e-94ae-4b23-bfe2-6fe80b74d538",
              "type": "c67fda3e9899032166cd4536d0a45c0be98d946e",
              "position": {
                "x": 592,
                "y": 184
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
                "block": "93ea84dc-1b54-4f70-830b-9535311b9378",
                "port": "out"
              },
              "target": {
                "block": "4b1d604d-db3b-40a4-947a-8390e804c493",
                "port": "fba7b0d5-1ba9-4538-94e1-f7d4115dbdea"
              }
            },
            {
              "source": {
                "block": "1c67454a-eecf-4a78-8c12-7310eaebf850",
                "port": "5765b484-dad9-4175-9c15-e6f5b01fbe9a"
              },
              "target": {
                "block": "dcfde153-2e7a-42f3-8622-f157fdf05754",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "4b1d604d-db3b-40a4-947a-8390e804c493",
                "port": "5765b484-dad9-4175-9c15-e6f5b01fbe9a"
              },
              "target": {
                "block": "1c67454a-eecf-4a78-8c12-7310eaebf850",
                "port": "fba7b0d5-1ba9-4538-94e1-f7d4115dbdea"
              },
              "vertices": [
                {
                  "x": 536,
                  "y": 248
                },
                {
                  "x": 392,
                  "y": 248
                }
              ]
            },
            {
              "source": {
                "block": "bb98565f-b574-48d9-a264-9e4db164222e",
                "port": "out"
              },
              "target": {
                "block": "d4a5bb35-daa2-4850-ab76-0eed09ae4b7d",
                "port": "63197b8b-eab7-4727-9143-f834175e4ed3"
              },
              "size": 2
            },
            {
              "source": {
                "block": "d4a5bb35-daa2-4850-ab76-0eed09ae4b7d",
                "port": "9c7360a8-890e-4c3d-857b-64bae61a01c8"
              },
              "target": {
                "block": "1c67454a-eecf-4a78-8c12-7310eaebf850",
                "port": "9e35bf68-1510-49c7-9550-01c7172c047f"
              }
            },
            {
              "source": {
                "block": "d4a5bb35-daa2-4850-ab76-0eed09ae4b7d",
                "port": "b1ca63ac-2667-4270-80cf-fe88c5950d13"
              },
              "target": {
                "block": "4b1d604d-db3b-40a4-947a-8390e804c493",
                "port": "9e35bf68-1510-49c7-9550-01c7172c047f"
              },
              "vertices": [
                {
                  "x": 368,
                  "y": 232
                }
              ]
            },
            {
              "source": {
                "block": "a7b944d2-7608-48c1-bd9d-c1f3c64f9e41",
                "port": "out"
              },
              "target": {
                "block": "87b50439-9cac-4e34-99ad-8999cb87ad70",
                "port": "63197b8b-eab7-4727-9143-f834175e4ed3"
              },
              "size": 2
            },
            {
              "source": {
                "block": "87b50439-9cac-4e34-99ad-8999cb87ad70",
                "port": "9c7360a8-890e-4c3d-857b-64bae61a01c8"
              },
              "target": {
                "block": "1c67454a-eecf-4a78-8c12-7310eaebf850",
                "port": "80184c28-3b70-4fba-ab19-79d2c5848172"
              },
              "vertices": [
                {
                  "x": 336,
                  "y": 224
                }
              ]
            },
            {
              "source": {
                "block": "87b50439-9cac-4e34-99ad-8999cb87ad70",
                "port": "b1ca63ac-2667-4270-80cf-fe88c5950d13"
              },
              "target": {
                "block": "4b1d604d-db3b-40a4-947a-8390e804c493",
                "port": "80184c28-3b70-4fba-ab19-79d2c5848172"
              }
            },
            {
              "source": {
                "block": "4286d88e-94ae-4b23-bfe2-6fe80b74d538",
                "port": "b6f82efb-fda0-4281-ad09-610526f0f7ea"
              },
              "target": {
                "block": "ab2f3016-698d-4941-9eac-3130e7cae250",
                "port": "in"
              },
              "size": 2
            },
            {
              "source": {
                "block": "1c67454a-eecf-4a78-8c12-7310eaebf850",
                "port": "8008a6fb-124c-4cf4-acb2-ca419a56e5d7"
              },
              "target": {
                "block": "4286d88e-94ae-4b23-bfe2-6fe80b74d538",
                "port": "3cac4619-1f44-4d02-8d1e-6ab14779a115"
              }
            },
            {
              "source": {
                "block": "4b1d604d-db3b-40a4-947a-8390e804c493",
                "port": "8008a6fb-124c-4cf4-acb2-ca419a56e5d7"
              },
              "target": {
                "block": "4286d88e-94ae-4b23-bfe2-6fe80b74d538",
                "port": "63c7309a-4460-4727-99ac-8c08c900502a"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 18,
            "y": -4.5
          },
          "zoom": 1
        }
      }
    },
    "af0ab1f86935a9184c5aae2e3cacf97464161c2f": {
      "package": {
        "name": "Sumador-1bit",
        "version": "0.1",
        "description": "Sumador de 1bit, con arraceo de entrada y salida",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2246.904%22%20height=%2246.977%22%20viewBox=%220%200%2043.972512%2044.041097%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-7.443%22%20y=%2244.041%22%20font-weight=%22400%22%20font-size=%2270.246%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-7.443%22%20y=%2244.041%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22#00f%22%3E+%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "9e35bf68-1510-49c7-9550-01c7172c047f",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 104,
                "y": 120
              }
            },
            {
              "id": "5765b484-dad9-4175-9c15-e6f5b01fbe9a",
              "type": "basic.output",
              "data": {
                "name": "Co"
              },
              "position": {
                "x": 736,
                "y": 120
              }
            },
            {
              "id": "80184c28-3b70-4fba-ab19-79d2c5848172",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 104,
                "y": 208
              }
            },
            {
              "id": "8008a6fb-124c-4cf4-acb2-ca419a56e5d7",
              "type": "basic.output",
              "data": {
                "name": "S"
              },
              "position": {
                "x": 736,
                "y": 208
              }
            },
            {
              "id": "fba7b0d5-1ba9-4538-94e1-f7d4115dbdea",
              "type": "basic.input",
              "data": {
                "name": "Ci",
                "clock": false
              },
              "position": {
                "x": 104,
                "y": 288
              }
            },
            {
              "id": "c7acc7ae-20a6-4474-ba84-df5338bb4802",
              "type": "493ea8bcb6894bc9ff0ddaaa0e4295cb5a1e8713",
              "position": {
                "x": 592,
                "y": 160
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "da8be4bc-f9f7-4408-949b-05fd32495dab",
              "type": "2177b1ad94bafccf8e55b27939261cf931988711",
              "position": {
                "x": 440,
                "y": 192
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "3e9c86f0-af4c-4877-b492-7d4f68f11dfe",
              "type": "2177b1ad94bafccf8e55b27939261cf931988711",
              "position": {
                "x": 280,
                "y": 160
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
                "block": "c7acc7ae-20a6-4474-ba84-df5338bb4802",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "5765b484-dad9-4175-9c15-e6f5b01fbe9a",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "da8be4bc-f9f7-4408-949b-05fd32495dab",
                "port": "b21e067b-046c-48b7-94d7-782787ace4d9"
              },
              "target": {
                "block": "c7acc7ae-20a6-4474-ba84-df5338bb4802",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            },
            {
              "source": {
                "block": "fba7b0d5-1ba9-4538-94e1-f7d4115dbdea",
                "port": "out"
              },
              "target": {
                "block": "da8be4bc-f9f7-4408-949b-05fd32495dab",
                "port": "712af7bd-0c4e-4eeb-9d72-0e56627e8986"
              }
            },
            {
              "source": {
                "block": "da8be4bc-f9f7-4408-949b-05fd32495dab",
                "port": "a04ca11e-cb24-4b57-ac70-0f03d93b4d7f"
              },
              "target": {
                "block": "8008a6fb-124c-4cf4-acb2-ca419a56e5d7",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "3e9c86f0-af4c-4877-b492-7d4f68f11dfe",
                "port": "a04ca11e-cb24-4b57-ac70-0f03d93b4d7f"
              },
              "target": {
                "block": "da8be4bc-f9f7-4408-949b-05fd32495dab",
                "port": "855fbf25-f3b7-4151-818d-bd089479c718"
              }
            },
            {
              "source": {
                "block": "3e9c86f0-af4c-4877-b492-7d4f68f11dfe",
                "port": "b21e067b-046c-48b7-94d7-782787ace4d9"
              },
              "target": {
                "block": "c7acc7ae-20a6-4474-ba84-df5338bb4802",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "9e35bf68-1510-49c7-9550-01c7172c047f",
                "port": "out"
              },
              "target": {
                "block": "3e9c86f0-af4c-4877-b492-7d4f68f11dfe",
                "port": "855fbf25-f3b7-4151-818d-bd089479c718"
              }
            },
            {
              "source": {
                "block": "80184c28-3b70-4fba-ab19-79d2c5848172",
                "port": "out"
              },
              "target": {
                "block": "3e9c86f0-af4c-4877-b492-7d4f68f11dfe",
                "port": "712af7bd-0c4e-4eeb-9d72-0e56627e8986"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": -18,
            "y": 27.5
          },
          "zoom": 1
        }
      }
    },
    "2177b1ad94bafccf8e55b27939261cf931988711": {
      "package": {
        "name": "Semi-sumador",
        "version": "0.1",
        "description": "Semisumador. 2 bits de entrada, saca la suma (S) y el acarreo (C)",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2246.904%22%20height=%2246.977%22%20viewBox=%220%200%2043.972512%2044.041097%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-7.443%22%20y=%2244.041%22%20font-weight=%22400%22%20font-size=%2270.246%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-7.443%22%20y=%2244.041%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22#00f%22%3E+%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "855fbf25-f3b7-4151-818d-bd089479c718",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 360,
                "y": 168
              }
            },
            {
              "id": "b21e067b-046c-48b7-94d7-782787ace4d9",
              "type": "basic.output",
              "data": {
                "name": "Co"
              },
              "position": {
                "x": 768,
                "y": 184
              }
            },
            {
              "id": "a04ca11e-cb24-4b57-ac70-0f03d93b4d7f",
              "type": "basic.output",
              "data": {
                "name": "S"
              },
              "position": {
                "x": 768,
                "y": 264
              }
            },
            {
              "id": "712af7bd-0c4e-4eeb-9d72-0e56627e8986",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 360,
                "y": 280
              }
            },
            {
              "id": "8424aa62-2bc0-4611-ade8-533e8e7a4bbc",
              "type": "91abf148146a61dd0ce91850f8b25b50d215342c",
              "position": {
                "x": 616,
                "y": 184
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "838143ee-0ffc-434c-b5e4-c46ed607f70b",
              "type": "3dfc1ef2102949d6a991347557b2aabcd87c3ca4",
              "position": {
                "x": 616,
                "y": 264
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
                "block": "8424aa62-2bc0-4611-ade8-533e8e7a4bbc",
                "port": "e23ec09c-c612-4db0-ae91-83a6b9f91044"
              },
              "target": {
                "block": "b21e067b-046c-48b7-94d7-782787ace4d9",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "855fbf25-f3b7-4151-818d-bd089479c718",
                "port": "out"
              },
              "target": {
                "block": "8424aa62-2bc0-4611-ade8-533e8e7a4bbc",
                "port": "4f1a05d0-b11c-490a-8792-876ebf3a8f05"
              }
            },
            {
              "source": {
                "block": "712af7bd-0c4e-4eeb-9d72-0e56627e8986",
                "port": "out"
              },
              "target": {
                "block": "8424aa62-2bc0-4611-ade8-533e8e7a4bbc",
                "port": "60ce79f4-7963-45bf-9a9c-06c84ec9839c"
              },
              "vertices": [
                {
                  "x": 528,
                  "y": 272
                }
              ]
            },
            {
              "source": {
                "block": "838143ee-0ffc-434c-b5e4-c46ed607f70b",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "a04ca11e-cb24-4b57-ac70-0f03d93b4d7f",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "712af7bd-0c4e-4eeb-9d72-0e56627e8986",
                "port": "out"
              },
              "target": {
                "block": "838143ee-0ffc-434c-b5e4-c46ed607f70b",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            },
            {
              "source": {
                "block": "855fbf25-f3b7-4151-818d-bd089479c718",
                "port": "out"
              },
              "target": {
                "block": "838143ee-0ffc-434c-b5e4-c46ed607f70b",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              },
              "vertices": [
                {
                  "x": 496,
                  "y": 240
                }
              ]
            }
          ]
        },
        "state": {
          "pan": {
            "x": -162,
            "y": 7.5
          },
          "zoom": 1
        }
      }
    },
    "3dfc1ef2102949d6a991347557b2aabcd87c3ca4": {
      "package": {
        "name": "XOR",
        "version": "1.0.0",
        "description": "XOR logic gate",
        "author": "Carlos Diaz",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2296%22%20height=%2242.667%22%20viewBox=%220%200%2089.999999%2040%22%3E%3Cpath%20d=%22M0%209h26v2H0zM0%2029h27v2H0zM65.5%2019H90v2H65.5z%22/%3E%3Cpath%20d=%22M67.4%2020c0-1-.6-2-.6-2C56.5.2%2040.8%200%2036.2%200H19l2%202.4s5.7%207%205.7%2017.6c0%2010.6-5.7%2017.6-5.7%2017.6L19%2040h17.2c2.4%200%207.7%200%2013.6-2.4%205.7-2.3%2012-6.9%2017-15.7.1%200%20.6-1%20.6-1.9zM48.5%2034.8C43.1%2037%2038.7%2037%2036.2%2037H25c1.9-3.1%204.8-9%204.8-17S26.9%206.1%2025%203h11.3c4.7%200%2018.3-.1%2028%2017-4.8%208.4-10.6%2012.7-15.8%2014.8z%22/%3E%3Cpath%20d=%22M13.7%2040h3.6c2.3-3.7%206.5-11.6%206.5-19.8%200-8.5-4.4-16.5-6.8-20.2h-3.6c1.4%202%207.4%2011%207.4%2020.2%200%208.9-5.7%2017.7-7.1%2019.8z%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22201.896%22%20y=%22252.849%22%20font-weight=%22400%22%20font-size=%2210.851%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%20transform=%22translate(-169.286%20-229.505)%22%3E%3Ctspan%20x=%22201.896%22%20y=%22252.849%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EXOR%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 64,
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
                "x": 752,
                "y": 144
              }
            },
            {
              "id": "97b51945-d716-4b6c-9db9-970d08541249",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 64,
                "y": 240
              }
            },
            {
              "id": "8c666f28-c64b-43b5-9d8b-33b7b965f32d",
              "type": "4b9553351d0d968f4d279e4831626414f5cfa9ec",
              "position": {
                "x": 608,
                "y": 144
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "7a996b13-0403-485b-8018-57d88a607ef3",
              "type": "0ec0772bb73356cd1b754fe7d840a322387a9f3a",
              "position": {
                "x": 272,
                "y": 40
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "de3f6ec6-75fd-409f-992f-ae8fd013b6c5",
              "type": "0ec0772bb73356cd1b754fe7d840a322387a9f3a",
              "position": {
                "x": 272,
                "y": 240
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "be194c67-3a65-4886-bc09-c828cee59ac2",
              "type": "4b9553351d0d968f4d279e4831626414f5cfa9ec",
              "position": {
                "x": 448,
                "y": 72
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "02e5850b-ddfa-45be-a211-6fc0bd7f5a26",
              "type": "4b9553351d0d968f4d279e4831626414f5cfa9ec",
              "position": {
                "x": 448,
                "y": 208
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
                "block": "8c666f28-c64b-43b5-9d8b-33b7b965f32d",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
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
                "block": "7a996b13-0403-485b-8018-57d88a607ef3",
                "port": "1a93168d-3764-4337-8a5a-2f4fc62a1ecc"
              }
            },
            {
              "source": {
                "block": "97b51945-d716-4b6c-9db9-970d08541249",
                "port": "out"
              },
              "target": {
                "block": "de3f6ec6-75fd-409f-992f-ae8fd013b6c5",
                "port": "1a93168d-3764-4337-8a5a-2f4fc62a1ecc"
              }
            },
            {
              "source": {
                "block": "7a996b13-0403-485b-8018-57d88a607ef3",
                "port": "40d86778-65d1-4ba9-beec-fc5be175aaed"
              },
              "target": {
                "block": "be194c67-3a65-4886-bc09-c828cee59ac2",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "97b51945-d716-4b6c-9db9-970d08541249",
                "port": "out"
              },
              "target": {
                "block": "be194c67-3a65-4886-bc09-c828cee59ac2",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              },
              "vertices": [
                {
                  "x": 208,
                  "y": 168
                }
              ]
            },
            {
              "source": {
                "block": "be194c67-3a65-4886-bc09-c828cee59ac2",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "8c666f28-c64b-43b5-9d8b-33b7b965f32d",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "02e5850b-ddfa-45be-a211-6fc0bd7f5a26",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "8c666f28-c64b-43b5-9d8b-33b7b965f32d",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            },
            {
              "source": {
                "block": "de3f6ec6-75fd-409f-992f-ae8fd013b6c5",
                "port": "40d86778-65d1-4ba9-beec-fc5be175aaed"
              },
              "target": {
                "block": "02e5850b-ddfa-45be-a211-6fc0bd7f5a26",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            },
            {
              "source": {
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "02e5850b-ddfa-45be-a211-6fc0bd7f5a26",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              },
              "vertices": [
                {
                  "x": 240,
                  "y": 152
                }
              ]
            }
          ]
        },
        "state": {
          "pan": {
            "x": -6,
            "y": 87.5
          },
          "zoom": 1
        }
      }
    },
    "21cfcc19a4ad14c5fb5e8cfebd018ec356fe7542": {
      "package": {
        "name": "0",
        "version": "0.1",
        "description": "Un bit constante a 0",
        "author": "Jesus Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2233.563%22%20height=%2257.469%22%20viewBox=%220%200%2031.465601%2053.876499%22%3E%3Cpath%20d=%22M21.822%2032.843l4.092%208.992-3.772%209.727%204.181%201.31m-12.967-19.26s-1.091%208.253-2.585%208.919C9.278%2043.198%201%2049.389%201%2049.389l2.647%203.256%22%20fill=%22none%22%20stroke=%22green%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-.863%22%20y=%2230.575%22%20transform=%22scale(.90756%201.10186)%22%20font-weight=%22400%22%20font-size=%2254.594%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22green%22%3E%3Ctspan%20x=%22-.863%22%20y=%2230.575%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold%20Italic'%22%20font-style=%22italic%22%20font-weight=%22700%22%3Eo%3C/tspan%3E%3C/text%3E%3C/svg%3E"
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
                "x": 512,
                "y": 160
              }
            },
            {
              "id": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
              "type": "basic.code",
              "data": {
                "code": "//-- Bit constante a 0\nassign q = 1'b0;\n\n",
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
                "width": 256,
                "height": 160
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
        },
        "state": {
          "pan": {
            "x": 62,
            "y": 71.5
          },
          "zoom": 1
        }
      }
    },
    "951893efc3df7b55954c8e63024adaf15380db2f": {
      "package": {
        "name": "Valor_1_2bits",
        "version": "0.0.1",
        "description": "Valor constante 1 para bus de 2 bits",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2219.555%22%20height=%2224.647%22%20viewBox=%220%200%2018.333077%2023.106531%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-1.462%22%20y=%2222.674%22%20font-weight=%22400%22%20font-size=%2230.55%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-1.462%22%20y=%2222.674%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22green%22%3E1%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "6a253ddf-22b2-43cd-ba6f-561bd1af6970",
              "type": "basic.output",
              "data": {
                "name": "K",
                "range": "[1:0]",
                "size": 2
              },
              "position": {
                "x": 928,
                "y": 256
              }
            },
            {
              "id": "ad7918eb-22dd-4b6c-949f-e428f5a55530",
              "type": "basic.constant",
              "data": {
                "name": "V",
                "value": "2'd1",
                "local": true
              },
              "position": {
                "x": 728,
                "y": 136
              }
            },
            {
              "id": "c38eb45f-e5b0-4be7-8d4d-7592432bf5b0",
              "type": "390387dcb48089fe189dc463ef12dd5587b6ed8f",
              "position": {
                "x": 728,
                "y": 256
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
                "block": "c38eb45f-e5b0-4be7-8d4d-7592432bf5b0",
                "port": "603ddbc9-28cf-4ecc-a0c6-a5a2ce3b0b26"
              },
              "target": {
                "block": "6a253ddf-22b2-43cd-ba6f-561bd1af6970",
                "port": "in"
              },
              "size": 2
            },
            {
              "source": {
                "block": "ad7918eb-22dd-4b6c-949f-e428f5a55530",
                "port": "constant-out"
              },
              "target": {
                "block": "c38eb45f-e5b0-4be7-8d4d-7592432bf5b0",
                "port": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": -426,
            "y": 35.5
          },
          "zoom": 1
        }
      }
    },
    "390387dcb48089fe189dc463ef12dd5587b6ed8f": {
      "package": {
        "name": "Constante-2bits",
        "version": "0.0.1",
        "description": "Valor constante de 2 bits",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2214.138%22%20height=%2214.448%22%20viewBox=%220%200%2013.254373%2013.544677%22%3E%3Ctext%20style=%22line-height:125%25;-inkscape-font-specification:sans-serif%22%20x=%22-1.706%22%20y=%2213.545%22%20font-weight=%22400%22%20font-size=%2218.58%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-1.706%22%20y=%2213.545%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22green%22%3EK%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "603ddbc9-28cf-4ecc-a0c6-a5a2ce3b0b26",
              "type": "basic.output",
              "data": {
                "name": "K",
                "range": "[1:0]",
                "size": 2
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
                "value": "2'h0",
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
                "code": "assign k = V;",
                "params": [
                  {
                    "name": "V"
                  }
                ],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "k",
                      "range": "[1:0]",
                      "size": 2
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
                "block": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4",
                "port": "constant-out"
              },
              "target": {
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "V"
              }
            },
            {
              "source": {
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "k"
              },
              "target": {
                "block": "603ddbc9-28cf-4ecc-a0c6-a5a2ce3b0b26",
                "port": "in"
              },
              "size": 2
            }
          ]
        },
        "state": {
          "pan": {
            "x": -414,
            "y": 43.5
          },
          "zoom": 1
        }
      }
    },
    "630e456dc6c702712ac6fbf4c49ed69be8fe358f": {
      "package": {
        "name": "Reg2-load",
        "version": "0.1",
        "description": "Registro de 2 bits, con entrada de load",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22109.404%22%20height=%2277.949%22%20viewBox=%220%200%20102.56663%2073.076845%22%3E%3Cg%20transform=%22translate(-208.312%20-424.877)%22%3E%3Cpath%20d=%22M288.631%20471.868l4.174%2025.586%205.175-25.586%22%20fill=%22#ccc%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22207.303%22%20y=%22444.804%22%20font-weight=%22400%22%20font-size=%2227.335%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22207.303%22%20y=%22444.804%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EReg%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22221.939%22%20y=%22483.497%22%20font-weight=%22400%22%20font-size=%2228.013%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%22221.939%22%20y=%22483.497%22%3E00%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M285.771%20459.009l2.192-26.019h-9.014v-4.984h29.214v4.984h-8.514l1.581%2026.254s6.885%201.14%208.499%205.913c1.614%204.774-.337%206.65.138%206.717l-33.08-.04s-.75-5.57%201.848-8.39c2.597-2.82%207.136-4.435%207.136-4.435z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2257.074%22%20height=%2231.82%22%20x=%22209.812%22%20y=%22457.548%22%20ry=%223.018%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%223%22%20stroke-linecap=%22square%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "6cb7d0a4-e396-47cd-bc41-61f3ac7ed626",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 144,
                "y": 16
              }
            },
            {
              "id": "737896d9-185f-43d1-bc3b-71e326d811f5",
              "type": "basic.output",
              "data": {
                "name": "q",
                "range": "[1:0]",
                "size": 2
              },
              "position": {
                "x": 888,
                "y": 160
              }
            },
            {
              "id": "8dd87152-44af-4fce-95d9-60c651419ac2",
              "type": "basic.input",
              "data": {
                "name": "d",
                "range": "[1:0]",
                "clock": false,
                "size": 2
              },
              "position": {
                "x": 144,
                "y": 160
              }
            },
            {
              "id": "2edee2c3-68df-4f45-97a1-9908278aa0c0",
              "type": "basic.input",
              "data": {
                "name": "load",
                "clock": false
              },
              "position": {
                "x": 144,
                "y": 272
              }
            },
            {
              "id": "e5699a00-ca5d-4d6a-bf05-84fbbf631c56",
              "type": "28a2819c8e523fd90c6dbecc0357b5dcfa64853b",
              "position": {
                "x": 296,
                "y": 160
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "f6a0aa9e-94d7-4394-8f0b-c28680227768",
              "type": "c67fda3e9899032166cd4536d0a45c0be98d946e",
              "position": {
                "x": 720,
                "y": 160
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "45b279ed-89e6-48ea-8180-5aecbc903384",
              "type": "a1eefc4eb31e0bbefee88b952ff41584f0407c14",
              "position": {
                "x": 528,
                "y": 160
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "1e22a5f2-0b94-4588-b37a-fcae818f20ea",
              "type": "a1eefc4eb31e0bbefee88b952ff41584f0407c14",
              "position": {
                "x": 528,
                "y": 32
              },
              "size": {
                "width": 96,
                "height": 96
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "8dd87152-44af-4fce-95d9-60c651419ac2",
                "port": "out"
              },
              "target": {
                "block": "e5699a00-ca5d-4d6a-bf05-84fbbf631c56",
                "port": "63197b8b-eab7-4727-9143-f834175e4ed3"
              },
              "size": 2
            },
            {
              "source": {
                "block": "f6a0aa9e-94d7-4394-8f0b-c28680227768",
                "port": "b6f82efb-fda0-4281-ad09-610526f0f7ea"
              },
              "target": {
                "block": "737896d9-185f-43d1-bc3b-71e326d811f5",
                "port": "in"
              },
              "size": 2
            },
            {
              "source": {
                "block": "e5699a00-ca5d-4d6a-bf05-84fbbf631c56",
                "port": "b1ca63ac-2667-4270-80cf-fe88c5950d13"
              },
              "target": {
                "block": "45b279ed-89e6-48ea-8180-5aecbc903384",
                "port": "af7cddc5-8c77-443d-8192-b2076f921aca"
              }
            },
            {
              "source": {
                "block": "45b279ed-89e6-48ea-8180-5aecbc903384",
                "port": "f8940b3f-43fe-4db8-ba05-76ad90f4711c"
              },
              "target": {
                "block": "f6a0aa9e-94d7-4394-8f0b-c28680227768",
                "port": "63c7309a-4460-4727-99ac-8c08c900502a"
              }
            },
            {
              "source": {
                "block": "1e22a5f2-0b94-4588-b37a-fcae818f20ea",
                "port": "f8940b3f-43fe-4db8-ba05-76ad90f4711c"
              },
              "target": {
                "block": "f6a0aa9e-94d7-4394-8f0b-c28680227768",
                "port": "3cac4619-1f44-4d02-8d1e-6ab14779a115"
              }
            },
            {
              "source": {
                "block": "e5699a00-ca5d-4d6a-bf05-84fbbf631c56",
                "port": "9c7360a8-890e-4c3d-857b-64bae61a01c8"
              },
              "target": {
                "block": "1e22a5f2-0b94-4588-b37a-fcae818f20ea",
                "port": "af7cddc5-8c77-443d-8192-b2076f921aca"
              },
              "vertices": [
                {
                  "x": 432,
                  "y": 120
                }
              ]
            },
            {
              "source": {
                "block": "2edee2c3-68df-4f45-97a1-9908278aa0c0",
                "port": "out"
              },
              "target": {
                "block": "45b279ed-89e6-48ea-8180-5aecbc903384",
                "port": "e318155e-4ba9-4bfd-9c1e-93a2d902b4a3"
              },
              "vertices": [
                {
                  "x": 472,
                  "y": 280
                }
              ]
            },
            {
              "source": {
                "block": "2edee2c3-68df-4f45-97a1-9908278aa0c0",
                "port": "out"
              },
              "target": {
                "block": "1e22a5f2-0b94-4588-b37a-fcae818f20ea",
                "port": "e318155e-4ba9-4bfd-9c1e-93a2d902b4a3"
              },
              "vertices": [
                {
                  "x": 472,
                  "y": 192
                }
              ]
            },
            {
              "source": {
                "block": "6cb7d0a4-e396-47cd-bc41-61f3ac7ed626",
                "port": "out"
              },
              "target": {
                "block": "1e22a5f2-0b94-4588-b37a-fcae818f20ea",
                "port": "9fadb0bc-b949-4c36-b110-f4fea27399a4"
              }
            },
            {
              "source": {
                "block": "6cb7d0a4-e396-47cd-bc41-61f3ac7ed626",
                "port": "out"
              },
              "target": {
                "block": "45b279ed-89e6-48ea-8180-5aecbc903384",
                "port": "9fadb0bc-b949-4c36-b110-f4fea27399a4"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": -100.5714,
            "y": 83.881
          },
          "zoom": 0.9762
        }
      }
    },
    "a1eefc4eb31e0bbefee88b952ff41584f0407c14": {
      "package": {
        "name": "Biestable-D-ena-0",
        "version": "0.1",
        "description": "Biestable D con enable inicializado a 0",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2263.799%22%20height=%2257.366%22%20viewBox=%220%200%2059.811602%2053.780232%22%3E%3Cg%20transform=%22translate(-310.54%20-373.968)%22%3E%3Cpath%20d=%22M353.401%20407.803l3.157%2019.445%203.914-19.445%22%20fill=%22#ccc%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22310.844%22%20y=%22395.812%22%20font-weight=%22400%22%20font-size=%2227.335%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22310.844%22%20y=%22395.812%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ED%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22316.916%22%20y=%22420.476%22%20font-weight=%22400%22%20font-size=%2220%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%22316.916%22%20y=%22420.476%22%3E0%3C/tspan%3E%3C/text%3E%3Crect%20width=%2223.595%22%20height=%2221.484%22%20x=%22311.539%22%20y=%22402.712%22%20ry=%223.545%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M351.238%20398.03l1.658-19.774h-6.818v-3.788h22.097v3.788h-6.44l1.196%2019.953s5.208.866%206.428%204.494c1.221%203.628-.254%205.053.105%205.104l-25.022-.03s-.566-4.234%201.398-6.377c1.965-2.142%205.398-3.37%205.398-3.37z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "9fadb0bc-b949-4c36-b110-f4fea27399a4",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 72,
                "y": 136
              }
            },
            {
              "id": "f8940b3f-43fe-4db8-ba05-76ad90f4711c",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 504,
                "y": 232
              }
            },
            {
              "id": "af7cddc5-8c77-443d-8192-b2076f921aca",
              "type": "basic.input",
              "data": {
                "name": "d",
                "clock": false
              },
              "position": {
                "x": 72,
                "y": 232
              }
            },
            {
              "id": "e318155e-4ba9-4bfd-9c1e-93a2d902b4a3",
              "type": "basic.input",
              "data": {
                "name": "en",
                "clock": false
              },
              "position": {
                "x": 72,
                "y": 312
              }
            },
            {
              "id": "f447c56a-1988-4bb4-ad1c-9baf4e69d445",
              "type": "basic.constant",
              "data": {
                "name": "INI",
                "value": "0",
                "local": true
              },
              "position": {
                "x": 336,
                "y": 88
              }
            },
            {
              "id": "5336edde-64ac-419b-80ab-5c00d47dfe1e",
              "type": "c470db2f0c1f54b43f48f00c2df7e5077096f8e1",
              "position": {
                "x": 336,
                "y": 216
              },
              "size": {
                "width": 96,
                "height": 96
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "f447c56a-1988-4bb4-ad1c-9baf4e69d445",
                "port": "constant-out"
              },
              "target": {
                "block": "5336edde-64ac-419b-80ab-5c00d47dfe1e",
                "port": "2e6e4dda-09c7-47b3-8d71-9bd7075f7c93"
              }
            },
            {
              "source": {
                "block": "5336edde-64ac-419b-80ab-5c00d47dfe1e",
                "port": "68f5af5c-538b-451c-91cd-8f0390debe3f"
              },
              "target": {
                "block": "f8940b3f-43fe-4db8-ba05-76ad90f4711c",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "e318155e-4ba9-4bfd-9c1e-93a2d902b4a3",
                "port": "out"
              },
              "target": {
                "block": "5336edde-64ac-419b-80ab-5c00d47dfe1e",
                "port": "2bc65517-fd0f-42c1-958e-18c130df2aea"
              }
            },
            {
              "source": {
                "block": "af7cddc5-8c77-443d-8192-b2076f921aca",
                "port": "out"
              },
              "target": {
                "block": "5336edde-64ac-419b-80ab-5c00d47dfe1e",
                "port": "8289dc74-ac2c-4c2a-933c-23b7871f1583"
              }
            },
            {
              "source": {
                "block": "9fadb0bc-b949-4c36-b110-f4fea27399a4",
                "port": "out"
              },
              "target": {
                "block": "5336edde-64ac-419b-80ab-5c00d47dfe1e",
                "port": "4ad54541-ea73-4d74-a0c2-279bba2805ee"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 114,
            "y": 31.5
          },
          "zoom": 1
        }
      }
    },
    "c470db2f0c1f54b43f48f00c2df7e5077096f8e1": {
      "package": {
        "name": "Biestable-D-ena",
        "version": "0.1",
        "description": "Biestable tipo D con entrada de enable, inicializado al parámetro INI",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2263.799%22%20height=%2257.366%22%20viewBox=%220%200%2059.811602%2053.780232%22%3E%3Cg%20transform=%22translate(-310.54%20-373.968)%22%3E%3Cpath%20d=%22M353.401%20407.803l3.157%2019.445%203.914-19.445%22%20fill=%22#ccc%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22314.415%22%20y=%22396.883%22%20font-weight=%22400%22%20font-size=%2227.335%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22314.415%22%20y=%22396.883%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ED%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22313.546%22%20y=%22419.144%22%20font-weight=%22400%22%20font-size=%2216.132%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%22313.546%22%20y=%22419.144%22%3EIni%3C/tspan%3E%3C/text%3E%3Crect%20width=%2223.595%22%20height=%2221.484%22%20x=%22311.539%22%20y=%22402.712%22%20ry=%223.545%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M351.238%20398.03l1.658-19.774h-6.818v-3.788h22.097v3.788h-6.44l1.196%2019.953s5.208.866%206.428%204.494c1.221%203.628-.254%205.053.105%205.104l-25.022-.03s-.566-4.234%201.398-6.377c1.965-2.142%205.398-3.37%205.398-3.37z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "4ad54541-ea73-4d74-a0c2-279bba2805ee",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 48,
                "y": -16
              }
            },
            {
              "id": "8289dc74-ac2c-4c2a-933c-23b7871f1583",
              "type": "basic.input",
              "data": {
                "name": "d",
                "clock": false
              },
              "position": {
                "x": 56,
                "y": 80
              }
            },
            {
              "id": "68f5af5c-538b-451c-91cd-8f0390debe3f",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 680,
                "y": 144
              }
            },
            {
              "id": "2bc65517-fd0f-42c1-958e-18c130df2aea",
              "type": "basic.input",
              "data": {
                "name": "en",
                "clock": false
              },
              "position": {
                "x": 56,
                "y": 192
              }
            },
            {
              "id": "2e6e4dda-09c7-47b3-8d71-9bd7075f7c93",
              "type": "basic.constant",
              "data": {
                "name": "INI",
                "value": "0",
                "local": false
              },
              "position": {
                "x": 424,
                "y": 24
              }
            },
            {
              "id": "8705f04b-cc5f-46c2-a94d-d980250389ce",
              "type": "77050b67dd20f43a4ec05761504d4ca810ed47c0",
              "position": {
                "x": 424,
                "y": 144
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "6871616a-c18c-45fa-8701-3ed4dd5c1f34",
              "type": "a27ebf3edfd3e3cb5cb8b8f4632c3511b398a848",
              "position": {
                "x": 264,
                "y": 144
              },
              "size": {
                "width": 96,
                "height": 96
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "2e6e4dda-09c7-47b3-8d71-9bd7075f7c93",
                "port": "constant-out"
              },
              "target": {
                "block": "8705f04b-cc5f-46c2-a94d-d980250389ce",
                "port": "bfd12554-1a25-4ee2-8ab9-eeefad56595e"
              }
            },
            {
              "source": {
                "block": "8705f04b-cc5f-46c2-a94d-d980250389ce",
                "port": "ffdd9aa2-aea3-4aa9-8431-80e799226774"
              },
              "target": {
                "block": "68f5af5c-538b-451c-91cd-8f0390debe3f",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "4ad54541-ea73-4d74-a0c2-279bba2805ee",
                "port": "out"
              },
              "target": {
                "block": "8705f04b-cc5f-46c2-a94d-d980250389ce",
                "port": "6855f64f-fa1c-4371-b2e1-a98970674a96"
              }
            },
            {
              "source": {
                "block": "6871616a-c18c-45fa-8701-3ed4dd5c1f34",
                "port": "317c458f-c7bb-49b3-8c4a-58fb0e649e05"
              },
              "target": {
                "block": "8705f04b-cc5f-46c2-a94d-d980250389ce",
                "port": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2"
              }
            },
            {
              "source": {
                "block": "8289dc74-ac2c-4c2a-933c-23b7871f1583",
                "port": "out"
              },
              "target": {
                "block": "6871616a-c18c-45fa-8701-3ed4dd5c1f34",
                "port": "64c9e1b6-08d3-4582-bc94-1cd9136e5781"
              }
            },
            {
              "source": {
                "block": "2bc65517-fd0f-42c1-958e-18c130df2aea",
                "port": "out"
              },
              "target": {
                "block": "6871616a-c18c-45fa-8701-3ed4dd5c1f34",
                "port": "c7a2cab0-edf0-4ba2-915f-e24d9cad3cfc"
              }
            },
            {
              "source": {
                "block": "8705f04b-cc5f-46c2-a94d-d980250389ce",
                "port": "ffdd9aa2-aea3-4aa9-8431-80e799226774"
              },
              "target": {
                "block": "6871616a-c18c-45fa-8701-3ed4dd5c1f34",
                "port": "ccf5c727-66c5-46d2-a7a7-6d1754e0fe14"
              },
              "vertices": [
                {
                  "x": 552,
                  "y": 312
                },
                {
                  "x": 224,
                  "y": 312
                }
              ]
            }
          ]
        },
        "state": {
          "pan": {
            "x": 38,
            "y": 126.5668
          },
          "zoom": 1
        }
      }
    },
    "77050b67dd20f43a4ec05761504d4ca810ed47c0": {
      "package": {
        "name": "Flip-flop D",
        "version": "1.0.0",
        "description": "Biestable D con inicialización paramétrica",
        "author": "Carlos Diaz",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2263.799%22%20height=%2257.366%22%20viewBox=%220%200%2059.811602%2053.780232%22%3E%3Cg%20transform=%22translate(-310.54%20-373.968)%22%3E%3Cpath%20d=%22M353.401%20407.803l3.157%2019.445%203.914-19.445%22%20fill=%22#ccc%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22314.415%22%20y=%22396.883%22%20font-weight=%22400%22%20font-size=%2227.335%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22314.415%22%20y=%22396.883%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ED%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22313.546%22%20y=%22419.144%22%20font-weight=%22400%22%20font-size=%2216.132%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%22313.546%22%20y=%22419.144%22%3EIni%3C/tspan%3E%3C/text%3E%3Crect%20width=%2223.595%22%20height=%2221.484%22%20x=%22311.539%22%20y=%22402.712%22%20ry=%223.545%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M351.238%20398.03l1.658-19.774h-6.818v-3.788h22.097v3.788h-6.44l1.196%2019.953s5.208.866%206.428%204.494c1.221%203.628-.254%205.053.105%205.104l-25.022-.03s-.566-4.234%201.398-6.377c1.965-2.142%205.398-3.37%205.398-3.37z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "6855f64f-fa1c-4371-b2e1-a98970674a96",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 280,
                "y": 144
              }
            },
            {
              "id": "ffdd9aa2-aea3-4aa9-8431-80e799226774",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 712,
                "y": 184
              }
            },
            {
              "id": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 280,
                "y": 232
              }
            },
            {
              "id": "bfd12554-1a25-4ee2-8ab9-eeefad56595e",
              "type": "basic.constant",
              "data": {
                "name": "DINI",
                "value": "0",
                "local": false
              },
              "position": {
                "x": 496,
                "y": 16
              }
            },
            {
              "id": "e5222a6e-4717-4f08-99d7-7cde897060ca",
              "type": "basic.code",
              "data": {
                "code": "// D flip-flop\n// parameter DINI = 0;\n\nreg q = DINI;\n\nalways @(posedge clk)\n  q <= d;\n  \n\n",
                "params": [
                  {
                    "name": "DINI"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "d"
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
                "x": 432,
                "y": 128
              },
              "size": {
                "width": 224,
                "height": 176
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2",
                "port": "out"
              },
              "target": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "d"
              }
            },
            {
              "source": {
                "block": "6855f64f-fa1c-4371-b2e1-a98970674a96",
                "port": "out"
              },
              "target": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "q"
              },
              "target": {
                "block": "ffdd9aa2-aea3-4aa9-8431-80e799226774",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "bfd12554-1a25-4ee2-8ab9-eeefad56595e",
                "port": "constant-out"
              },
              "target": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "DINI"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": -146,
            "y": 55.5
          },
          "zoom": 1
        }
      }
    },
    "d3ec3e54382a180944492da9d34569a122cba71c": {
      "package": {
        "name": "Pulsador-P",
        "version": "0.0.1",
        "description": "Generacion de pulsos de 1 periodo con un pulsador",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22134.079%22%20height=%2241.551%22%20viewBox=%220%200%20125.6999%2038.953771%22%3E%3Cpath%20d=%22M1.426%2031.653h24.485M31.776%2031.477a6.088%206.263%200%200%201-6.262%206.068%206.088%206.263%200%200%201-5.908-6.432%206.088%206.263%200%200%201%206.242-6.089%206.088%206.263%200%200%201%205.93%206.412M86.113%2031.653H60.62%22%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%222.813%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22bevel%22/%3E%3Crect%20width=%2245.909%22%20height=%227.092%22%20x=%2221.278%22%20y=%227.812%22%20ry=%220%22%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%222.813%22%20stroke-linecap=%22round%22/%3E%3Cpath%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%222.813%22%20stroke-linecap=%22round%22%20d=%22M35.154%201.406h18.522v4.536H35.154z%22/%3E%3Cpath%20d=%22M68.568%2031.477a6.088%206.263%200%200%201-6.262%206.068%206.088%206.263%200%200%201-5.908-6.432%206.088%206.263%200%200%201%206.242-6.089%206.088%206.263%200%200%201%205.929%206.412%22%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%222.813%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22bevel%22/%3E%3Cpath%20d=%22M97.424%2030.703h10.205V3.712h7.952v27.032h8.693%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%222.813%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22bevel%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "cfa82d73-d1ad-4796-8096-c5d7ead79ffc",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 96,
                "y": 136
              }
            },
            {
              "id": "33da1921-0009-451c-a056-a22e771767c3",
              "type": "29c50d941d483951811f3b7835214753fda61a0d",
              "position": {
                "x": 456,
                "y": 208
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "ca09a156-6c00-44f0-9f05-b6f883094cc8",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 608,
                "y": 208
              }
            },
            {
              "id": "2504129b-94b4-4e52-ab62-461f8ff11493",
              "type": "10d93310e23daeea6814d2c785127dcb17e7527b",
              "position": {
                "x": 296,
                "y": 224
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "30bde887-830b-4c29-aa25-b5f457ef70e4",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 96,
                "y": 240
              }
            },
            {
              "id": "e1ebf38b-3153-4eaf-a4fa-ec2495a7baaf",
              "type": "basic.info",
              "data": {
                "info": "Procesamiento para el pulsador:\n\n1) Eliminar rebotes\n2) Generar un pulso de 1 periodo de reloj",
                "readonly": false
              },
              "position": {
                "x": 136,
                "y": 328
              },
              "size": {
                "width": 496,
                "height": 128
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "2504129b-94b4-4e52-ab62-461f8ff11493",
                "port": "22ff3fa1-943b-4d1a-bd89-36e1c054d077"
              },
              "target": {
                "block": "33da1921-0009-451c-a056-a22e771767c3",
                "port": "cc75f6b5-2f93-4c56-b3cf-f20192fc91de"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "33da1921-0009-451c-a056-a22e771767c3",
                "port": "45e071c8-0736-4cc7-a166-d26e77775d33"
              },
              "target": {
                "block": "ca09a156-6c00-44f0-9f05-b6f883094cc8",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "30bde887-830b-4c29-aa25-b5f457ef70e4",
                "port": "out"
              },
              "target": {
                "block": "2504129b-94b4-4e52-ab62-461f8ff11493",
                "port": "c9e1af2a-6f09-4cf6-a5b3-fdf7ec2c6530"
              }
            },
            {
              "source": {
                "block": "cfa82d73-d1ad-4796-8096-c5d7ead79ffc",
                "port": "out"
              },
              "target": {
                "block": "2504129b-94b4-4e52-ab62-461f8ff11493",
                "port": "4bf41c17-a2da-4140-95f7-2a80d51b1e1a"
              }
            },
            {
              "source": {
                "block": "cfa82d73-d1ad-4796-8096-c5d7ead79ffc",
                "port": "out"
              },
              "target": {
                "block": "33da1921-0009-451c-a056-a22e771767c3",
                "port": "e03aebf8-d678-4fb6-85d0-f432d1088579"
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
    },
    "29c50d941d483951811f3b7835214753fda61a0d": {
      "package": {
        "name": "Pulso",
        "version": "0.0.1",
        "description": "Generar un pulso de reloj al recibir un flanco por la entrada",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22113.803%22%20height=%2253.144%22%20viewBox=%220%200%20106.69049%2049.822719%22%3E%3Cdefs%3E%3Cmarker%20orient=%22auto%22%20id=%22a%22%20overflow=%22visible%22%3E%3Cpath%20d=%22M2.308%200l-3.46%202v-4l3.46%202z%22%20fill=%22red%22%20fill-rule=%22evenodd%22%20stroke=%22red%22%20stroke-width=%22.4pt%22/%3E%3C/marker%3E%3C/defs%3E%3Cpath%20d=%22M.95%2048.845H23.77V.938h23.513%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222.813%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22bevel%22/%3E%3Cpath%20d=%22M51.854%2025.07H67.05%22%20fill=%22none%22%20stroke=%22red%22%20stroke-width=%222.813%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22bevel%22%20marker-end=%22url(#a)%22/%3E%3Cpath%20d=%22M78.89%2048.845h10.205V.938h7.952v47.947h8.693%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222.813%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22bevel%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "e03aebf8-d678-4fb6-85d0-f432d1088579",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 112,
                "y": 104
              }
            },
            {
              "id": "f51a344a-ed04-44b2-b8f7-4757581a9c41",
              "type": "8c5d8b238a335255daad3b21ec5bab77132f809e",
              "position": {
                "x": 272,
                "y": 184
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "82344de0-7311-446c-a2b4-1255b8b77440",
              "type": "7f3e9f0a05c929c3761852e259027fbe8e977795",
              "position": {
                "x": 416,
                "y": 184
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "cc75f6b5-2f93-4c56-b3cf-f20192fc91de",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 112,
                "y": 200
              }
            },
            {
              "id": "671d911c-fa66-434c-a595-1851c64fa807",
              "type": "b8ea79bbff55bda252ba410f1d9d84175e318b5b",
              "position": {
                "x": 576,
                "y": 200
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "45e071c8-0736-4cc7-a166-d26e77775d33",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 744,
                "y": 200
              }
            },
            {
              "id": "9c7910b2-8c3f-4ba3-b07f-49ded7300c3d",
              "type": "basic.info",
              "data": {
                "info": "Generacion de un pulso de un periodo de reloj (clk) cuando se recibe un\nflanco de subida por la entrada",
                "readonly": false
              },
              "position": {
                "x": 104,
                "y": 336
              },
              "size": {
                "width": 640,
                "height": 96
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "f51a344a-ed04-44b2-b8f7-4757581a9c41",
                "port": "f164a06d-b8e3-480d-b351-5d7d1e7ae3a2"
              },
              "target": {
                "block": "82344de0-7311-446c-a2b4-1255b8b77440",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "82344de0-7311-446c-a2b4-1255b8b77440",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "671d911c-fa66-434c-a595-1851c64fa807",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "e03aebf8-d678-4fb6-85d0-f432d1088579",
                "port": "out"
              },
              "target": {
                "block": "f51a344a-ed04-44b2-b8f7-4757581a9c41",
                "port": "e85c1424-78de-4f24-a4bc-6a2901b26148"
              }
            },
            {
              "source": {
                "block": "cc75f6b5-2f93-4c56-b3cf-f20192fc91de",
                "port": "out"
              },
              "target": {
                "block": "f51a344a-ed04-44b2-b8f7-4757581a9c41",
                "port": "78ec5b41-e94f-4892-a7c5-42f2b4970c1b"
              }
            },
            {
              "source": {
                "block": "671d911c-fa66-434c-a595-1851c64fa807",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "45e071c8-0736-4cc7-a166-d26e77775d33",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "cc75f6b5-2f93-4c56-b3cf-f20192fc91de",
                "port": "out"
              },
              "target": {
                "block": "671d911c-fa66-434c-a595-1851c64fa807",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              },
              "vertices": [
                {
                  "x": 248,
                  "y": 280
                }
              ]
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
    },
    "8c5d8b238a335255daad3b21ec5bab77132f809e": {
      "package": {
        "name": "Biestable-D-0",
        "version": "0.0.1",
        "description": "Biestable D inicializado a 0",
        "author": "Juan Gonzalez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2263.799%22%20height=%2257.366%22%20viewBox=%220%200%2059.811602%2053.780232%22%3E%3Cg%20transform=%22translate(-310.54%20-373.968)%22%3E%3Cpath%20d=%22M353.401%20407.803l3.157%2019.445%203.914-19.445%22%20fill=%22#ccc%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22310.844%22%20y=%22395.812%22%20font-weight=%22400%22%20font-size=%2227.335%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22310.844%22%20y=%22395.812%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ED%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22316.916%22%20y=%22420.476%22%20font-weight=%22400%22%20font-size=%2220%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%22316.916%22%20y=%22420.476%22%3E0%3C/tspan%3E%3C/text%3E%3Crect%20width=%2223.595%22%20height=%2221.484%22%20x=%22311.539%22%20y=%22402.712%22%20ry=%223.545%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M351.238%20398.03l1.658-19.774h-6.818v-3.788h22.097v3.788h-6.44l1.196%2019.953s5.208.866%206.428%204.494c1.221%203.628-.254%205.053.105%205.104l-25.022-.03s-.566-4.234%201.398-6.377c1.965-2.142%205.398-3.37%205.398-3.37z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "e85c1424-78de-4f24-a4bc-6a2901b26148",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 120,
                "y": 112
              }
            },
            {
              "id": "d6f5e9ba-13ad-47ee-801d-d81ca2710a06",
              "type": "537d57a7a35f82f700a50ea0d6285c16647d7c1d",
              "position": {
                "x": 384,
                "y": 184
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "f164a06d-b8e3-480d-b351-5d7d1e7ae3a2",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 608,
                "y": 184
              }
            },
            {
              "id": "78ec5b41-e94f-4892-a7c5-42f2b4970c1b",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 120,
                "y": 200
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "d6f5e9ba-13ad-47ee-801d-d81ca2710a06",
                "port": "f164a06d-b8e3-480d-b351-5d7d1e7ae3a2"
              },
              "target": {
                "block": "f164a06d-b8e3-480d-b351-5d7d1e7ae3a2",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "78ec5b41-e94f-4892-a7c5-42f2b4970c1b",
                "port": "out"
              },
              "target": {
                "block": "d6f5e9ba-13ad-47ee-801d-d81ca2710a06",
                "port": "78ec5b41-e94f-4892-a7c5-42f2b4970c1b"
              }
            },
            {
              "source": {
                "block": "e85c1424-78de-4f24-a4bc-6a2901b26148",
                "port": "out"
              },
              "target": {
                "block": "d6f5e9ba-13ad-47ee-801d-d81ca2710a06",
                "port": "e85c1424-78de-4f24-a4bc-6a2901b26148"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 38,
            "y": 95.5
          },
          "zoom": 1
        }
      }
    },
    "537d57a7a35f82f700a50ea0d6285c16647d7c1d": {
      "package": {
        "name": "Biestable-D-0",
        "version": "0.0.1",
        "description": "Biestable D inicializado a 0",
        "author": "Juan Gonzalez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2287.998%22%20height=%2260.81%22%20viewBox=%220%200%2082.498336%2057.009284%22%3E%3Cg%20transform=%22translate(-290.853%20-371.476)%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22287.101%22%20y=%22427.822%22%20font-weight=%22400%22%20font-size=%2240.87%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22287.101%22%20y=%22427.822%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ED%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22289.914%22%20y=%22386.672%22%20font-weight=%22400%22%20font-size=%2220%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22289.914%22%20y=%22386.672%22%3EFlip-Flop%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22346.916%22%20y=%22420.476%22%20font-weight=%22400%22%20font-size=%2220%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%22346.916%22%20y=%22420.476%22%3E0%3C/tspan%3E%3C/text%3E%3Crect%20width=%2237.881%22%20height=%2227.274%22%20x=%22334.396%22%20y=%22400.212%22%20ry=%224.5%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "1efbaf77-17bd-4606-966f-21008e0a1556",
              "type": "basic.constant",
              "data": {
                "name": "INI",
                "value": "0",
                "local": true
              },
              "position": {
                "x": 376,
                "y": 72
              }
            },
            {
              "id": "e85c1424-78de-4f24-a4bc-6a2901b26148",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 120,
                "y": 112
              }
            },
            {
              "id": "dca68ad6-8ef1-4bf1-b17b-ec58e5fe751d",
              "type": "7bd2552a05ad36e0726c3b65301c8a223561ad9f",
              "position": {
                "x": 376,
                "y": 184
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "f164a06d-b8e3-480d-b351-5d7d1e7ae3a2",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 608,
                "y": 184
              }
            },
            {
              "id": "78ec5b41-e94f-4892-a7c5-42f2b4970c1b",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 120,
                "y": 200
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "1efbaf77-17bd-4606-966f-21008e0a1556",
                "port": "constant-out"
              },
              "target": {
                "block": "dca68ad6-8ef1-4bf1-b17b-ec58e5fe751d",
                "port": "bfd12554-1a25-4ee2-8ab9-eeefad56595e"
              }
            },
            {
              "source": {
                "block": "e85c1424-78de-4f24-a4bc-6a2901b26148",
                "port": "out"
              },
              "target": {
                "block": "dca68ad6-8ef1-4bf1-b17b-ec58e5fe751d",
                "port": "6855f64f-fa1c-4371-b2e1-a98970674a96"
              }
            },
            {
              "source": {
                "block": "78ec5b41-e94f-4892-a7c5-42f2b4970c1b",
                "port": "out"
              },
              "target": {
                "block": "dca68ad6-8ef1-4bf1-b17b-ec58e5fe751d",
                "port": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2"
              }
            },
            {
              "source": {
                "block": "dca68ad6-8ef1-4bf1-b17b-ec58e5fe751d",
                "port": "ffdd9aa2-aea3-4aa9-8431-80e799226774"
              },
              "target": {
                "block": "f164a06d-b8e3-480d-b351-5d7d1e7ae3a2",
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
    },
    "7bd2552a05ad36e0726c3b65301c8a223561ad9f": {
      "package": {
        "name": "Flip-flop D",
        "version": "1.0.0",
        "description": "Delay flip-flop",
        "author": "Carlos Diaz",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2287.998%22%20height=%2260.81%22%20viewBox=%220%200%2082.498336%2057.009284%22%3E%3Cg%20transform=%22translate(-290.853%20-371.476)%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22287.101%22%20y=%22427.822%22%20font-weight=%22400%22%20font-size=%2240.87%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22287.101%22%20y=%22427.822%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ED%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22289.914%22%20y=%22386.672%22%20font-weight=%22400%22%20font-size=%2220%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22289.914%22%20y=%22386.672%22%3EFlip-Flop%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22341.738%22%20y=%22420.476%22%20font-weight=%22400%22%20font-size=%2220%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%22341.738%22%20y=%22420.476%22%3EIni%3C/tspan%3E%3C/text%3E%3Crect%20width=%2237.881%22%20height=%2227.274%22%20x=%22334.396%22%20y=%22400.212%22%20ry=%224.5%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "bfd12554-1a25-4ee2-8ab9-eeefad56595e",
              "type": "basic.constant",
              "data": {
                "name": "DINI",
                "value": "0",
                "local": false
              },
              "position": {
                "x": 568,
                "y": 16
              }
            },
            {
              "id": "e5222a6e-4717-4f08-99d7-7cde897060ca",
              "type": "basic.code",
              "data": {
                "code": "// D flip-flop\n// parameter DINI = 0;\n\nreg q = DINI;\n\nalways @(posedge clk)\nbegin\n  q <= d;\nend\n\n",
                "params": [
                  {
                    "name": "DINI"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "d"
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
                "x": 432,
                "y": 128
              },
              "size": {
                "width": 368,
                "height": 272
              }
            },
            {
              "id": "6855f64f-fa1c-4371-b2e1-a98970674a96",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 232,
                "y": 168
              }
            },
            {
              "id": "ffdd9aa2-aea3-4aa9-8431-80e799226774",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 864,
                "y": 232
              }
            },
            {
              "id": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 232,
                "y": 304
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2",
                "port": "out"
              },
              "target": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "d"
              }
            },
            {
              "source": {
                "block": "6855f64f-fa1c-4371-b2e1-a98970674a96",
                "port": "out"
              },
              "target": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "q"
              },
              "target": {
                "block": "ffdd9aa2-aea3-4aa9-8431-80e799226774",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "bfd12554-1a25-4ee2-8ab9-eeefad56595e",
                "port": "constant-out"
              },
              "target": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "DINI"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": -146,
            "y": -0.5
          },
          "zoom": 1
        }
      }
    },
    "7f3e9f0a05c929c3761852e259027fbe8e977795": {
      "package": {
        "name": "NOT",
        "version": "1.0.3",
        "description": "Puerta NOT",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22111.588%22%20height=%2268.24%22%20version=%221%22%3E%3Cpath%20d=%22M24.372%201.5l57.29%2032.619-57.29%2032.62V1.5z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linejoin=%22round%22/%3E%3Cellipse%20cx=%2291.101%22%20cy=%2234.017%22%20rx=%227.572%22%20ry=%227.677%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M1.014%2034.281h23.1m75.26%200h11.2%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2228.438%22%20y=%2239.46%22%20font-weight=%22400%22%20font-size=%2217.5%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%2228.438%22%20y=%2239.46%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ENot%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
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
            },
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
        },
        "state": {
          "pan": {
            "x": 0,
            "y": 0
          },
          "zoom": 1
        }
      }
    },
    "b8ea79bbff55bda252ba410f1d9d84175e318b5b": {
      "package": {
        "name": "AND",
        "version": "1.0.1",
        "description": "Puerta AND",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%20100.89405%2059.082348%22%20width=%22100.895%22%20height=%2259.082%22%3E%3Cpath%20d=%22M-199.56%20458.482h-29.045V402.4h29.045s26.365%202.6%2026.365%2027.715c0%2025.113-26.365%2028.367-26.365%2028.367z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M-250.986%20414.96h20.255m-20.255%2029.887h20.255m58.66-15.082h19.951%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-224.207%22%20y=%22435.736%22%20font-weight=%22400%22%20font-size=%2217.5%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%22-224.207%22%20y=%22435.736%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EAND%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
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
            },
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
            }
          ],
          "wires": [
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
            },
            {
              "source": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "c"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
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
    },
    "10d93310e23daeea6814d2c785127dcb17e7527b": {
      "package": {
        "name": "Debouncer",
        "version": "1.0.0",
        "description": "Remove the rebound on a mechanical switch",
        "author": "Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%2090%2040%22%3E%3Cpath%20d=%22M-251.547%20436.672h22.802v-30.353h5.862v30.353h5.259v-30.353h3.447v30.353h2.984v-30.353h3.506v30.523h6.406V405.77h38.868%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%221.4%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M-232.57%20403.877l26.946%2032.391M-205.624%20403.877l-26.946%2032.391%22%20fill=%22none%22%20stroke=%22red%22%20stroke-width=%223%22%20stroke-linecap=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "92490e7e-c3ba-4e9c-a917-2a771d99f1ef",
              "type": "basic.code",
              "data": {
                "code": "//-- Debouncer Circuit\n//-- It produces a stable output when the\n//-- input signal is bouncing\n\nreg btn_prev = 0;\nreg btn_out_r = 0;\n\nreg [16:0] counter = 0;\n\n\nalways @(posedge clk) begin\n\n  //-- If btn_prev and btn_in are differents\n  if (btn_prev ^ in == 1'b1) begin\n    \n      //-- Reset the counter\n      counter <= 0;\n      \n      //-- Capture the button status\n      btn_prev <= in;\n  end\n    \n  //-- If no timeout, increase the counter\n  else if (counter[16] == 1'b0)\n      counter <= counter + 1;\n      \n  else\n    //-- Set the output to the stable value\n    btn_out_r <= btn_prev;\n\nend\n\nassign out = btn_out_r;\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "in"
                    }
                  ],
                  "out": [
                    {
                      "name": "out"
                    }
                  ]
                }
              },
              "position": {
                "x": 264,
                "y": 112
              },
              "size": {
                "width": 384,
                "height": 256
              }
            },
            {
              "id": "4bf41c17-a2da-4140-95f7-2a80d51b1e1a",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 48,
                "y": 144
              }
            },
            {
              "id": "22ff3fa1-943b-4d1a-bd89-36e1c054d077",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 768,
                "y": 208
              }
            },
            {
              "id": "c9e1af2a-6f09-4cf6-a5b3-fdf7ec2c6530",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 48,
                "y": 272
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "92490e7e-c3ba-4e9c-a917-2a771d99f1ef",
                "port": "out"
              },
              "target": {
                "block": "22ff3fa1-943b-4d1a-bd89-36e1c054d077",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "4bf41c17-a2da-4140-95f7-2a80d51b1e1a",
                "port": "out"
              },
              "target": {
                "block": "92490e7e-c3ba-4e9c-a917-2a771d99f1ef",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "c9e1af2a-6f09-4cf6-a5b3-fdf7ec2c6530",
                "port": "out"
              },
              "target": {
                "block": "92490e7e-c3ba-4e9c-a917-2a771d99f1ef",
                "port": "in"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 0,
            "y": -1
          },
          "zoom": 1
        }
      }
    },
    "4089617d41c79e50c10f89ecab88177e342326a4": {
      "package": {
        "name": "AA_8bits",
        "version": "0.0.1",
        "description": "Valor constante 0xAA para bus de 8 bits",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2219.555%22%20height=%2224.647%22%20viewBox=%220%200%2018.333077%2023.106531%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-1.462%22%20y=%2222.674%22%20font-weight=%22400%22%20font-size=%2230.55%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-1.462%22%20y=%2222.674%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22green%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M6.45%2020.917l5.496-17.753%22%20fill=%22green%22%20stroke=%22green%22%20stroke-width=%222.813%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "32038fb9-c309-483d-a68c-de6fd7ab6a0f",
              "type": "basic.output",
              "data": {
                "name": "K",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 960,
                "y": 248
              }
            },
            {
              "id": "ad7918eb-22dd-4b6c-949f-e428f5a55530",
              "type": "basic.constant",
              "data": {
                "name": "V",
                "value": "8'h00",
                "local": true
              },
              "position": {
                "x": 712,
                "y": 128
              }
            },
            {
              "id": "3349a16e-7147-460c-b446-741cb814f12a",
              "type": "36d45a23315e6b3fcb068d28cf621902ea41ad80",
              "position": {
                "x": 712,
                "y": 248
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
                "block": "3349a16e-7147-460c-b446-741cb814f12a",
                "port": "32038fb9-c309-483d-a68c-de6fd7ab6a0f"
              },
              "target": {
                "block": "32038fb9-c309-483d-a68c-de6fd7ab6a0f",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "ad7918eb-22dd-4b6c-949f-e428f5a55530",
                "port": "constant-out"
              },
              "target": {
                "block": "3349a16e-7147-460c-b446-741cb814f12a",
                "port": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": -434,
            "y": 43.5
          },
          "zoom": 1
        }
      }
    },
    "36d45a23315e6b3fcb068d28cf621902ea41ad80": {
      "package": {
        "name": "AA_8bits",
        "version": "0.0.1",
        "description": "Valor constante 0xAA para bus de 8 bits",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2247.997%22%20height=%2230.109%22%20viewBox=%220%200%2044.997735%2028.227376%22%3E%3Ctext%20style=%22line-height:125%25;-inkscape-font-specification:sans-serif%22%20x=%22-1.706%22%20y=%2213.545%22%20font-weight=%22400%22%20font-size=%2218.58%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-1.706%22%20y=%2213.545%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22green%22%3ENum%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%223.746%22%20y=%2228.044%22%20font-weight=%22400%22%20font-size=%2212.972%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%223.746%22%20y=%2228.044%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22green%22%3E8%20bits%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "32038fb9-c309-483d-a68c-de6fd7ab6a0f",
              "type": "basic.output",
              "data": {
                "name": "K",
                "range": "[7:0]",
                "size": 8
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
                "name": "V",
                "value": "8'h00",
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
                "code": "assign k = V;",
                "params": [
                  {
                    "name": "V"
                  }
                ],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "k",
                      "range": "[7:0]",
                      "size": 8
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
                "block": "32038fb9-c309-483d-a68c-de6fd7ab6a0f",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4",
                "port": "constant-out"
              },
              "target": {
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "V"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": -414,
            "y": 43.5
          },
          "zoom": 1
        }
      }
    },
    "48f62bee99783bae04f6c9e77c55077373f1cb8e": {
      "package": {
        "name": "eq-2bits",
        "version": "0.1",
        "description": "Comparador de igualdad para números de 2 bit",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2297.399%22%20height=%2252.574%22%20viewBox=%220%200%2091.311418%2049.288226%22%3E%3Cg%20font-weight=%22400%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22178.324%22%20y=%22457.047%22%20font-size=%2296.3%22%20fill=%22#00f%22%20transform=%22translate(-173.548%20-402.077)%22%3E%3Ctspan%20x=%22178.324%22%20y=%22457.047%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3E=%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22144.689%22%20y=%22383.85%22%20font-size=%2222.158%22%20transform=%22translate(-173.548%20-402.077)%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "42cfd937-c27f-4803-a2e7-8fd3e4f43569",
              "type": "basic.input",
              "data": {
                "name": "a",
                "range": "[1:0]",
                "clock": false,
                "size": 2
              },
              "position": {
                "x": 104,
                "y": 128
              }
            },
            {
              "id": "90ec9649-277b-414c-8c3b-4472b3a5cc84",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 808,
                "y": 176
              }
            },
            {
              "id": "baebf97a-beb2-460f-b9de-0e57ba29333c",
              "type": "basic.input",
              "data": {
                "name": "b",
                "range": "[1:0]",
                "clock": false,
                "size": 2
              },
              "position": {
                "x": 104,
                "y": 272
              }
            },
            {
              "id": "64e2dca7-1e17-4747-9f0a-4e018c1b2e46",
              "type": "fb8c65c33ee8e003ec471e667a51075bfff63dfc",
              "position": {
                "x": 496,
                "y": 128
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "bfd61700-ebb0-4bc2-9c20-2fb59abb34de",
              "type": "fb8c65c33ee8e003ec471e667a51075bfff63dfc",
              "position": {
                "x": 496,
                "y": 208
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "16f43921-543a-4e9c-b739-df51b1ea3572",
              "type": "91abf148146a61dd0ce91850f8b25b50d215342c",
              "position": {
                "x": 656,
                "y": 176
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "64863cc5-4644-4819-b043-e20d3c56325e",
              "type": "28a2819c8e523fd90c6dbecc0357b5dcfa64853b",
              "position": {
                "x": 264,
                "y": 128
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "1efb26f1-c4a4-4df4-a260-115bf288df08",
              "type": "28a2819c8e523fd90c6dbecc0357b5dcfa64853b",
              "position": {
                "x": 264,
                "y": 272
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
                "block": "16f43921-543a-4e9c-b739-df51b1ea3572",
                "port": "e23ec09c-c612-4db0-ae91-83a6b9f91044"
              },
              "target": {
                "block": "90ec9649-277b-414c-8c3b-4472b3a5cc84",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "64e2dca7-1e17-4747-9f0a-4e018c1b2e46",
                "port": "119bd82d-79b7-47b3-8c82-773fb6a29468"
              },
              "target": {
                "block": "16f43921-543a-4e9c-b739-df51b1ea3572",
                "port": "4f1a05d0-b11c-490a-8792-876ebf3a8f05"
              }
            },
            {
              "source": {
                "block": "bfd61700-ebb0-4bc2-9c20-2fb59abb34de",
                "port": "119bd82d-79b7-47b3-8c82-773fb6a29468"
              },
              "target": {
                "block": "16f43921-543a-4e9c-b739-df51b1ea3572",
                "port": "60ce79f4-7963-45bf-9a9c-06c84ec9839c"
              }
            },
            {
              "source": {
                "block": "42cfd937-c27f-4803-a2e7-8fd3e4f43569",
                "port": "out"
              },
              "target": {
                "block": "64863cc5-4644-4819-b043-e20d3c56325e",
                "port": "63197b8b-eab7-4727-9143-f834175e4ed3"
              },
              "size": 2
            },
            {
              "source": {
                "block": "64863cc5-4644-4819-b043-e20d3c56325e",
                "port": "9c7360a8-890e-4c3d-857b-64bae61a01c8"
              },
              "target": {
                "block": "64e2dca7-1e17-4747-9f0a-4e018c1b2e46",
                "port": "a5ba1821-4cba-43cd-a9c1-73fa9122fe14"
              }
            },
            {
              "source": {
                "block": "64863cc5-4644-4819-b043-e20d3c56325e",
                "port": "b1ca63ac-2667-4270-80cf-fe88c5950d13"
              },
              "target": {
                "block": "bfd61700-ebb0-4bc2-9c20-2fb59abb34de",
                "port": "a5ba1821-4cba-43cd-a9c1-73fa9122fe14"
              },
              "vertices": [
                {
                  "x": 408,
                  "y": 200
                }
              ]
            },
            {
              "source": {
                "block": "baebf97a-beb2-460f-b9de-0e57ba29333c",
                "port": "out"
              },
              "target": {
                "block": "1efb26f1-c4a4-4df4-a260-115bf288df08",
                "port": "63197b8b-eab7-4727-9143-f834175e4ed3"
              },
              "size": 2
            },
            {
              "source": {
                "block": "1efb26f1-c4a4-4df4-a260-115bf288df08",
                "port": "9c7360a8-890e-4c3d-857b-64bae61a01c8"
              },
              "target": {
                "block": "64e2dca7-1e17-4747-9f0a-4e018c1b2e46",
                "port": "b33db2f5-3613-4810-a791-4d3985d0dc34"
              },
              "vertices": [
                {
                  "x": 424,
                  "y": 216
                }
              ]
            },
            {
              "source": {
                "block": "1efb26f1-c4a4-4df4-a260-115bf288df08",
                "port": "b1ca63ac-2667-4270-80cf-fe88c5950d13"
              },
              "target": {
                "block": "bfd61700-ebb0-4bc2-9c20-2fb59abb34de",
                "port": "b33db2f5-3613-4810-a791-4d3985d0dc34"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": -54,
            "y": 33
          },
          "zoom": 1
        }
      }
    },
    "fb8c65c33ee8e003ec471e667a51075bfff63dfc": {
      "package": {
        "name": "eq-1bitt",
        "version": "0.1",
        "description": "Comparador de igualdad para números de 1 bit",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2297.399%22%20height=%2252.574%22%20viewBox=%220%200%2091.311418%2049.288226%22%3E%3Cg%20font-weight=%22400%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22178.324%22%20y=%22457.047%22%20font-size=%2296.3%22%20fill=%22#00f%22%20transform=%22translate(-173.548%20-402.077)%22%3E%3Ctspan%20x=%22178.324%22%20y=%22457.047%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3E=%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22144.689%22%20y=%22383.85%22%20font-size=%2222.158%22%20transform=%22translate(-173.548%20-402.077)%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "a5ba1821-4cba-43cd-a9c1-73fa9122fe14",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 152,
                "y": 136
              }
            },
            {
              "id": "119bd82d-79b7-47b3-8c82-773fb6a29468",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 640,
                "y": 176
              }
            },
            {
              "id": "b33db2f5-3613-4810-a791-4d3985d0dc34",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 152,
                "y": 216
              }
            },
            {
              "id": "fc9ee329-ea25-4731-913a-5cfd8cc3e198",
              "type": "3dfc1ef2102949d6a991347557b2aabcd87c3ca4",
              "position": {
                "x": 344,
                "y": 176
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "716acab9-1b77-4580-9172-f5e8de885be2",
              "type": "0ec0772bb73356cd1b754fe7d840a322387a9f3a",
              "position": {
                "x": 488,
                "y": 176
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
                "block": "a5ba1821-4cba-43cd-a9c1-73fa9122fe14",
                "port": "out"
              },
              "target": {
                "block": "fc9ee329-ea25-4731-913a-5cfd8cc3e198",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "b33db2f5-3613-4810-a791-4d3985d0dc34",
                "port": "out"
              },
              "target": {
                "block": "fc9ee329-ea25-4731-913a-5cfd8cc3e198",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            },
            {
              "source": {
                "block": "fc9ee329-ea25-4731-913a-5cfd8cc3e198",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "716acab9-1b77-4580-9172-f5e8de885be2",
                "port": "1a93168d-3764-4337-8a5a-2f4fc62a1ecc"
              }
            },
            {
              "source": {
                "block": "716acab9-1b77-4580-9172-f5e8de885be2",
                "port": "40d86778-65d1-4ba9-beec-fc5be175aaed"
              },
              "target": {
                "block": "119bd82d-79b7-47b3-8c82-773fb6a29468",
                "port": "in"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 6,
            "y": 55.5
          },
          "zoom": 1
        }
      }
    },
    "bf59ba7920e78b92cf5f2bf60554c5e207aad678": {
      "package": {
        "name": "Valor_1_2bits",
        "version": "0.0.1",
        "description": "Valor constante 1 para bus de 2 bits",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2217.264%22%20height=%2224.185%22%20viewBox=%220%200%2016.185019%2022.673936%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-2.417%22%20y=%2222.674%22%20font-weight=%22400%22%20font-size=%2230.55%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-2.417%22%20y=%2222.674%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22green%22%3E2%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "6a253ddf-22b2-43cd-ba6f-561bd1af6970",
              "type": "basic.output",
              "data": {
                "name": "K",
                "range": "[1:0]",
                "size": 2
              },
              "position": {
                "x": 928,
                "y": 256
              }
            },
            {
              "id": "ad7918eb-22dd-4b6c-949f-e428f5a55530",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "2'h2",
                "local": true
              },
              "position": {
                "x": 728,
                "y": 144
              }
            },
            {
              "id": "4058927d-10b8-458a-a92d-360f6a3ba08c",
              "type": "390387dcb48089fe189dc463ef12dd5587b6ed8f",
              "position": {
                "x": 728,
                "y": 256
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
                "block": "4058927d-10b8-458a-a92d-360f6a3ba08c",
                "port": "603ddbc9-28cf-4ecc-a0c6-a5a2ce3b0b26"
              },
              "target": {
                "block": "6a253ddf-22b2-43cd-ba6f-561bd1af6970",
                "port": "in"
              },
              "size": 2
            },
            {
              "source": {
                "block": "ad7918eb-22dd-4b6c-949f-e428f5a55530",
                "port": "constant-out"
              },
              "target": {
                "block": "4058927d-10b8-458a-a92d-360f6a3ba08c",
                "port": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": -426,
            "y": 31.5
          },
          "zoom": 1
        }
      }
    }
  }
}