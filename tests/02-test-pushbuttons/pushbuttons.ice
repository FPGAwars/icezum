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
        "id": "fa2bf947-32e6-4b3a-a39d-2981c71af2fa",
        "type": "basic.input",
        "data": {
          "label": "sw1",
          "pin": {
            "name": "SW1",
            "value": "10"
          }
        },
        "position": {
          "x": 32,
          "y": 32
        }
      },
      {
        "id": "994143ed-dcaa-409f-a859-cea874b8440e",
        "type": "basic.input",
        "data": {
          "label": "sw2",
          "pin": {
            "name": "SW2",
            "value": "11"
          }
        },
        "position": {
          "x": 32,
          "y": 112
        }
      },
      {
        "id": "2814982a-a629-433f-a5ac-e79e4d2967f6",
        "type": "basic.output",
        "data": {
          "label": "led0",
          "pin": {
            "name": "LED0",
            "value": "95"
          }
        },
        "position": {
          "x": 304,
          "y": 32
        }
      },
      {
        "id": "c8005be2-12c6-4efc-8f14-b8bf9e2ae1e2",
        "type": "basic.output",
        "data": {
          "label": "led1",
          "pin": {
            "name": "LED1",
            "value": "96"
          }
        },
        "position": {
          "x": 304,
          "y": 112
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
  "deps": {}
}