/*
 * telegraphy.js: A JavasScript library to help write reusable code for using MIDI in Node, the browser, and MaxMSP.
 *
 *
 * Copyright 2018, Damon Holzborn
 * Licensed under the MIT license.
 */

var Telegraphy = Telegraphy || {};

(function () {
    "use strict";
    var isCommonJS = typeof module !== 'undefined' && module.exports ? true : false;
    Telegraphy.isNode = isCommonJS && typeof window === 'undefined';
    Telegraphy.isMax = false;
    if (Telegraphy.isNode) {
        Telegraphy.isMax = require('module-exists')('max-api');
    }

    Telegraphy.MIDI;
    Telegraphy.OSC;
    Telegraphy.Max;
    Telegraphy.WebSocketServer;
    Telegraphy.SerialPort;
    Telegraphy.ExpressApp;
    Telegraphy.ExpressServer;
    Telegraphy.Manta;

    Telegraphy.scheduleAheadTime = 200;
    Telegraphy.scheduleLoopTime = 50;
    Telegraphy.websocketserver = 65;

    Telegraphy.modes = {
        chromatic: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
        major: [0, 2, 4, 5, 7, 9, 11],
        minor: [0, 2, 3, 5, 7, 8, 10],
        harmonic_minor: [0, 2, 3, 5, 7, 8, 11],
        melodic_minor: [0, 2, 3, 5, 7, 8, 11],
        dorian: [0, 2, 3, 5, 7, 9, 10],
        phrygian: [0, 1, 3, 5, 7, 8, 10],
        locrian: [0, 1, 3, 5, 6, 8, 10],
        mixolydian: [0, 2, 4, 5, 7, 9, 10],
        wholetone: [0, 2, 4, 6, 8, 10],
        diminished: [0, 2, 3, 5, 6, 8, 9, 11],
        minor_pentatonic: [0, 3, 5, 7, 10],
        major_pentatonic: [0, 2, 4, 7, 9],
        blues: [0, 3, 5, 6, 7, 10],
        hexatonic: [0, 3, 4, 7, 8, 11],
        klezmer: [0, 1, 4, 5, 7, 8, 10]
    };
    Telegraphy.roots = {
        'C': 0,
        'C#': 1,
        'Db': 1,
        'D': 2,
        'D#': 3,
        'Eb': 3,
        'E': 4,
        'F': 5,
        'F#': 6,
        'Gb': 6,
        'G': 7,
        'G#': 8,
        'Ab': 8,
        'A': 9,
        'A#': 10,
        'Bb': 10,
        'B': 11,
    };
    Telegraphy.drumMap = {
        'BD2': 35, 'BassDrum2': 35, 'BD': 36, 'BassDrum': 36, 'RS': 37, 'SS': 37, 'Rimshot': 37, 'SideStick': 37, 'SD': 38, 'SnareDrum': 38, 'CP': 39, 'HandClap': 39, 'Clap': 39, 'SD2': 40, 'SnareDrum2': 40, 'LT2': 41, 'LowTom2': 41, 'CH': 42, 'ClosedHat': 42, 'LT': 43, 'LowTom': 43, 'PH': 44, 'PedalHat': 44, 'MT2': 45, 'MidTom2': 45, 'OH': 46, 'OpenHat': 46, 'MT': 47, 'MidTom': 47, 'HT2': 48, 'HighTom2': 48, 'CY': 49, 'CrashCymbal': 49, 'HT': 50, 'HighTom': 50, 'RC': 51, 'RideCymbal': 51, 'CC': 52, 'ChineseCymbal': 52, 'RB': 53, 'RideBell': 53, 'TA': 54, 'Tambourine': 54, 'SC': 55, 'SplashCymbal': 55, 'CB': 56, 'Cowbell': 56, 'CY2': 57, 'CrashCymbal2': 57, 'VS': 58, 'VibraSlap': 58, 'RC2': 59, 'RideCymbal2': 59, 'HB': 60, 'HighBongo': 60, 'LB': 61, 'LowBongo': 61, 'MC': 62, 'MuteHighConga': 62, 'HC': 63, 'OpenHighConga': 63, 'LC': 64, 'LowConga': 64, 'TH': 65, 'HighTimbale': 65, 'TL': 66, 'LowTimbale': 66, 'HA': 67, 'HighAgogo': 67, 'LA': 68, 'LowAgogo': 68, 'CA': 69, 'Cabasa': 69, 'MA': 70, 'Maracas': 70, 'SW': 71, 'ShortWhistle': 71, 'LW': 72, 'LongWhistle': 72, 'SG': 73, 'ShortGuiro': 73, 'LG': 74, 'LongGuiro': 74, 'CL': 75, 'Claves': 75, 'HK': 76, 'HighWoodBlock': 76, 'LK': 77, 'LowWoodBlock': 77, 'CM': 78, 'MuteCuica': 78, 'CO': 79, 'OpenCuica': 79, 'TM': 80, 'TriangleMute': 80, 'TO': 81, 'OpenTriangle': 81,
    }

    Telegraphy.init = function(options, callback) {
        // var asyncDone = false;

        if (Telegraphy.isNode) {
            if (!global.performance) global.performance = { now: require('performance-now') };
        }

        // *********   OSC   *********

        if (!options || options.osc) {
            if (Telegraphy.isNode) {
                Telegraphy.OSC = require('osc');
            }
            else {
                Telegraphy.OSC = osc;
            }
        }

        // *********   Express   *********

        if (!options || options.express) {
            if (Telegraphy.isNode) {
                var express = require("express");
                var app = Telegraphy.ExpressApp = express();
                app.set('port', (process.env.PORT || options.express.port));
                Telegraphy.ExpressServer = app.listen(app.get('port'), function() {
                    console.log('Node app is running on port', app.get('port'));
                });
                if (options.express.usestaticdirectory) {
                    app.use("/", express.static(__dirname));
                }
                if (options.express.usesmodules) {
                    app.use('/modules', express.static('./node_modules/'));
                }
            }
            else {
                console.log('Express Server is for Node.js only.')
            }
        }

        // *********   WebSockets   *********

        if (!options || options.websocketserver) {
            if (Telegraphy.isNode) {
                var webSocket = require("ws");

                Telegraphy.WebSocketServer = new webSocket.Server({
                    server: Telegraphy.ExpressServer,
                });
            }
            else {
                console.log('WebSocket Server is for Node.js only.')
            }
        }

        // *********   SerialPort   *********

        if (!options || options.serialport) {
            if (Telegraphy.isNode) {
                Telegraphy.SerialPort = require('serialport');
            }
            else {
                console.log('SerialPort is for Node.js only.')
            }
        }

        // *********   Max   *********

        if ((!options || options.max) && Telegraphy.isMax) {
            Telegraphy.Max = require("max-api");
            console.log('require max');
        }

        // *********   Manta   *********

        if (!options || options.manta) {
            if (Telegraphy.isNode) {
                var cp = require('child_process');
                cp.exec('MantaOSC');

                Telegraphy.Manta = new Telegraphy.OSC.UDPPort({
                    localAddress: "0.0.0.0",
                    localPort: 31416
                });

                Telegraphy.Manta.open();
            }
            else {
                console.log('Manta Server is for Node.js only.')
            }
        }

        // *********   MIDI   *********

        if (!options || options.midi) {
            if (Telegraphy.isNode) {
                // global.navigator = require('web-midi-api');
                // Can't updgrade from web-midi-api to jzz until
                // note dropping regression is fixed:
                // https://jazz-soft.org/bb/viewtopic.php?f=11&t=981
                global.navigator = require('jzz');
                Telegraphy.MIDI = require('webmidi');
            }
            else {
                Telegraphy.MIDI = WebMidi;
            }

            Telegraphy.MIDI.enable(function(error) {
                if (error) {
                    console.log('Could not enable MIDI interface: ' + error);
                }
                else {
                    console.log('MIDI enabled.');
                }
                if (callback) {
                    callback();
                }
            });
        }
        else {
            if (callback) {
                callback();
            }
        }
    }

    Telegraphy.printMIDIPorts = function() {
        var portsString = '-------- MIDI Outputs --------\n';
        var i = 0;
        for (var output in Telegraphy.MIDI.outputs) {
            portsString += i + ') ' + Telegraphy.MIDI.outputs[output].name + '\n';
            i++;
        }
        portsString += '------------------------------\n\n';
        portsString += '-------- MIDI Inputs --------\n';
        i = 0;
        for (var input in Telegraphy.MIDI.inputs) {
            portsString += i + ') ' + Telegraphy.MIDI.inputs[input].name + '\n';
            i++;
        }
        portsString += '------------------------------\n';
        console.log(portsString);
        return portsString;
    }

	// Node
    if (typeof module !== "undefined" && module.exports) {
        module.exports = Telegraphy;
    }

}());
