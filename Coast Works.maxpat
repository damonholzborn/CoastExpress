{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 5,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ 0.0, 45.0, 663.0, 472.0 ],
		"bgcolor" : [ 0.141176, 0.141176, 0.141176, 1.0 ],
		"editing_bgcolor" : [ 0.14, 0.14, 0.14, 1.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 2,
		"gridsize" : [ 10.0, 10.0 ],
		"gridsnaponopen" : 2,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 0,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 15,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "---TEMPLATE---",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "flush" ],
					"patching_rect" : [ 743.71875, 898.0, 43.0, 22.0 ],
					"style" : "",
					"text" : "t flush"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontsize" : 9.0,
					"id" : "obj-5",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 470.0, 520.0, 141.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 120.049461, 445.0, 421.0, 17.0 ],
					"style" : "",
					"text" : " To save settings on the 0-Coast, hold PGM_A to enter the Program Pages, then hold PGM_B to save. ",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1128.969482, 170.0, 112.0, 22.0 ],
					"style" : "",
					"text" : "prepend setsymbol"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.039216, 0.305882, 0.698039, 1.0 ],
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1059.0, 123.5, 111.0, 22.0 ],
					"style" : "",
					"text" : "cw.Param midiPort"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"activeneedlecolor" : [ 0.529648, 0.52966, 0.529557, 1.0 ],
					"annotation" : "Send mod wheel (MIDI CC 1) (BETA NOTE: SEEMS TO ALWAYS SEND TO BOTH A AND B CIRCUITS.)",
					"hint" : "send mod wheel (BETA NOTE: SEEMS TO ALWAYS SEND TO BOTH A AND B CIRCUITS.)",
					"id" : "obj-87",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 401.969482, 917.5, 44.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial[19]",
							"parameter_shortname" : "Touch",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "Mod Wheel"
						}

					}
,
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"varname" : "live.dial[5]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 299.969421, 950.0, 87.0, 22.0 ],
					"style" : "",
					"text" : "r cwKeyGroup"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 370.469482, 990.0, 50.5, 22.0 ],
					"style" : "",
					"text" : "gate 2"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 523.828857, 1030.0, 55.0, 22.0 ],
					"style" : "",
					"text" : "r cwPort"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 541.828857, 1070.0, 95.0, 22.0 ],
					"style" : "",
					"text" : "r cwBMIDIChan"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.870588, 0.415686, 0.062745, 1.0 ],
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 503.828857, 1110.0, 57.0, 22.0 ],
					"style" : "",
					"text" : "touchout"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 393.828857, 1030.0, 55.0, 22.0 ],
					"style" : "",
					"text" : "r cwPort"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 408.469482, 1070.0, 95.0, 22.0 ],
					"style" : "",
					"text" : "r cwAMIDIChan"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.870588, 0.415686, 0.062745, 1.0 ],
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 370.469482, 1110.0, 57.0, 22.0 ],
					"style" : "",
					"text" : "touchout"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 922.969482, 123.5, 110.0, 22.0 ],
					"style" : "",
					"text" : "s cwSettingsDump"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1313.583496, 164.125, 29.5, 22.0 ],
					"style" : "",
					"text" : "i"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"annotation" : "Beat division outgoing MIDI clock.",
					"bordercolor" : [ 0.196078, 0.196078, 0.196078, 0.0 ],
					"focusbordercolor" : [ 0.0, 0.019608, 0.078431, 0.0 ],
					"hint" : "MIDI clock beat division",
					"id" : "obj-159",
					"maxclass" : "live.tab",
					"num_lines_patching" : 3,
					"num_lines_presentation" : 3,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1471.583496, 110.0, 61.0, 50.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 535.0, 256.5, 105.549469, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.tab[15]",
							"parameter_shortname" : "live.tab[5]",
							"parameter_type" : 2,
							"parameter_enum" : [ "1n", "2n", "2nt", "4n", "4nt", "8n", "8nt", "16n", "16nt" ],
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "Beat Division"
						}

					}
,
					"spacing_x" : 3.0,
					"spacing_y" : 3.0,
					"varname" : "live.tab[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-156",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1313.583496, 300.0, 189.0, 22.0 ],
					"style" : "",
					"text" : "expr (((60 / $f1) / $f2) * 1000) / 24"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-155",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 1471.583496, 260.0, 31.0, 22.0 ],
					"style" : "",
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.039216, 0.305882, 0.698039, 1.0 ],
					"id" : "obj-45",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1497.333496, 180.0, 73.5, 35.0 ],
					"style" : "",
					"text" : "cw.Param clockOutDiv"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.062745, 0.470588, 0.129412, 1.0 ],
					"coll_data" : 					{
						"count" : 11,
						"data" : [ 							{
								"key" : 0,
								"value" : [ 0.25 ]
							}
, 							{
								"key" : 1,
								"value" : [ 0.5 ]
							}
, 							{
								"key" : 2,
								"value" : [ 0.333333 ]
							}
, 							{
								"key" : 3,
								"value" : [ 1 ]
							}
, 							{
								"key" : 4,
								"value" : [ 1.333333 ]
							}
, 							{
								"key" : 5,
								"value" : [ 2 ]
							}
, 							{
								"key" : 6,
								"value" : [ 3 ]
							}
, 							{
								"key" : 7,
								"value" : [ 4 ]
							}
, 							{
								"key" : 8,
								"value" : [ 6 ]
							}
, 							{
								"key" : 9,
								"value" : [ 8 ]
							}
, 							{
								"key" : 10,
								"value" : [ 12 ]
							}
 ]
					}
,
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 1471.583496, 228.0, 125.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1
					}
,
					"style" : "",
					"text" : "coll cwClockDivisions"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1227.015625, 900.0, 87.0, 22.0 ],
					"style" : "",
					"text" : "prepend offset"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.039216, 0.305882, 0.698039, 1.0 ],
					"id" : "obj-441",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1336.25, 202.5, 90.0, 35.0 ],
					"style" : "",
					"text" : "cw.Param clockOutBPM"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.039216, 0.305882, 0.698039, 1.0 ],
					"id" : "obj-434",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1243.515625, 818.583313, 65.0, 35.0 ],
					"style" : "",
					"text" : "cw.Param keyOffset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-433",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1227.015625, 868.458313, 106.0, 22.0 ],
					"style" : "",
					"text" : "expr ($i1 + 1) * 24"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"annotation" : "MIDI note number of low note of kslider below.",
					"bordercolor" : [ 0.196078, 0.196078, 0.196078, 0.0 ],
					"focusbordercolor" : [ 0.0, 0.019608, 0.078431, 0.0 ],
					"hint" : "low note of kslider",
					"id" : "obj-48",
					"maxclass" : "live.tab",
					"multiline" : 0,
					"num_lines_patching" : 1,
					"num_lines_presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1227.015625, 729.416626, 81.5, 69.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.549469, 265.0, 259.450531, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.tab[50]",
							"parameter_shortname" : "live.tab[5]",
							"parameter_type" : 2,
							"parameter_enum" : [ "24", "36" ],
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "Low Note"
						}

					}
,
					"spacing_x" : 3.0,
					"spacing_y" : 3.0,
					"varname" : "live.tab[32]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.039216, 0.305882, 0.698039, 1.0 ],
					"id" : "obj-430",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1067.515625, 840.125, 103.5, 35.0 ],
					"style" : "",
					"text" : "cw.Param keyDisplayMode"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.039216, 0.305882, 0.698039, 1.0 ],
					"id" : "obj-429",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 910.5, 520.0, 70.0, 35.0 ],
					"style" : "",
					"text" : "cw.Param keyGroup"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.039216, 0.305882, 0.698039, 1.0 ],
					"id" : "obj-427",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1042.5, 520.0, 66.0, 35.0 ],
					"style" : "",
					"text" : "cw.Param modGroup"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-426",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 29.5, 950.0, 87.0, 22.0 ],
					"style" : "",
					"text" : "r cwKeyGroup"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-425",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 585.5, 950.0, 87.0, 22.0 ],
					"style" : "",
					"text" : "r cwKeyGroup"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-423",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 691.5, 898.0, 31.0, 22.0 ],
					"style" : "",
					"text" : "127"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Send all notes off message.",
					"automation" : "Panic",
					"automationon" : "Panic",
					"bordercolor" : [ 0.196078, 0.196078, 0.196078, 0.0 ],
					"focusbordercolor" : [ 0.0, 0.019608, 0.078431, 0.0 ],
					"hint" : "send all notes off message",
					"id" : "obj-424",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 691.5, 860.625, 40.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 340.549469, 275.0, 50.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[1]",
							"parameter_shortname" : "live.text",
							"parameter_type" : 2,
							"parameter_mmax" : 1.0,
							"parameter_enum" : [ "Panic", "Panic" ],
							"parameter_annotation_name" : "Panic"
						}

					}
