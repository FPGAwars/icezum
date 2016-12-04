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
        "id": "8ad29126-af76-4c41-8cbb-28336bcc2705",
        "type": "basic.input",
        "data": {
          "label": "rts",
          "pin": {
            "name": "RTS",
            "value": "7"
          }
        },
        "position": {
          "x": 32,
          "y": 32
        }
      },
      {
        "id": "090cbb65-d3d8-4661-aab2-b6036664b8d4",
        "type": "basic.input",
        "data": {
          "label": "dtr",
          "pin": {
            "name": "DTR",
            "value": "3"
          }
        },
        "position": {
          "x": 32,
          "y": 112
        }
      },
      {
        "id": "b57d4f10-8c61-4276-8e2a-346ef1980c07",
        "type": "basic.output",
        "data": {
          "label": "led0",
          "pin": {
            "name": "LED0",
            "value": "95"
          }
        },
        "position": {
          "x": 312,
          "y": 32
        }
      },
      {
        "id": "9dcb4be0-d83b-4caf-8884-b66854aca6ad",
        "type": "basic.output",
        "data": {
          "label": "led7",
          "pin": {
            "name": "LED7",
            "value": "104"
          }
        },
        "position": {
          "x": 312,
          "y": 112
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
  "deps": {}
}