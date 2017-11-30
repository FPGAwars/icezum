{
  "version": "1.1",
  "package": {
    "name": "rs232",
    "version": "",
    "description": "rs232",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "8ad29126-af76-4c41-8cbb-28336bcc2705",
          "type": "basic.input",
          "data": {
            "name": "rts",
            "pins": [
              {
                "index": "0",
                "name": "RTS",
                "value": "7"
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
          "id": "b57d4f10-8c61-4276-8e2a-346ef1980c07",
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
            "x": 312,
            "y": 32
          }
        },
        {
          "id": "090cbb65-d3d8-4661-aab2-b6036664b8d4",
          "type": "basic.input",
          "data": {
            "name": "dtr",
            "pins": [
              {
                "index": "0",
                "name": "DTR",
                "value": "3"
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
          "id": "9dcb4be0-d83b-4caf-8884-b66854aca6ad",
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
            "x": 312,
            "y": 112
          }
        },
        {
          "id": "83087349-5bea-49fa-8e06-8a418dbd2eb1",
          "type": "basic.info",
          "data": {
            "info": "<B>Testing the RTS and DTR RS232 signals</B>\n\nA terminal communication program should be\nused for setting the RTS and DTR signals\nTheir state is shown in the 0 and 7 LEDs",
            "readonly": true
          },
          "position": {
            "x": 8,
            "y": -104
          },
          "size": {
            "width": 432,
            "height": 112
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "8ad29126-af76-4c41-8cbb-28336bcc2705",
            "port": "out"
          },
          "target": {
            "block": "b57d4f10-8c61-4276-8e2a-346ef1980c07",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "090cbb65-d3d8-4661-aab2-b6036664b8d4",
            "port": "out"
          },
          "target": {
            "block": "9dcb4be0-d83b-4caf-8884-b66854aca6ad",
            "port": "in"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 230,
        "y": 159.5
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}