,
					"text" : "Panic",
					"varname" : "live.text[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-413",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 660.0, 990.0, 50.5, 22.0 ],
					"style" : "",
					"text" : "gate 2"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-416",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 827.031372, 1030.0, 55.0, 22.0 ],
					"style" : "",
					"text" : "r cwPort"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-417",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 850.5, 1070.0, 95.0, 22.0 ],
					"style" : "",
					"text" : "r cwBMIDIChan"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.870588, 0.415686, 0.062745, 1.0 ],
					"id" : "obj-418",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 806.5, 1110.0, 63.0, 22.0 ],
					"style" : "",
					"text" : "ctlout 123"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-419",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 683.015625, 1030.0, 55.0, 22.0 ],
					"style" : "",
					"text" : "r cwPort"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-420",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 704.0, 1070.0, 95.0, 22.0 ],
					"style" : "",
					"text" : "r cwAMIDIChan"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.870588, 0.415686, 0.062745, 1.0 ],
					"id" : "obj-421",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 660.0, 1110.0, 63.0, 22.0 ],
					"style" : "",
					"text" : "ctlout 123"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-406",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 100.0, 990.0, 50.5, 22.0 ],
					"style" : "",
					"text" : "gate 2"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-407",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 253.359375, 1030.0, 55.0, 22.0 ],
					"style" : "",
					"text" : "r cwPort"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-408",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 268.359375, 1070.0, 95.0, 22.0 ],
					"style" : "",
					"text" : "r cwBMIDIChan"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.870588, 0.415686, 0.062745, 1.0 ],
					"id" : "obj-409",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 233.359375, 1110.0, 54.0, 22.0 ],
					"style" : "",
					"text" : "bendout"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-410",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 123.359375, 1030.0, 55.0, 22.0 ],
					"style" : "",
					"text" : "r cwPort"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-411",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 135.0, 1070.0, 95.0, 22.0 ],
					"style" : "",
					"text" : "r cwAMIDIChan"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.870588, 0.415686, 0.062745, 1.0 ],
					"id" : "obj-412",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 100.0, 1110.0, 54.0, 22.0 ],
					"style" : "",
					"text" : "bendout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-405",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1000.5, 570.0, 150.0, 22.0 ],
					"style" : "",
					"text" : "gate 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-404",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1000.5, 520.0, 29.5, 22.0 ],
					"style" : "",
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"annotation" : "Choose which circuit to send mod wheel (MIDI CC 1) (BETA NOTE: DOESN’T SEEM TO WORK, ALWAYS SENDS TO BOTH A AND B CIRCUITS.)",
					"bordercolor" : [ 0.196078, 0.196078, 0.196078, 0.0 ],
					"focusbordercolor" : [ 0.0, 0.019608, 0.078431, 0.0 ],
					"hint" : "choose mod wheel destination circuit (BETA NOTE: DOESN’T SEEM TO WORK, ALWAYS SENDS TO BOTH A AND B CIRCUITS.)",
					"id" : "obj-403",
					"maxclass" : "live.tab",
					"num_lines_patching" : 2,
					"num_lines_presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1000.5, 459.999969, 45.0, 42.625 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.tab[11]",
							"parameter_shortname" : "live.tab[5]",
							"parameter_type" : 2,
							"parameter_enum" : [ "A", "B" ],
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "Mod Wheel Circuit"
						}

					}
,
					"spacing_x" : 3.0,
					"spacing_y" : 3.0,
					"varname" : "live.tab[2]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-400",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1152.031372, 610.0, 55.0, 22.0 ],
					"style" : "",
					"text" : "r cwPort"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-401",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1161.5, 650.0, 95.0, 22.0 ],
					"style" : "",
					"text" : "r cwBMIDIChan"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.870588, 0.415686, 0.062745, 1.0 ],
					"id" : "obj-402",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 1131.5, 690.0, 49.0, 22.0 ],
					"style" : "",
					"text" : "ctlout 1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-396",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 951.015625, 975.0, 87.0, 22.0 ],
					"style" : "",
					"text" : "r cwKeyGroup"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-395",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1347.015625, 975.0, 87.0, 22.0 ],
					"style" : "",
					"text" : "r cwKeyGroup"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-394",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 870.5, 580.0, 89.0, 22.0 ],
					"style" : "",
					"text" : "s cwKeyGroup"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-387",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 870.5, 520.0, 29.5, 22.0 ],
					"style" : "",
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-386",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1290.515625, 1020.0, 44.0, 22.0 ],
					"style" : "",
					"text" : "gate 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-385",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1023.515625, 1020.0, 44.0, 22.0 ],
					"style" : "",
					"text" : "gate 2"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-382",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1332.015625, 1070.0, 95.0, 22.0 ],
					"style" : "",
					"text" : "r cwBMIDIChan"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-383",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1243.515625, 1070.0, 55.0, 22.0 ],
					"style" : "",
					"text" : "r cwPort"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.870588, 0.415686, 0.062745, 1.0 ],
					"id" : "obj-384",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 1300.015625, 1110.0, 51.0, 22.0 ],
					"style" : "",
					"text" : "noteout"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"annotation" : "Choose to which circuit's MIDI channel to send kslider interaction.",
					"bordercolor" : [ 0.196078, 0.196078, 0.196078, 0.0 ],
					"focusbordercolor" : [ 0.0, 0.019608, 0.078431, 0.0 ],
					"hint" : "kslider MIDI channel select ",
					"id" : "obj-37",
					"maxclass" : "live.tab",
					"num_lines_patching" : 2,
					"num_lines_presentation" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 870.5, 459.999969, 50.0, 40.333313 ],
					"presentation" : 1,
					"presentation_rect" : [ 290.0, 265.0, 40.0, 40.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.tab[24]",
							"parameter_shortname" : "live.tab[5]",
							"parameter_type" : 2,
							"parameter_enum" : [ "A", "B" ],
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "Channel Select"
						}

					}
,
					"spacing_x" : 3.0,
					"spacing_y" : 3.0,
					"varname" : "live.tab[43]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.039216, 0.305882, 0.698039, 1.0 ],
					"id" : "obj-381",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 362.0, 710.0, 65.0, 35.0 ],
					"style" : "",
					"text" : "cw.Param tempoDiv"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.039216, 0.305882, 0.698039, 1.0 ],
					"id" : "obj-380",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 741.4375, 710.0, 82.5625, 35.0 ],
					"style" : "",
					"text" : "cw.Param clockInToggle"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.039216, 0.305882, 0.698039, 1.0 ],
					"id" : "obj-379",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 50.0, 710.0, 80.0, 35.0 ],
					"style" : "",
					"text" : "cw.Param legatoToggle"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.039216, 0.305882, 0.698039, 1.0 ],
					"id" : "obj-378",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 597.0, 710.0, 65.0, 35.0 ],
					"style" : "",
					"text" : "cw.Param arpMode"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.039216, 0.305882, 0.698039, 1.0 ],
					"id" : "obj-376",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 209.5, 710.0, 70.5, 35.0 ],
					"style" : "",
					"text" : "cw.Param portamento"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.039216, 0.305882, 0.698039, 1.0 ],
					"id" : "obj-342",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 730.4375, 450.0, 69.5625, 35.0 ],
					"style" : "",
					"text" : "cw.Param bMinVel"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.039216, 0.305882, 0.698039, 1.0 ],
					"id" : "obj-343",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 600.0, 450.0, 80.0, 35.0 ],
					"style" : "",
					"text" : "cw.Param bATouch"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.039216, 0.305882, 0.698039, 1.0 ],
					"id" : "obj-344",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 478.125, 450.0, 71.875, 35.0 ],
					"style" : "",
					"text" : "cw.Param bPBend"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.039216, 0.305882, 0.698039, 1.0 ],
					"id" : "obj-345",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 350.0, 450.0, 80.875, 35.0 ],
					"style" : "",
					"text" : "cw.Param bGate"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.039216, 0.305882, 0.698039, 1.0 ],
					"id" : "obj-346",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 228.125, 450.0, 71.875, 35.0 ],
					"style" : "",
					"text" : "cw.Param bCV"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.039216, 0.305882, 0.698039, 1.0 ],
					"id" : "obj-347",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 100.0, 450.0, 80.0, 35.0 ],
					"style" : "",
					"text" : "cw.Param bChan"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-348",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 40.0, 500.0, 29.5, 22.0 ],
					"style" : "",
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-349",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 40.0, 560.0, 97.0, 22.0 ],
					"style" : "",
					"text" : "s cwBMIDIChan"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-350",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 710.0, 530.0, 66.0, 22.0 ],
					"style" : "",
					"text" : "s cwCtlout"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-352",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 580.0, 530.0, 66.0, 22.0 ],
					"style" : "",
					"text" : "s cwCtlout"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-353",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 460.0, 530.0, 66.0, 22.0 ],
					"style" : "",
					"text" : "s cwCtlout"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-356",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 330.0, 530.0, 66.0, 22.0 ],
					"style" : "",
					"text" : "s cwCtlout"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-358",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 210.0, 530.0, 66.0, 22.0 ],
					"style" : "",
					"text" : "s cwCtlout"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-359",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 80.0, 530.0, 66.0, 22.0 ],
					"style" : "",
					"text" : "s cwCtlout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-360",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 710.0, 500.0, 73.0, 22.0 ],
					"style" : "",
					"text" : "append 113"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.932223, 0.488857, 0.081836, 1.0 ],
					"activeneedlecolor" : [ 0.529648, 0.52966, 0.529557, 1.0 ],
					"annotation" : "Sets the minimum velocity for the MIDI B circuit. Incoming velocities will be scaled from this value to max.",
					"focusbordercolor" : [ 0.529648, 0.52966, 0.529557, 1.0 ],
					"hint" : "MIDI B minimum velocity",
					"id" : "obj-361",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 710.4375, 396.25, 44.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 590.549438, 112.0, 50.0, 36.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial[13]",
							"parameter_shortname" : "live.dial",
							"parameter_type" : 1,
							"parameter_mmin" : 1.0,
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "Minimum Velocity"
						}

					}
