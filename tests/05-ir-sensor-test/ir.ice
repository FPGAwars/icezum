{
  "version": "1.1",
  "package": {
    "name": "ir",
    "version": "",
    "description": "ir",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "fa2bf947-32e6-4b3a-a39d-2981c71af2fa",
          "type": "basic.input",
          "data": {
            "name": "IR",
            "pins": [
              {
                "index": "0",
                "name": "D13",
                "value": "144"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 32,
            "y": 32
          }
        },
        {
          "id": "2814982a-a629-433f-a5ac-e79e4d2967f6",
          "type": "basic.output",
          "data": {
            "name": "LED",
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
            "x": 304,
            "y": 32
          }
        },
        {
          "id": "994143ed-dcaa-409f-a859-cea874b8440e",
          "type": "basic.input",
          "data": {
            "name": "IR",
            "pins": [
              {
                "index": "0",
                "name": "D12",
                "value": "143"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 32,
            "y": 112
          }
        },
        {
          "id": "c8005be2-12c6-4efc-8f14-b8bf9e2ae1e2",
          "type": "basic.output",
          "data": {
            "name": "LED",
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
            "x": 304,
            "y": 112
          }
        },
        {
          "id": "6974dbd7-a6e1-4200-8aa5-4d922a9636d6",
          "type": "basic.info",
          "data": {
            "info": "<B>IR sensor test</B>\n\nTwo IR sensors should be connect to inputs D13\nand D12. Their state is sent to LEDs 0 and 1",
            "readonly": true
          },
          "position": {
            "x": 24,
            "y": -88
          },
          "size": {
            "width": 384,
            "height": 96
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "fa2bf947-32e6-4b3a-a39d-2981c71af2fa",
            "port": "out"
          },
          "target": {
            "block": "2814982a-a629-433f-a5ac-e79e4d2967f6",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "994143ed-dcaa-409f-a859-cea874b8440e",
            "port": "out"
          },
          "target": {
            "block": "c8005be2-12c6-4efc-8f14-b8bf9e2ae1e2",
            "port": "in"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 246,
        "y": 209.5
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}