{
  "image": "",
  "state": {
    "pan": {
      "x": 0,
      "y": 0
    },
    "zoom": 0.9999999943523183
  },
  "board": "icezum",
  "graph": {
    "blocks": [
      {
        "id": "79bd433e-0562-4e54-8d8c-819aa137214d",
        "type": "basic.code",
        "data": {
          "code": "\n// @include baudgen_rx.v\n\nparameter BAUDRATE = 104   //-- Default baudrate\n\n//-- Transmission clock\nwire clk_baud;\n\n//-- Control signals\nreg bauden;  //-- Enable the baud generator\nreg clear;   //-- Clear the bit counter\nreg load;    //-- Load the received character into the data register\n\n\n//-------------------------------------------------------------------\n//--     DATAPATH\n//-------------------------------------------------------------------\n\n//-- The serial input is registered in order to follow the\n//-- synchronous design rules\nreg rx_r;\n\nalways @(posedge clk)\n  rx_r <= rx;\n\n//-- Baud generator\nbaudgen_rx #(BAUDRATE)\n  baudgen0 (\n    .rstn(rstn),\n    .clk(clk),\n    .clk_ena(bauden),\n    .clk_out(clk_baud)\n  );\n\n//-- Bit counter\nreg [3:0] bitc;\n\nalways @(posedge clk)\n  if (clear)\n    bitc <= 4'd0;\n  else if (clear == 0 && clk_baud == 1)\n    bitc <= bitc + 1;\n\n\n//-- Shift register for storing the received bits\nreg [9:0] raw_data;\n\nalways @(posedge clk)\n  if (clk_baud == 1)\n    raw_data <= {rx_r, raw_data[9:1]};\n\n//-- Data register. Store the character received\nalways @(posedge clk)\n  if (rstn == 0)\n    data <= 0;\n  else if (load)\n    data <= raw_data[8:1];\n\n//-------------------------------------------\n//-- CONTROLLER  (Finite state machine)\n//-------------------------------------------\n\n//-- Receiver states\nlocalparam IDLE = 2'd0;  //-- IDLEde reposo\nlocalparam RECV = 2'd1;  //-- Receiving data\nlocalparam LOAD = 2'd2;  //-- Storing the character received\nlocalparam DAV = 2'd3;   //-- Data is available\n\n//-- fsm states\nreg [1:0] state;\nreg [1:0] next_state;\n\n//-- Transition between states\nalways @(posedge clk)\n  if (!rstn)\n    state <= IDLE;\n  else\n    state <= next_state;\n\n//-- Control signal generation and next states\nalways @(*) begin\n\n  //-- Default values\n  next_state = state;      //-- Stay in the same state by default\n  bauden = 0;\n  clear = 0;\n  load = 0;\n\n  case(state)\n\n    //-- Idle state\n    //-- Remain in this state until a start bit is received in rx_r\n    IDLE: begin\n      clear = 1;\n      rcv = 0;\n      if (rx_r == 0)\n        next_state = RECV;\n    end\n\n    //-- Receiving state\n    //-- Turn on the baud generator and wait for the serial package to be received\n    RECV: begin\n      bauden = 1;\n      rcv = 0;\n      if (bitc == 4'd10)\n        next_state = LOAD;\n    end\n\n    //-- Store the received character in the data register (1 cycle)\n    LOAD: begin\n      load = 1;\n      rcv = 0;\n      next_state = DAV;\n    end\n\n    //-- Data Available (1 cycle)\n    DAV: begin\n      rcv = 1;\n      next_state = IDLE;\n    end\n\n    default:\n      rcv = 0;\n\n  endcase\n\nend\n",
          "ports": {
            "in": [
              "clk",
              "rstn",
              "rx"
            ],
            "out": [
              "d7",
              "d6",
              "d5",
              "d4",
              "d3",
              "d2",
              "d1",
              "d0",
              "rcv"
            ]
          }
        },
        "position": {
          "x": 248,
          "y": 96
        }
      },
      {
        "id": "14e0e2f1-0db2-4293-a5d7-5361d835e1c9",
        "type": "basic.input",
        "data": {
          "label": "clk",
          "pin": {
            "name": "CLK",
            "value": "21"
          }
        },
        "position": {
          "x": 24,
          "y": 104
        }
      },
      {
        "id": "4ddb6fa9-3f37-4f07-91a4-052d40d3fa4b",
        "type": "bit.1",
        "data": {},
        "position": {
          "x": 24,
          "y": 192
        }
      },
      {
        "id": "950595a8-4e2c-4259-b0c0-9572eb9f30ff",
        "type": "basic.input",
        "data": {
          "label": "rx",
          "pin": {
            "name": "RX",
            "value": "9"
          }
        },
        "position": {
          "x": 24,
          "y": 280
        }
      },
      {
        "id": "f2f7a2d9-a198-497a-b1df-6c3a011e89a4",
        "type": "basic.output",
        "data": {
          "label": "l7",
          "pin": {
            "name": "LED7",
            "value": "104"
          }
        },
        "position": {
          "x": 1152,
          "y": 40
        }
      },
      {
        "id": "0187ba3d-8030-4d0c-8710-376452060a99",
        "type": "basic.output",
        "data": {
          "label": "l6",
          "pin": {
            "name": "LED6",
            "value": "102"
          }
        },
        "position": {
          "x": 1152,
          "y": 120
        }
      },
      {
        "id": "384c0690-0715-4747-8c25-588ca013af7c",
        "type": "basic.output",
        "data": {
          "label": "l5",
          "pin": {
            "name": "LED5",
            "value": "101"
          }
        },
        "position": {
          "x": 1152,
          "y": 200
        }
      },
      {
        "id": "cc8a5bec-852c-4a0a-acd0-0aa2f8705f68",
        "type": "basic.output",
        "data": {
          "label": "l4",
          "pin": {
            "name": "LED4",
            "value": "99"
          }
        },
        "position": {
          "x": 1152,
          "y": 280
        }
      },
      {
        "id": "fb7488c4-b236-4f36-a06e-e98fda2ffc2d",
        "type": "basic.output",
        "data": {
          "label": "l3",
          "pin": {
            "name": "LED3",
            "value": "98"
          }
        },
        "position": {
          "x": 1152,
          "y": 360
        }
      },
      {
        "id": "d17ba531-0aae-48b7-875b-2b013b2fc00e",
        "type": "basic.output",
        "data": {
          "label": "l2",
          "pin": {
            "name": "LED2",
            "value": "97"
          }
        },
        "position": {
          "x": 1152,
          "y": 440
        }
      },
      {
        "id": "9d40c166-2e10-41a6-ba9e-410f800c7699",
        "type": "basic.output",
        "data": {
          "label": "l1",
          "pin": {
            "name": "LED1",
            "value": "96"
          }
        },
        "position": {
          "x": 1152,
          "y": 520
        }
      },
      {
        "id": "c93edd36-db27-40b5-acdc-6b75f31c8d8c",
        "type": "basic.output",
        "data": {
          "label": "l0",
          "pin": {
            "name": "LED0",
            "value": "95"
          }
        },
        "position": {
          "x": 1152,
          "y": 600
        }
      }
    ],
    "wires": [
      {
        "source": {
          "block": "14e0e2f1-0db2-4293-a5d7-5361d835e1c9",
          "port": "out"
        },
        "target": {
          "block": "79bd433e-0562-4e54-8d8c-819aa137214d",
          "port": "clk"
        }
      },
      {
        "source": {
          "block": "4ddb6fa9-3f37-4f07-91a4-052d40d3fa4b",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "79bd433e-0562-4e54-8d8c-819aa137214d",
          "port": "rstn"
        }
      },
      {
        "source": {
          "block": "950595a8-4e2c-4259-b0c0-9572eb9f30ff",
          "port": "out"
        },
        "target": {
          "block": "79bd433e-0562-4e54-8d8c-819aa137214d",
          "port": "rx"
        }
      },
      {
        "source": {
          "block": "79bd433e-0562-4e54-8d8c-819aa137214d",
          "port": "d7"
        },
        "target": {
          "block": "f2f7a2d9-a198-497a-b1df-6c3a011e89a4",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "79bd433e-0562-4e54-8d8c-819aa137214d",
          "port": "d6"
        },
        "target": {
          "block": "0187ba3d-8030-4d0c-8710-376452060a99",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "79bd433e-0562-4e54-8d8c-819aa137214d",
          "port": "d5"
        },
        "target": {
          "block": "384c0690-0715-4747-8c25-588ca013af7c",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "79bd433e-0562-4e54-8d8c-819aa137214d",
          "port": "d4"
        },
        "target": {
          "block": "cc8a5bec-852c-4a0a-acd0-0aa2f8705f68",
          "port": "in"
        },
        "vertices": [
          {
            "x": 1104,
            "y": 256
          }
        ]
      },
      {
        "source": {
          "block": "79bd433e-0562-4e54-8d8c-819aa137214d",
          "port": "d3"
        },
        "target": {
          "block": "fb7488c4-b236-4f36-a06e-e98fda2ffc2d",
          "port": "in"
        },
        "vertices": [
          {
            "x": 1096,
            "y": 336
          }
        ]
      },
      {
        "source": {
          "block": "79bd433e-0562-4e54-8d8c-819aa137214d",
          "port": "d2"
        },
        "target": {
          "block": "d17ba531-0aae-48b7-875b-2b013b2fc00e",
          "port": "in"
        },
        "vertices": [
          {
            "x": 1088,
            "y": 440
          }
        ]
      },
      {
        "source": {
          "block": "79bd433e-0562-4e54-8d8c-819aa137214d",
          "port": "d1"
        },
        "target": {
          "block": "9d40c166-2e10-41a6-ba9e-410f800c7699",
          "port": "in"
        },
        "vertices": [
          {
            "x": 1080,
            "y": 504
          }
        ]
      },
      {
        "source": {
          "block": "79bd433e-0562-4e54-8d8c-819aa137214d",
          "port": "d0"
        },
        "target": {
          "block": "c93edd36-db27-40b5-acdc-6b75f31c8d8c",
          "port": "in"
        },
        "vertices": [
          {
            "x": 1072,
            "y": 584
          }
        ]
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