,
					"showname" : 0,
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"tribordercolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"varname" : "live.dial[7]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-362",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 580.0, 500.0, 72.0, 22.0 ],
					"style" : "",
					"text" : "append 111"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.932223, 0.488857, 0.081836, 1.0 ],
					"activeneedlecolor" : [ 0.529648, 0.52966, 0.529557, 1.0 ],
					"annotation" : "Aftertouch range, in semitones, of the MIDI B circuit.",
					"focusbordercolor" : [ 0.529648, 0.52966, 0.529557, 1.0 ],
					"hint" : "MIDI A aftertouch range",
					"id" : "obj-363",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 580.0, 396.25, 44.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 520.549438, 112.0, 50.0, 36.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial[16]",
							"parameter_shortname" : "live.dial",
							"parameter_type" : 1,
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "Aftertouch Range"
						}

					}
,
					"showname" : 0,
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"tribordercolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"varname" : "live.dial[8]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-364",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 460.0, 500.0, 74.0, 22.0 ],
					"style" : "",
					"text" : "append 109"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-365",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 330.0, 500.0, 74.0, 22.0 ],
					"style" : "",
					"text" : "append 107"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
					"annotation" : "Gate Source for the MIDI B circuit. (Note = open when note on; Velocity = open when velocity > 50%; Mod = open when mod wheel > 50%. LFO rate set by tapping the PGM A button.)",
					"bordercolor" : [ 0.196078, 0.196078, 0.196078, 0.0 ],
					"focusbordercolor" : [ 0.0, 0.019608, 0.078431, 0.0 ],
					"hint" : "MIDI B gate source",
					"id" : "obj-366",
					"maxclass" : "live.tab",
					"num_lines_patching" : 4,
					"num_lines_presentation" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 330.0, 340.0, 60.0, 92.25 ],
					"presentation" : 1,
					"presentation_rect" : [ 340.549469, 110.0, 90.0, 40.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.tab[25]",
							"parameter_shortname" : "live.tab[2]",
							"parameter_type" : 2,
							"parameter_enum" : [ "Note", "Velocity", "Mod", "LFO" ],
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "Gate Source"
						}

					}
,
					"spacing_x" : 3.0,
					"spacing_y" : 3.0,
					"varname" : "live.tab[8]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-367",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 210.0, 500.0, 74.0, 22.0 ],
					"style" : "",
					"text" : "append 105"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-368",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 80.0, 500.0, 74.0, 22.0 ],
					"style" : "",
					"text" : "append 103"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
					"annotation" : "CV Source for the MIDI B circuit. (LFO rate set by tapping the PGM A button.)",
					"bordercolor" : [ 0.196078, 0.196078, 0.196078, 0.0 ],
					"focusbordercolor" : [ 0.0, 0.019608, 0.078431, 0.0 ],
					"hint" : "MIDI B CV source",
					"id" : "obj-370",
					"maxclass" : "live.tab",
					"num_lines_patching" : 4,
					"num_lines_presentation" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 210.0, 340.0, 60.0, 92.25 ],
					"presentation" : 1,
					"presentation_rect" : [ 230.549469, 110.0, 90.0, 40.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.tab[28]",
							"parameter_shortname" : "live.tab[2]",
							"parameter_type" : 2,
							"parameter_enum" : [ "Note", "Velocity", "Mod", "LFO" ],
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "CV Source"
						}

					}
,
					"spacing_x" : 3.0,
					"spacing_y" : 3.0,
					"varname" : "live.tab[9]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
					"annotation" : "MIDI receive chanel for the MIDI B circuit.",
					"bordercolor" : [ 0.196078, 0.196078, 0.196078, 0.0 ],
					"focusbordercolor" : [ 0.0, 0.019608, 0.078431, 0.0 ],
					"hint" : "MIDI B channel",
					"id" : "obj-371",
					"maxclass" : "live.tab",
					"num_lines_patching" : 6,
					"num_lines_presentation" : 3,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 80.0, 340.0, 80.0, 92.25 ],
					"presentation" : 1,
					"presentation_rect" : [ 50.549469, 110.0, 160.0, 40.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.tab[29]",
							"parameter_shortname" : "live.tab",
							"parameter_type" : 2,
							"parameter_enum" : [ "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "All" ],
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "MIDI Channel"
						}

					}
,
					"spacing_x" : 3.0,
					"spacing_y" : 3.0,
					"varname" : "live.tab[10]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 10.0,
					"id" : "obj-372",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 40.0, 340.0, 20.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.549469, 110.0, 20.0, 18.0 ],
					"style" : "",
					"text" : "B",
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.932223, 0.488857, 0.081836, 1.0 ],
					"activeneedlecolor" : [ 0.529648, 0.52966, 0.529557, 1.0 ],
					"annotation" : "Pitch bend range, in semitones, of the MIDI B circuit. (This sets the entire range. If you want and octave up/down from center, for example, this value should be 24.)",
					"focusbordercolor" : [ 0.529648, 0.52966, 0.529557, 1.0 ],
					"hint" : "MIDI B pitch bend range",
					"id" : "obj-373",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 460.4375, 396.25, 44.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 450.549469, 112.0, 50.0, 36.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial[18]",
							"parameter_shortname" : "live.dial",
							"parameter_type" : 1,
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "Bend Range"
						}

					}
,
					"showname" : 0,
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"tribordercolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"varname" : "live.dial[9]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.039216, 0.305882, 0.698039, 1.0 ],
					"id" : "obj-144",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 710.4375, 170.0, 71.200439, 35.0 ],
					"style" : "",
					"text" : "cw.Param aMinVel"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.039216, 0.305882, 0.698039, 1.0 ],
					"id" : "obj-145",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 579.5625, 170.0, 80.0, 35.0 ],
					"style" : "",
					"text" : "cw.Param aATouch"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.039216, 0.305882, 0.698039, 1.0 ],
					"id" : "obj-142",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 458.125, 170.0, 71.875, 35.0 ],
					"style" : "",
					"text" : "cw.Param aPBend"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.039216, 0.305882, 0.698039, 1.0 ],
					"id" : "obj-143",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 331.25, 170.0, 80.0, 35.0 ],
					"style" : "",
					"text" : "cw.Param aGate"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.039216, 0.305882, 0.698039, 1.0 ],
					"id" : "obj-141",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 208.125, 170.0, 73.799576, 35.0 ],
					"style" : "",
					"text" : "cw.Param aCV"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.039216, 0.305882, 0.698039, 1.0 ],
					"id" : "obj-140",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 80.0, 170.0, 80.0, 35.0 ],
					"style" : "",
					"text" : "cw.Param aChan"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.039216, 0.305882, 0.698039, 1.0 ],
					"id" : "obj-139",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 5,
							"architecture" : "x86",
							"modernui" : 1
						}
,
						"rect" : [ 379.0, 294.0, 641.0, 345.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 0,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 15,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "---TEMPLATE---",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 330.0, 60.0, 61.0, 22.0 ],
									"style" : "",
									"text" : "select set"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 330.0, 10.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 10.0, 210.0, 79.0, 22.0 ],
									"style" : "",
									"text" : "route symbol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 330.0, 210.0, 79.0, 22.0 ],
									"style" : "",
									"text" : "route symbol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 210.0, 100.0, 63.0, 22.0 ],
									"style" : "",
									"text" : "delay 250"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 420.0, 210.0, 63.0, 22.0 ],
									"style" : "",
									"text" : "$1_saved"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 420.0, 240.0, 84.0, 22.0 ],
									"style" : "",
									"text" : "prepend send"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.062745, 0.470588, 0.129412, 1.0 ],
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 330.0, 180.0, 289.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}
,
									"style" : "",
									"text" : "coll CoastWorksSavedSettings.coll"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 330.0, 100.0, 55.0, 22.0 ],
									"style" : "",
									"text" : "midiPort"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 46.0, 70.0, 108.0, 22.0 ],
									"style" : "",
									"text" : "r cwSettingsDump"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 46.0, 100.0, 24.0, 22.0 ],
									"style" : "",
									"text" : "t b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 100.0, 210.0, 63.0, 22.0 ],
									"style" : "",
									"text" : "$1_saved"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-128",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 100.0, 140.0, 64.0, 22.0 ],
									"style" : "",
									"text" : "readagain"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-131",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 210.0, 310.0, 51.0, 22.0 ],
									"style" : "",
									"text" : "forward"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-132",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 100.0, 240.0, 84.0, 22.0 ],
									"style" : "",
									"text" : "prepend send"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-133",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 10.0, 10.0, 76.0, 22.0 ],
									"style" : "",
									"text" : "r cwSettings"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-134",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 46.0, 140.0, 41.0, 22.0 ],
									"style" : "",
									"text" : "dump"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-136",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 10.0, 40.0, 132.0, 22.0 ],
									"style" : "",
									"text" : "store $1 $2, writeagain"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.062745, 0.470588, 0.129412, 1.0 ],
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 10.0, 180.0, 289.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}
,
									"style" : "",
									"text" : "coll CoastWorksSavedSettings.coll"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-134", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"order" : 1,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"order" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-131", 0 ],
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-128", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-131", 0 ],
									"source" : [ "obj-132", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-136", 0 ],
									"source" : [ "obj-133", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-134", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"midpoints" : [ 19.5, 88.75, 19.5, 88.75 ],
									"source" : [ "obj-136", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-131", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-132", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-134", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-51", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-7", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-131", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 872.469482, 83.5, 64.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p Settings"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-126",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1048.515625, 900.0, 88.0, 22.0 ],
					"style" : "",
					"text" : "prepend mode"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-116",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1023.515625, 610.0, 55.0, 22.0 ],
					"style" : "",
					"text" : "r cwPort"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-112",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1030.5, 650.0, 95.0, 22.0 ],
					"style" : "",
					"text" : "r cwAMIDIChan"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.870588, 0.415686, 0.062745, 1.0 ],
					"id" : "obj-107",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 1000.5, 690.0, 49.0, 22.0 ],
					"style" : "",
					"text" : "ctlout 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 20.0, 220.0, 29.5, 22.0 ],
					"style" : "",
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1055.515625, 1070.0, 95.0, 22.0 ],
					"style" : "",
					"text" : "r cwAMIDIChan"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 280.0, 97.0, 22.0 ],
					"style" : "",
					"text" : "s cwAMIDIChan"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 967.015625, 1070.0, 55.0, 22.0 ],
					"style" : "",
					"text" : "r cwPort"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1341.849121, 370.0, 55.0, 22.0 ],
					"style" : "",
					"text" : "r cwPort"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1039.0, 203.5, 57.0, 22.0 ],
					"style" : "",
					"text" : "s cwPort"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 925.640625, 282.0, 55.0, 22.0 ],
					"style" : "",
					"text" : "r cwPort"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.039216, 0.305882, 0.698039, 1.0 ],
					"id" : "obj-147",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 5,
							"architecture" : "x86",
							"modernui" : 1
						}
