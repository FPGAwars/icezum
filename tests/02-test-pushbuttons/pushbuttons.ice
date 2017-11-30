{
  "version": "1.1",
  "package": {
    "name": "pushbuttons",
    "version": "",
    "description": "pushbuttons",
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
            "name": "sw1",
            "pins": [
              {
                "index": "0",
                "name": "SW1",
                "value": "10"
              }
            ],
            "virtual": false
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
            "x": 304,
            "y": 32
          }
        },
        {
          "id": "994143ed-dcaa-409f-a859-cea874b8440e",
          "type": "basic.input",
          "data": {
            "name": "sw2",
            "pins": [
              {
                "index": "0",
                "name": "SW2",
                "value": "11"
              }
            ],
            "virtual": false
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
            "x": 304,
            "y": 112
          }
        },
        {
          "id": "b4a90987-4da9-44ec-8029-b926cd0c6cbe",
          "type": "basic.info",
          "data": {
            "info": "<B>Testing the sw1 and sw2 push buttons</B>\n\nWhen the SW1 button is pressed, the LED0 is turned on\nWhen the SW2 button is pressed, the LED1 is turned on",
            "readonly": true
          },
          "position": {
            "x": -40,
            "y": -80
          },
          "size": {
            "width": 480,
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
        "x": 234,
        "y": 159.5
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}