,
						"rect" : [ 310.0, 89.0, 202.0, 307.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 2,
						"gridsize" : [ 10.0, 10.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 0,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 15,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "---TEMPLATE---",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-78",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 150.0, 150.0, 33.0, 22.0 ],
									"style" : "",
									"text" : "stop"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-75",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 120.0, 100.0, 22.0 ],
									"style" : "",
									"text" : "pack b i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 150.0, 61.0, 22.0 ],
									"style" : "",
									"text" : "$2, 64 80"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-71",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 30.0, 190.0, 40.0, 22.0 ],
									"style" : "",
									"text" : "line"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 65.0, 230.0, 74.0, 22.0 ],
									"style" : "",
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 30.0, 60.0, 24.0, 24.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 30.0, 90.0, 50.0, 22.0 ],
									"style" : "",
									"text" : "del 160"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-144",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 10.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-145",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 260.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-146",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 65.0, 260.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-145", 0 ],
									"midpoints" : [ 39.5, 47.5, 19.5, 47.5 ],
									"order" : 3,
									"source" : [ "obj-144", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"order" : 2,
									"source" : [ "obj-144", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 1 ],
									"midpoints" : [ 39.5, 51.5, 120.5, 51.5 ],
									"order" : 1,
									"source" : [ "obj-144", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"midpoints" : [ 39.5, 50.5, 159.5, 50.5 ],
									"order" : 0,
									"source" : [ "obj-144", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-146", 0 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"source" : [ "obj-78", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 131.5, 950.0, 105.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p ReturnToCenter"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.870588, 0.415686, 0.062745, 1.0 ],
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 1023.515625, 1110.0, 51.0, 22.0 ],
					"style" : "",
					"text" : "noteout"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 10.0,
					"id" : "obj-40",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1196.25, 263.625, 84.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 423.549469, 260.0, 65.0, 18.0 ],
					"style" : "",
					"text" : "Send Clock",
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"activeneedlecolor" : [ 0.529648, 0.52966, 0.529557, 1.0 ],
					"annotation" : "Tempo of outgoing MIDI clock.",
					"focusbordercolor" : [ 0.529648, 0.52966, 0.529557, 1.0 ],
					"hint" : "MIDI clock tempo ",
					"id" : "obj-38",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1313.583496, 100.0, 44.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 490.549438, 256.5, 44.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial[52]",
							"parameter_shortname" : "BPM",
							"parameter_type" : 0,
							"parameter_mmin" : 20.0,
							"parameter_mmax" : 300.0,
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "Tempo"
						}

					}
,
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"tribordercolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"varname" : "live.dial[31]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"annotation" : "Toggle MIDI clock send.",
					"hint" : "toggle MIDI clock",
					"id" : "obj-39",
					"maxclass" : "live.tab",
					"multiline" : 0,
					"num_lines_patching" : 1,
					"num_lines_presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1196.25, 290.0, 75.969398, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 421.049469, 280.0, 70.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.tab[48]",
							"parameter_shortname" : "live.tab",
							"parameter_type" : 2,
							"parameter_enum" : [ "Off", "On" ],
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "MIDI Clock Toggle"
						}

					}
,
					"spacing_x" : 3.0,
					"spacing_y" : 3.0,
					"varname" : "live.tab[30]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"annotation" : "Choose mode of kslider below.",
					"bordercolor" : [ 0.196078, 0.196078, 0.196078, 0.0 ],
					"focusbordercolor" : [ 0.0, 0.019608, 0.078431, 0.0 ],
					"hint" : "mode of kslider",
					"id" : "obj-15",
					"maxclass" : "live.tab",
					"multiline" : 0,
					"num_lines_patching" : 1,
					"num_lines_presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1048.515625, 750.5, 122.5, 69.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.549469, 285.0, 259.450531, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.tab[8]",
							"parameter_shortname" : "live.tab[5]",
							"parameter_type" : 2,
							"parameter_enum" : [ "Monophonic", "Polyphonic", "Touchscreen" ],
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "Kslider Mode"
						}

					}
,
					"spacing_x" : 3.0,
					"spacing_y" : 3.0,
					"varname" : "live.tab[42]"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"activeneedlecolor" : [ 0.529648, 0.52966, 0.529557, 1.0 ],
					"annotation" : "Send pitch bend.",
					"hint" : "send pitch bend",
					"id" : "obj-16",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 131.5, 889.125, 44.0, 53.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial[61]",
							"parameter_shortname" : "Bend",
							"parameter_type" : 0,
							"parameter_initial" : [ 64 ],
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "Pitch Bend"
						}

					}
,
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"triangle" : 1,
					"varname" : "live.dial[40]"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.960784, 0.827451, 0.156863, 1.0 ],
					"activeneedlecolor" : [ 0.529648, 0.52966, 0.529557, 1.0 ],
					"annotation" : "Send mod wheel (MIDI CC 1) (BETA NOTE: SEEMS TO ALWAYS SEND TO BOTH A AND B CIRCUITS.)",
					"hint" : "send mod wheel (BETA NOTE: SEEMS TO ALWAYS SEND TO BOTH A AND B CIRCUITS.)",
					"id" : "obj-29",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1131.5, 459.999969, 44.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 26.549469, 350.0, 44.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial[62]",
							"parameter_shortname" : "Mod",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "Mod Wheel"
						}

					}
,
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"varname" : "live.dial[41]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Send notes to circuit selected above.",
					"blackkeycolor" : [ 0.201912, 0.201912, 0.201912, 1.0 ],
					"hint" : "send notes",
					"id" : "obj-30",
					"maxclass" : "kslider",
					"mode" : 1,
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : 48,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1048.515625, 940.0, 286.0, 57.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 90.549469, 329.0, 550.0, 102.0 ],
					"range" : 37,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "kslider[3]",
							"parameter_shortname" : "kslider",
							"parameter_type" : 3,
							"parameter_invisible" : 1,
							"parameter_annotation_name" : "Keyboard"
						}

					}
,
					"style" : "",
					"varname" : "kslider[3]",
					"whitekeycolor" : [ 0.6, 0.6, 0.6, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-114",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 1196.25, 330.0, 79.0, 22.0 ],
					"style" : "",
					"text" : "select 1 0"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1291.583496, 330.0, 41.0, 22.0 ],
					"style" : "",
					"text" : "metro"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1291.583496, 370.0, 38.0, 22.0 ],
					"style" : "",
					"text" : "t 248"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1196.25, 370.0, 38.0, 22.0 ],
					"style" : "",
					"text" : "t 250"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1240.0, 370.0, 38.0, 22.0 ],
					"style" : "",
					"text" : "t 252"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.870588, 0.415686, 0.062745, 1.0 ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1196.25, 419.0, 50.0, 22.0 ],
					"style" : "",
					"text" : "midiout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-354",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 968.5, 43.5, 52.0, 22.0 ],
					"style" : "",
					"text" : "midiinfo"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.827451, 0.698039, 0.109804, 1.0 ],
					"id" : "obj-355",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 968.5, 13.5, 72.0, 22.0 ],
					"style" : "",
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-111",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 866.5, 282.0, 49.0, 22.0 ],
					"style" : "",
					"text" : "unpack"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-110",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 866.5, 250.0, 64.0, 22.0 ],
					"style" : "",
					"text" : "r cwCtlout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-109",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1039.0, 170.0, 79.0, 22.0 ],
					"style" : "",
					"text" : "prepend port"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.870588, 0.415686, 0.062745, 1.0 ],
					"id" : "obj-108",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 866.5, 320.0, 79.0, 22.0 ],
					"style" : "",
					"text" : "ctlout"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-104",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 720.0, 790.0, 66.0, 22.0 ],
					"style" : "",
					"text" : "s cwCtlout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-105",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 720.0, 760.0, 73.0, 22.0 ],
					"style" : "",
					"text" : "append 114"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
					"annotation" : "When On, tempo follows the rate of incoming MIDI clock.",
					"hint" : "toggle MIDI clock",
					"id" : "obj-106",
					"maxclass" : "live.tab",
					"num_lines_patching" : 2,
					"num_lines_presentation" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 720.0, 647.875, 41.031334, 44.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 330.549469, 190.0, 40.0, 40.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.tab[3]",
							"parameter_shortname" : "live.tab",
							"parameter_type" : 2,
							"parameter_enum" : [ "Off", "On" ],
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "MIDI Clock"
						}

					}
,
					"spacing_x" : 3.0,
					"spacing_y" : 3.0,
					"varname" : "live.tab[5]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-102",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 790.0, 66.0, 22.0 ],
					"style" : "",
					"text" : "s cwCtlout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-103",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 760.0, 73.0, 22.0 ],
					"style" : "",
					"text" : "append 118"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-100",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 577.0, 790.0, 66.0, 22.0 ],
					"style" : "",
					"text" : "s cwCtlout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-101",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 577.0, 760.0, 73.0, 22.0 ],
					"style" : "",
					"text" : "append 119"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-98",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 487.0, 790.0, 66.0, 22.0 ],
					"style" : "",
					"text" : "s cwCtlout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-99",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 487.0, 760.0, 73.0, 22.0 ],
					"style" : "",
					"text" : "append 117"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 345.0, 790.0, 66.0, 22.0 ],
					"style" : "",
					"text" : "s cwCtlout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 345.0, 760.0, 73.0, 22.0 ],
					"style" : "",
					"text" : "append 116"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.932223, 0.488857, 0.081836, 1.0 ],
					"activeneedlecolor" : [ 0.529648, 0.52966, 0.529557, 1.0 ],
					"annotation" : "Divisions of the Tempo In as reflected at the Clock Out. Does not affect tap tempo or MIDI Clock.",
					"focusbordercolor" : [ 0.529648, 0.52966, 0.529557, 1.0 ],
					"hint" : "divisions of Tempo In",
					"id" : "obj-96",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 345.0, 650.5, 44.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 143.549469, 192.25, 44.0, 36.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial[11]",
							"parameter_shortname" : "live.dial",
							"parameter_type" : 1,
							"parameter_mmin" : 1.0,
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "Temp Divisions"
						}

					}
,
					"showname" : 0,
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"tribordercolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"varname" : "live.dial[6]"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 190.0, 790.0, 66.0, 22.0 ],
					"style" : "",
					"text" : "s cwCtlout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 190.0, 760.0, 61.0, 22.0 ],
					"style" : "",
					"text" : "append 5"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 690.0, 250.0, 66.0, 22.0 ],
					"style" : "",
					"text" : "s cwCtlout"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-84",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 560.0, 250.0, 66.0, 22.0 ],
					"style" : "",
					"text" : "s cwCtlout"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 440.0, 250.0, 66.0, 22.0 ],
					"style" : "",
					"text" : "s cwCtlout"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-80",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 310.0, 250.0, 66.0, 22.0 ],
					"style" : "",
					"text" : "s cwCtlout"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 190.0, 250.0, 66.0, 22.0 ],
					"style" : "",
					"text" : "s cwCtlout"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.664245, 0.0, 0.045642, 1.0 ],
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 60.0, 250.0, 66.0, 22.0 ],
					"style" : "",
					"text" : "s cwCtlout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 690.0, 220.0, 73.0, 22.0 ],
					"style" : "",
					"text" : "append 112"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.932223, 0.488857, 0.081836, 1.0 ],
					"activeneedlecolor" : [ 0.529648, 0.52966, 0.529557, 1.0 ],
					"annotation" : "Sets the minimum velocity for the MIDI A circuit. Incoming velocities will be scaled from this value to max.",
					"focusbordercolor" : [ 0.529648, 0.52966, 0.529557, 1.0 ],
					"hint" : "MIDI A minimum velocity",
					"id" : "obj-28",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 690.4375, 116.25, 44.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 590.549438, 42.0, 50.0, 36.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial[4]",
							"parameter_shortname" : "live.dial",
							"parameter_type" : 1,
							"parameter_mmin" : 1.0,
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "Minimum Velocity"
						}

					}
,
					"showname" : 0,
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"tribordercolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"varname" : "live.dial[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 560.0, 220.0, 73.0, 22.0 ],
					"style" : "",
					"text" : "append 110"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.932223, 0.488857, 0.081836, 1.0 ],
					"activeneedlecolor" : [ 0.529648, 0.52966, 0.529557, 1.0 ],
					"annotation" : "Aftertouch range, in semitones, of the MIDI A circuit.",
					"focusbordercolor" : [ 0.529648, 0.52966, 0.529557, 1.0 ],
					"hint" : "MIDI A aftertouch range",
					"id" : "obj-26",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 560.0, 116.25, 44.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 520.549438, 42.0, 50.0, 36.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial[3]",
							"parameter_shortname" : "live.dial",
							"parameter_type" : 1,
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "Aftertouch Range"
						}

					}
,
					"showname" : 0,
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"tribordercolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"varname" : "live.dial[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 440.0, 220.0, 74.0, 22.0 ],
					"style" : "",
					"text" : "append 108"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 310.0, 220.0, 74.0, 22.0 ],
					"style" : "",
					"text" : "append 106"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
					"annotation" : "Gate Source for the MIDI A circuit. (Note = open when note on; Velocity = open when velocity > 50%; Mod = open when mod wheel > 50%. LFO rate set by Clock Out.)",
					"bordercolor" : [ 0.196078, 0.196078, 0.196078, 0.0 ],
					"focusbordercolor" : [ 0.0, 0.019608, 0.078431, 0.0 ],
					"hint" : "MIDI A gate source",
					"id" : "obj-23",
					"maxclass" : "live.tab",
					"num_lines_patching" : 4,
					"num_lines_presentation" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 310.0, 60.0, 60.0, 92.25 ],
					"presentation" : 1,
					"presentation_rect" : [ 340.549469, 40.0, 90.0, 40.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.tab[2]",
							"parameter_shortname" : "live.tab[2]",
							"parameter_type" : 2,
							"parameter_enum" : [ "Note", "Velocity", "Mod", "LFO" ],
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "Gate Source"
						}

					}
,
					"spacing_x" : 3.0,
					"spacing_y" : 3.0,
					"varname" : "live.tab[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 190.0, 220.0, 74.0, 22.0 ],
					"style" : "",
					"text" : "append 104"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 60.0, 220.0, 74.0, 22.0 ],
					"style" : "",
					"text" : "append 102"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Select the MIDI port of your 0-Coast.",
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"bgfillcolor_color1" : [ 0.529648, 0.529632, 0.529641, 1.0 ],
					"bgfillcolor_color2" : [ 0.529648, 0.529632, 0.529641, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_type" : "gradient",
					"fontface" : 1,
					"fontsize" : 10.0,
					"hint" : "0-Coast MIDI port",
					"id" : "obj-357",
					"items" : [ "AU DLS Synth 1", ",", "IAC Driver Bus 1", ",", "Scarlett 18i6 USB", ",", "iConnectMIDI4+ _Front", ",", "iConnectMIDI4+ _0Coast", ",", "iConnectMIDI4+ _VolcaBeats", ",", "iConnectMIDI4+ _Four", ",", "iConnectMIDI4+ _BananaAir", ",", "iConnectMIDI4+ _USB2", ",", "iConnectMIDI4+ _USBHost 1", ",", "iConnectMIDI4+ _USBHost 2", ",", "iConnectMIDI4+ _USBHost 3", ",", "iConnectMIDI4+ _USBHost 4", ",", "iConnectMIDI4+ _USBHost 5", ",", "iConnectMIDI4+ _USBHost 6", ",", "iConnectMIDI4+ _ETH 1", ",", "iConnectMIDI4+ _ETH 2", ",", "iConnectMIDI4+ _ETH 3", ",", "iConnectMIDI4+ _ETH 4", ",", "from Max 1", ",", "from Max 2" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 968.5, 85.5, 160.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 441.049469, 195.5, 180.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "umenu[8]",
							"parameter_shortname" : "umenu",
							"parameter_type" : 3,
							"parameter_invisible" : 1,
							"parameter_annotation_name" : "MIDI Port"
						}

					}
,
					"style" : "",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"truncate" : 2,
					"varname" : "umenu[8]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 10.0,
					"id" : "obj-351",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1024.0, 43.5, 94.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 484.049469, 180.0, 94.0, 18.0 ],
					"style" : "",
					"text" : "0-Coast MIDI Port",
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
					"annotation" : "Arpeggiator mode. Reg mode is a traditional arpeggiator, which plays any held notes in the order they are played, at the current Clock Rate. Latch mode adds notes in the order they are played and continues playing them in order after they are released. Playing any note a second time removes it from the arpeggio. ",
					"hint" : "Arpeggiator mode",
					"id" : "obj-281",
					"maxclass" : "live.tab",
					"num_lines_patching" : 2,
					"num_lines_presentation" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 577.0, 650.5, 38.94799, 44.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 260.549469, 190.0, 40.0, 40.499985 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.tab[10]",
							"parameter_shortname" : "live.tab",
							"parameter_type" : 2,
							"parameter_enum" : [ "Reg", "Latch" ],
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "Arpeggiator Mode"
						}

					}
,
					"spacing_x" : 3.0,
					"spacing_y" : 3.0,
					"varname" : "live.tab[6]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
					"annotation" : "Toggle the arpeggiator on/off.",
					"hint" : "toggle the arpeggiator on/off.",
					"id" : "obj-282",
					"maxclass" : "live.tab",
					"num_lines_patching" : 2,
					"num_lines_presentation" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 487.0, 650.5, 41.031334, 44.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 210.549469, 190.0, 40.0, 40.499985 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.tab[13]",
							"parameter_shortname" : "live.tab",
							"parameter_type" : 2,
							"parameter_enum" : [ "Off", "On" ],
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "Arpeggiator Toggle"
						}

					}
,
					"spacing_x" : 3.0,
					"spacing_y" : 3.0,
					"varname" : "live.tab[7]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 10.0,
					"id" : "obj-283",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 698.5, 12.25, 57.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 581.549438, 10.0, 68.0, 18.0 ],
					"style" : "",
					"text" : "Min Velocity",
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 10.0,
					"id" : "obj-284",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 564.5625, 12.25, 64.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 515.049438, 10.0, 61.0, 18.0 ],
					"style" : "",
					"text" : "Aftertouch",
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 10.0,
					"id" : "obj-285",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 442.5, 12.25, 69.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 441.049469, 10.0, 69.0, 18.0 ],
					"style" : "",
					"text" : "Bend Range",
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
					"annotation" : "CV Source for the MIDI A circuit. (LFO rate set by Clock Out.)",
					"bordercolor" : [ 0.196078, 0.196078, 0.196078, 0.0 ],
					"focusbordercolor" : [ 0.0, 0.019608, 0.078431, 0.0 ],
					"hint" : "MIDI A CV source",
					"id" : "obj-290",
					"maxclass" : "live.tab",
					"num_lines_patching" : 4,
					"num_lines_presentation" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 190.0, 60.0, 60.0, 92.25 ],
					"presentation" : 1,
					"presentation_rect" : [ 230.549469, 40.0, 90.0, 40.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.tab[20]",
							"parameter_shortname" : "live.tab[2]",
							"parameter_type" : 2,
							"parameter_enum" : [ "Note", "Velocity", "Mod", "LFO" ],
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "CV Source"
						}

					}
,
					"spacing_x" : 3.0,
					"spacing_y" : 3.0,
					"varname" : "live.tab[17]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
					"annotation" : "MIDI receive chanel for the MIDI A circuit.",
					"bordercolor" : [ 0.196078, 0.196078, 0.196078, 0.0 ],
					"focusbordercolor" : [ 0.0, 0.019608, 0.078431, 0.0 ],
					"hint" : "MIDI A channel",
					"id" : "obj-292",
					"maxclass" : "live.tab",
					"num_lines_patching" : 6,
					"num_lines_presentation" : 3,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 60.0, 60.0, 80.0, 92.25 ],
					"presentation" : 1,
					"presentation_rect" : [ 50.549469, 40.0, 160.0, 40.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.tab[19]",
							"parameter_shortname" : "live.tab",
							"parameter_type" : 2,
							"parameter_enum" : [ "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "All" ],
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "MIDI Channel"
						}

					}
,
					"spacing_x" : 3.0,
					"spacing_y" : 3.0,
					"varname" : "live.tab[19]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 10.0,
					"id" : "obj-294",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 720.0, 610.0, 63.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 319.049469, 160.750015, 63.0, 18.0 ],
					"style" : "",
					"text" : "MIDI Clock",
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 10.0,
					"id" : "obj-296",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 610.0, 44.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 18.549469, 161.0, 44.0, 18.0 ],
					"style" : "",
					"text" : "Legato",
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.952941, 0.564706, 0.098039, 1.0 ],
					"annotation" : "",
					"hint" : "legato mode toggle",
					"id" : "obj-297",
					"maxclass" : "live.tab",
					"num_lines_patching" : 2,
					"num_lines_presentation" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 30.0, 650.5, 41.031334, 44.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 18.549469, 192.25, 40.0, 40.499985 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.tab[61]",
							"parameter_shortname" : "live.tab",
							"parameter_type" : 2,
							"parameter_enum" : [ "Off", "On" ],
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "Legato Toggle"
						}

					}
,
					"spacing_x" : 3.0,
					"spacing_y" : 3.0,
					"varname" : "live.tab[21]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 10.0,
					"id" : "obj-298",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 490.0, 610.0, 67.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 220.549469, 161.0, 67.0, 18.0 ],
					"style" : "",
					"text" : "Arpeggiator",
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 10.0,
					"id" : "obj-300",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 60.0, 20.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.549469, 40.0, 20.0, 18.0 ],
					"style" : "",
					"text" : " A",
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 10.0,
					"id" : "obj-301",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 350.0, 610.0, 73.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 140.549469, 161.0, 61.0, 18.0 ],
					"style" : "",
					"text" : "Tempo Div",
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 10.0,
					"id" : "obj-302",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 190.0, 610.0, 66.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 70.549469, 161.0, 66.0, 18.0 ],
					"style" : "",
					"text" : "Portamento",
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 10.0,
					"id" : "obj-303",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 318.0, 12.25, 44.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 351.049469, 10.0, 69.0, 18.0 ],
					"style" : "",
					"text" : "Gate Source",
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 10.0,
					"id" : "obj-304",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 190.0, 12.25, 44.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 245.049469, 10.0, 61.0, 18.0 ],
					"style" : "",
					"text" : "CV Source",
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 10.0,
					"id" : "obj-305",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 66.625, 12.25, 50.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 93.549469, 10.0, 74.0, 18.0 ],
					"style" : "",
					"text" : "MIDI Channel",
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.932223, 0.488857, 0.081836, 1.0 ],
					"activeneedlecolor" : [ 0.529648, 0.52966, 0.529557, 1.0 ],
					"annotation" : "Portamento time, relative to the main clock, for both the MIDI A and MIDI B circuits. A setting of 50% makes the 0-COAST take a whole clock pulse to arrive to the next note.",
					"focusbordercolor" : [ 0.529648, 0.52966, 0.529557, 1.0 ],
					"hint" : "portamento time",
					"id" : "obj-306",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 190.0, 650.5, 44.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 83.549469, 192.25, 44.0, 36.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial[43]",
							"parameter_shortname" : "live.dial",
							"parameter_type" : 1,
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "Portamento"
						}

					}
,
					"showname" : 0,
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"tribordercolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"varname" : "live.dial[11]"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.932223, 0.488857, 0.081836, 1.0 ],
					"activeneedlecolor" : [ 0.529648, 0.52966, 0.529557, 1.0 ],
					"annotation" : "Pitch bend range, in semitones, of the MIDI A circuit. (This sets the entire range. If you want and octave up/down from center, for example, this value should be 24.)",
					"focusbordercolor" : [ 0.529648, 0.52966, 0.529557, 1.0 ],
					"hint" : "MIDI A pitch bend range",
					"id" : "obj-312",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 440.4375, 116.25, 44.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 450.549469, 40.0, 50.0, 36.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.dial[47]",
							"parameter_shortname" : "live.dial",
							"parameter_type" : 1,
							"parameter_unitstyle" : 0,
							"parameter_annotation_name" : "Bend Range"
						}

					}
,
					"showname" : 0,
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"tribordercolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
					"varname" : "live.dial[17]"
				}

			}
, 			{
				"box" : 				{
					"angle" : 269.355713,
					"grad1" : [ 0.199644, 0.199644, 0.199644, 1.0 ],
					"grad2" : [ 0.19663, 0.19663, 0.19663, 1.0 ],
					"id" : "obj-19",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 80.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.549469, 30.0, 640.0, 60.0 ],
					"proportion" : 0.39,
					"pt1" : [ 0.509901, 0.069565 ],
					"pt2" : [ 0.5, 0.95 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"angle" : 269.355713,
					"grad1" : [ 0.199644, 0.199644, 0.199644, 1.0 ],
					"grad2" : [ 0.19663, 0.19663, 0.19663, 1.0 ],
					"id" : "obj-369",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 40.0, 360.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.549469, 100.0, 640.0, 60.0 ],
					"proportion" : 0.39,
					"pt1" : [ 0.509901, 0.069565 ],
					"pt2" : [ 0.5, 0.95 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"angle" : 269.355713,
					"grad1" : [ 0.199644, 0.199644, 0.199644, 1.0 ],
					"grad2" : [ 0.19663, 0.19663, 0.19663, 1.0 ],
					"id" : "obj-97",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 425.0, 610.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 140.549469, 180.0, 50.0, 60.0 ],
					"proportion" : 0.39,
					"pt1" : [ 0.509901, 0.069565 ],
					"pt2" : [ 0.5, 0.95 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"angle" : 269.355713,
					"grad1" : [ 0.199644, 0.199644, 0.199644, 1.0 ],
					"grad2" : [ 0.19663, 0.19663, 0.19663, 1.0 ],
					"id" : "obj-17",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 76.0, 610.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.549469, 180.0, 60.0, 60.0 ],
					"proportion" : 0.39,
					"pt1" : [ 0.509901, 0.069565 ],
					"pt2" : [ 0.5, 0.95 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"angle" : 269.355713,
					"grad1" : [ 0.199644, 0.199644, 0.199644, 1.0 ],
					"grad2" : [ 0.19663, 0.19663, 0.19663, 1.0 ],
					"id" : "obj-13",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 560.0, 610.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 200.549469, 180.0, 110.0, 60.0 ],
					"proportion" : 0.39,
					"pt1" : [ 0.509901, 0.069565 ],
					"pt2" : [ 0.5, 0.95 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"angle" : 269.355713,
					"grad1" : [ 0.199644, 0.199644, 0.199644, 1.0 ],
					"grad2" : [ 0.19663, 0.19663, 0.19663, 1.0 ],
					"id" : "obj-314",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 255.625, 610.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 80.549469, 180.0, 50.0, 60.0 ],
					"proportion" : 0.39,
					"pt1" : [ 0.509901, 0.069565 ],
					"pt2" : [ 0.5, 0.95 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"angle" : 269.355713,
					"grad1" : [ 0.199644, 0.199644, 0.199644, 1.0 ],
					"grad2" : [ 0.19663, 0.19663, 0.19663, 1.0 ],
					"id" : "obj-36",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 190.4375, 907.0, 20.0, 20.0 ],
					"proportion" : 0.39,
					"pt1" : [ 0.509901, 0.069565 ],
					"pt2" : [ 0.5, 0.95 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"angle" : 269.355713,
					"grad1" : [ 0.199644, 0.199644, 0.199644, 1.0 ],
					"grad2" : [ 0.19663, 0.19663, 0.19663, 1.0 ],
					"id" : "obj-34",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1167.015625, 900.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.549469, 320.0, 640.0, 120.0 ],
					"proportion" : 0.39,
					"pt1" : [ 0.509901, 0.069565 ],
					"pt2" : [ 0.5, 0.95 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"angle" : 269.355713,
					"grad1" : [ 0.199644, 0.199644, 0.199644, 1.0 ],
					"grad2" : [ 0.19663, 0.19663, 0.19663, 1.0 ],
					"id" : "obj-31",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1280.583496, 263.625, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 410.549469, 250.0, 240.0, 60.0 ],
					"proportion" : 0.39,
					"pt1" : [ 0.509901, 0.069565 ],
					"pt2" : [ 0.5, 0.95 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"angle" : 269.355713,
					"grad1" : [ 0.199644, 0.199644, 0.199644, 1.0 ],
					"grad2" : [ 0.19663, 0.19663, 0.19663, 1.0 ],
					"id" : "obj-18",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1077.5, 471.312469, 20.0, 20.0 ],
					"proportion" : 0.39,
					"pt1" : [ 0.509901, 0.069565 ],
					"pt2" : [ 0.5, 0.95 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"angle" : 269.355713,
					"grad1" : [ 0.199644, 0.199644, 0.199644, 1.0 ],
					"grad2" : [ 0.19663, 0.19663, 0.19663, 1.0 ],
					"id" : "obj-43",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 279.5, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.549469, 250.0, 389.450531, 80.0 ],
					"proportion" : 0.39,
					"pt1" : [ 0.509901, 0.069565 ],
					"pt2" : [ 0.5, 0.95 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"angle" : 269.355713,
					"grad1" : [ 0.199644, 0.199644, 0.199644, 1.0 ],
					"grad2" : [ 0.19663, 0.19663, 0.19663, 1.0 ],
					"id" : "obj-47",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 321.0, 194.0, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 319.049469, 180.0, 63.0, 60.0 ],
					"proportion" : 0.39,
					"pt1" : [ 0.509901, 0.069565 ],
					"pt2" : [ 0.5, 0.95 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"color" : [ 0.141176, 0.141176, 0.141176, 1.0 ],
					"draw_tab_name" : 0,
					"id" : "obj-44",
					"ignoreclick" : 1,
					"maxclass" : "mira.frame",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 806.5, 12.25, 56.263737, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 661.098938, 470.0 ],
					"tabname" : "Coast Works"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"order" : 1,
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-380", 0 ],
					"order" : 0,
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 0 ],
					"source" : [ "obj-110", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 1 ],
					"source" : [ "obj-111", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 2 ],
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-114", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-114", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"midpoints" : [ 1033.015625, 639.6875, 1010.0, 639.6875 ],
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-357", 0 ],
					"midpoints" : [ 1138.469482, 205.5, 1248.984741, 205.5, 1248.984741, 74.5, 978.0, 74.5 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-292", 0 ],
					"midpoints" : [ 89.5, 211.5, 169.5, 211.5, 169.5, 49.0, 69.5, 49.0 ],
					"source" : [ "obj-140", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-290", 0 ],
					"midpoints" : [ 217.625, 211.5, 291.549591, 211.5, 291.549591, 49.0, 199.5, 49.0 ],
					"source" : [ "obj-141", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-312", 0 ],
					"midpoints" : [ 467.625, 211.5, 540.534058, 211.5, 540.534058, 105.25, 449.9375, 105.25 ],
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"midpoints" : [ 340.75, 211.0, 418.890686, 211.0, 418.890686, 49.0, 319.5, 49.0 ],
					"source" : [ "obj-143", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"midpoints" : [ 719.9375, 210.5, 790.737061, 210.5, 790.737061, 105.25, 699.9375, 105.25 ],
					"source" : [ "obj-144", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"midpoints" : [ 589.0625, 210.5, 670.03125, 210.5, 670.03125, 105.25, 569.5, 105.25 ],
					"source" : [ "obj-145", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"midpoints" : [ 227.0, 984.625, 246.0, 984.625, 246.0, 878.125, 141.0, 878.125 ],
					"source" : [ "obj-147", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-406", 1 ],
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 0 ],
					"order" : 1,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-430", 0 ],
					"order" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 1 ],
					"source" : [ "obj-155", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 0 ],
					"source" : [ "obj-155", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 1 ],
					"source" : [ "obj-156", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"order" : 0,
					"source" : [ "obj-159", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"order" : 1,
					"source" : [ "obj-159", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-147", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"order" : 1,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-143", 0 ],
					"order" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"order" : 1,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-145", 0 ],
					"order" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"order" : 1,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"order" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"order" : 1,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"order" : 1,
					"source" : [ "obj-281", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-378", 0 ],
					"order" : 0,
					"source" : [ "obj-281", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"source" : [ "obj-282", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-405", 1 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-141", 0 ],
					"order" : 0,
					"source" : [ "obj-290", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"order" : 1,
					"source" : [ "obj-290", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"order" : 0,
					"source" : [ "obj-292", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"order" : 1,
					"source" : [ "obj-292", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"order" : 2,
					"source" : [ "obj-292", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"order" : 1,
					"source" : [ "obj-297", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-379", 0 ],
					"order" : 0,
					"source" : [ "obj-297", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-385", 1 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-386", 1 ],
					"source" : [ "obj-30", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-376", 0 ],
					"order" : 0,
					"source" : [ "obj-306", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"order" : 1,
					"source" : [ "obj-306", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"order" : 0,
					"source" : [ "obj-312", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"order" : 1,
					"source" : [ "obj-312", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-361", 0 ],
					"midpoints" : [ 739.9375, 490.5, 810.737061, 490.5, 810.737061, 385.25, 719.9375, 385.25 ],
					"source" : [ "obj-342", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-363", 0 ],
					"midpoints" : [ 609.5, 490.5, 690.03125, 490.5, 690.03125, 385.25, 589.5, 385.25 ],
					"source" : [ "obj-343", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-373", 0 ],
					"midpoints" : [ 487.625, 491.5, 560.534058, 491.5, 560.534058, 385.25, 469.9375, 385.25 ],
					"source" : [ "obj-344", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-366", 0 ],
					"midpoints" : [ 359.5, 491.0, 438.890686, 491.0, 438.890686, 329.0, 339.5, 329.0 ],
					"source" : [ "obj-345", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-370", 0 ],
					"midpoints" : [ 237.625, 491.5, 311.549591, 491.5, 311.549591, 329.0, 219.5, 329.0 ],
					"source" : [ "obj-346", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-371", 0 ],
					"midpoints" : [ 109.5, 491.5, 189.5, 491.5, 189.5, 329.0, 89.5, 329.0 ],
					"source" : [ "obj-347", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-349", 0 ],
					"source" : [ "obj-348", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 0 ],
					"order" : 1,
					"source" : [ "obj-354", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-357", 0 ],
					"order" : 0,
					"source" : [ "obj-354", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-354", 0 ],
					"source" : [ "obj-355", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"order" : 1,
					"source" : [ "obj-357", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"order" : 0,
					"source" : [ "obj-357", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"order" : 2,
					"source" : [ "obj-357", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-350", 0 ],
					"source" : [ "obj-360", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-342", 0 ],
					"order" : 0,
					"source" : [ "obj-361", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-360", 0 ],
					"order" : 1,
					"source" : [ "obj-361", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-352", 0 ],
					"source" : [ "obj-362", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-343", 0 ],
					"order" : 0,
					"source" : [ "obj-363", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-362", 0 ],
					"order" : 1,
					"source" : [ "obj-363", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-353", 0 ],
					"source" : [ "obj-364", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-356", 0 ],
					"source" : [ "obj-365", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-345", 0 ],
					"order" : 0,
					"source" : [ "obj-366", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-365", 0 ],
					"order" : 1,
					"source" : [ "obj-366", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-358", 0 ],
					"source" : [ "obj-367", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-359", 0 ],
					"source" : [ "obj-368", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-387", 0 ],
					"order" : 2,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-405", 0 ],
					"order" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-429", 0 ],
					"order" : 1,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-346", 0 ],
					"order" : 0,
					"source" : [ "obj-370", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-367", 0 ],
					"order" : 1,
					"source" : [ "obj-370", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-347", 0 ],
					"order" : 0,
					"source" : [ "obj-371", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-348", 0 ],
					"order" : 2,
					"source" : [ "obj-371", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-368", 0 ],
					"order" : 1,
					"source" : [ "obj-371", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-344", 0 ],
					"order" : 0,
					"source" : [ "obj-373", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-364", 0 ],
					"order" : 1,
					"source" : [ "obj-373", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-306", 0 ],
					"midpoints" : [ 219.0, 749.5, 290.25, 749.5, 290.25, 637.5, 199.5, 637.5 ],
					"source" : [ "obj-376", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-281", 0 ],
					"midpoints" : [ 606.5, 750.666687, 666.5, 750.666687, 666.5, 639.5, 586.5, 639.5 ],
					"source" : [ "obj-378", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-297", 0 ],
					"midpoints" : [ 59.5, 750.666687, 139.166656, 750.666687, 139.166656, 639.5, 39.5, 639.5 ],
					"source" : [ "obj-379", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"midpoints" : [ 750.9375, 750.666687, 831.833313, 750.666687, 831.833313, 636.875, 729.5, 636.875 ],
					"source" : [ "obj-380", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"midpoints" : [ 371.5, 751.0, 433.0, 751.0, 433.0, 639.5, 354.5, 639.5 ],
					"source" : [ "obj-381", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-384", 2 ],
					"source" : [ "obj-382", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-384", 0 ],
					"source" : [ "obj-383", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-385", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-384", 0 ],
					"midpoints" : [ 1058.015625, 1051.050049, 1309.515625, 1051.050049 ],
					"source" : [ "obj-385", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 1 ],
					"midpoints" : [ 1300.015625, 1060.449951, 1049.015625, 1060.449951 ],
					"source" : [ "obj-386", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-384", 1 ],
					"source" : [ "obj-386", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-394", 0 ],
					"source" : [ "obj-387", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 0 ],
					"order" : 1,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"order" : 0,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-386", 0 ],
					"source" : [ "obj-395", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-385", 0 ],
					"source" : [ "obj-396", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-402", 0 ],
					"midpoints" : [ 1161.531372, 639.6875, 1141.0, 639.6875 ],
					"source" : [ "obj-400", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-402", 2 ],
					"source" : [ "obj-401", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-404", 0 ],
					"order" : 1,
					"source" : [ "obj-403", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-427", 0 ],
					"order" : 0,
					"source" : [ "obj-403", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"source" : [ "obj-405", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-402", 0 ],
					"midpoints" : [ 1141.0, 601.4375, 1141.0, 601.4375 ],
					"source" : [ "obj-405", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-409", 0 ],
					"midpoints" : [ 141.0, 1021.4375, 242.859375, 1021.4375 ],
					"source" : [ "obj-406", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-412", 0 ],
					"source" : [ "obj-406", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-409", 0 ],
					"midpoints" : [ 262.859375, 1059.6875, 242.859375, 1059.6875 ],
					"source" : [ "obj-407", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-409", 1 ],
					"source" : [ "obj-408", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-412", 0 ],
					"midpoints" : [ 132.859375, 1059.6875, 109.5, 1059.6875 ],
					"source" : [ "obj-410", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-412", 1 ],
					"source" : [ "obj-411", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-418", 0 ],
					"midpoints" : [ 701.0, 1021.4375, 816.0, 1021.4375 ],
					"source" : [ "obj-413", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-421", 0 ],
					"source" : [ "obj-413", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-418", 0 ],
					"midpoints" : [ 836.531372, 1059.6875, 816.0, 1059.6875 ],
					"source" : [ "obj-416", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-418", 2 ],
					"source" : [ "obj-417", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-421", 0 ],
					"midpoints" : [ 692.515625, 1059.6875, 669.5, 1059.6875 ],
					"source" : [ "obj-419", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 2 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-421", 2 ],
					"source" : [ "obj-420", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-413", 1 ],
					"source" : [ "obj-423", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"order" : 0,
					"source" : [ "obj-424", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-423", 0 ],
					"order" : 1,
					"source" : [ "obj-424", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-413", 0 ],
					"source" : [ "obj-425", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-406", 0 ],
					"source" : [ "obj-426", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-403", 0 ],
					"midpoints" : [ 1052.0, 561.0, 1120.25, 561.0, 1120.25, 448.999969, 1010.0, 448.999969 ],
					"source" : [ "obj-427", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 920.0, 565.0, 991.0, 565.0, 991.0, 448.999969, 880.0, 448.999969 ],
					"source" : [ "obj-429", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"midpoints" : [ 1077.015625, 890.125, 1180.515625, 890.125, 1180.515625, 737.0, 1058.015625, 737.0 ],
					"source" : [ "obj-430", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-433", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"midpoints" : [ 1253.015625, 859.25, 1317.890625, 859.25, 1317.890625, 719.458313, 1236.515625, 719.458313 ],
					"source" : [ "obj-434", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"midpoints" : [ 1345.75, 249.25, 1434.750244, 249.25, 1434.750244, 90.25, 1323.083496, 90.25 ],
					"source" : [ "obj-441", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-159", 0 ],
					"midpoints" : [ 1506.833496, 222.625, 1577.833496, 222.625, 1577.833496, 99.625, 1481.083496, 99.625 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-155", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-433", 0 ],
					"order" : 1,
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-434", 0 ],
					"order" : 0,
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"midpoints" : [ 1236.515625, 930.5, 1058.015625, 930.5 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 0 ],
					"order" : 1,
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-441", 0 ],
					"order" : 0,
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"midpoints" : [ 411.469482, 1021.4375, 513.328857, 1021.4375 ],
					"source" : [ "obj-69", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"midpoints" : [ 533.328857, 1059.6875, 513.328857, 1059.6875 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 1 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"midpoints" : [ 403.328857, 1059.6875, 379.969482, 1059.6875 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 1 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 1 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-381", 0 ],
					"order" : 0,
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"order" : 1,
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-424" : [ "live.text[1]", "live.text", 0 ],
			"obj-96" : [ "live.dial[11]", "live.dial", 0 ],
			"obj-29" : [ "live.dial[62]", "Mod", 0 ],
			"obj-281" : [ "live.tab[10]", "live.tab", 0 ],
			"obj-371" : [ "live.tab[29]", "live.tab", 0 ],
			"obj-373" : [ "live.dial[18]", "live.dial", 0 ],
			"obj-297" : [ "live.tab[61]", "live.tab", 0 ],
			"obj-357" : [ "umenu[8]", "umenu", 0 ],
			"obj-30" : [ "kslider[3]", "kslider", 0 ],
			"obj-282" : [ "live.tab[13]", "live.tab", 0 ],
			"obj-48" : [ "live.tab[50]", "live.tab[5]", 0 ],
			"obj-23" : [ "live.tab[2]", "live.tab[2]", 0 ],
			"obj-403" : [ "live.tab[11]", "live.tab[5]", 0 ],
			"obj-361" : [ "live.dial[13]", "live.dial", 0 ],
			"obj-306" : [ "live.dial[43]", "live.dial", 0 ],
			"obj-106" : [ "live.tab[3]", "live.tab", 0 ],
			"obj-159" : [ "live.tab[15]", "live.tab[5]", 0 ],
			"obj-87" : [ "live.dial[19]", "Touch", 0 ],
			"obj-363" : [ "live.dial[16]", "live.dial", 0 ],
			"obj-28" : [ "live.dial[4]", "live.dial", 0 ],
			"obj-370" : [ "live.tab[28]", "live.tab[2]", 0 ],
			"obj-37" : [ "live.tab[24]", "live.tab[5]", 0 ],
			"obj-290" : [ "live.tab[20]", "live.tab[2]", 0 ],
			"obj-292" : [ "live.tab[19]", "live.tab", 0 ],
			"obj-39" : [ "live.tab[48]", "live.tab", 0 ],
			"obj-312" : [ "live.dial[47]", "live.dial", 0 ],
			"obj-16" : [ "live.dial[61]", "Bend", 0 ],
			"obj-15" : [ "live.tab[8]", "live.tab[5]", 0 ],
			"obj-366" : [ "live.tab[25]", "live.tab[2]", 0 ],
			"obj-26" : [ "live.dial[3]", "live.dial", 0 ],
			"obj-38" : [ "live.dial[52]", "BPM", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "CoastWorksSavedSettings.coll",
				"bootpath" : "~/Documents/ Max/Coast Works/Coast Works/lib",
				"patcherrelativepath" : "./lib",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "cw.Param.maxpat",
				"bootpath" : "~/Documents/ Max/Coast Works/Coast Works/lib",
				"patcherrelativepath" : "./lib",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
		"bgfillcolor_type" : "gradient",
		"bgfillcolor_color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
		"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
		"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
		"bgfillcolor_angle" : 270.0,
		"bgfillcolor_proportion" : 0.39
	}

}
