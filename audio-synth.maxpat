{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 3,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 117.0, 79.0, 955.0, 737.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 1062.0, 126.333343505859375, 32.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1062.0, 92.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1137.0, 175.0, 147.0, 22.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 27.0, 291.33331298828125, 124.0, 35.0 ],
					"text" : "read KL-MUSIC-2019.mid"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1142.0, 45.333343505859375, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 113.5, 17.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1142.0, 99.66668701171875, 32.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-34",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 453.0, 35.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-32",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 35.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 309.5, 531.3333740234375, 48.0, 136.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 89.5, 98.5, 48.0, 136.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_mmin" : -70.0,
							"parameter_longname" : "live.gain~[1]",
							"parameter_initial_enable" : 1,
							"parameter_mmax" : 6.0,
							"parameter_initial" : [ -30.209619687607805 ],
							"parameter_shortname" : "live.gain~[1]",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 30.0, 379.5, 48.0, 136.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 32.5, 98.5, 48.0, 136.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_mmin" : -70.0,
							"parameter_longname" : "live.gain~",
							"parameter_initial_enable" : 1,
							"parameter_mmax" : 6.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 1,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-11",
					"lockeddragscroll" : 0,
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 4,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "" ],
					"patching_rect" : [ 453.0, 401.3333740234375, 403.0, 196.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "amxd~[2]",
							"parameter_shortname" : "amxd~[2]",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"patchername" : "ChamberVerb.amxd",
						"patchername_fallback" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Chamberverb/ChamberVerb.amxd"
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "max~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"name" : "ChamberVerb.amxd",
							"origname" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Chamberverb/ChamberVerb.amxd",
							"valuedictionary" : 							{
								"parameter_values" : 								{
									"1_delay" : 148.316533433070788,
									"1_feedback" : 61.0,
									"2_delay" : 150.602757905511709,
									"2_feedback" : 51.0,
									"3_delay" : 58.672441944881861,
									"3_feedback" : 60.0,
									"45_delay" : 91.445668291338549,
									"45_feedback" : 59.0,
									"45_moddepth" : 9.921259842519685,
									"45_modfreq" : 0.433070866141733,
									"67_delay" : 198.433070866141748,
									"67_feedback" : 66.0,
									"filter_cutoff" : 20000.0,
									"live.toggle" : 1.0,
									"wet_dry" : 97.0
								}

							}

						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "ChamberVerb.amxd",
									"origin" : "ChamberVerb.amxd",
									"type" : "amxd",
									"subtype" : "Undefined",
									"embed" : 0,
									"snapshot" : 									{
										"name" : "ChamberVerb.amxd",
										"origname" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Chamberverb/ChamberVerb.amxd",
										"valuedictionary" : 										{
											"parameter_values" : 											{
												"1_delay" : 148.316533433070788,
												"1_feedback" : 61.0,
												"2_delay" : 150.602757905511709,
												"2_feedback" : 51.0,
												"3_delay" : 58.672441944881861,
												"3_feedback" : 60.0,
												"45_delay" : 91.445668291338549,
												"45_feedback" : 59.0,
												"45_moddepth" : 9.921259842519685,
												"45_modfreq" : 0.433070866141733,
												"67_delay" : 198.433070866141748,
												"67_feedback" : 66.0,
												"filter_cutoff" : 20000.0,
												"live.toggle" : 1.0,
												"wet_dry" : 97.0
											}

										}

									}
,
									"fileref" : 									{
										"name" : "ChamberVerb.amxd",
										"filename" : "ChamberVerb.amxd.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "2109456a1c6e0ed8d4ece5d0a7d1cd6c"
									}

								}
 ]
						}

					}
,
					"text" : "amxd~ ChamberVerb.amxd",
					"varname" : "amxd~[2]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 1,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-2",
					"lockeddragscroll" : 0,
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 4,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "" ],
					"patching_rect" : [ 453.0, 164.333343505859375, 418.0, 196.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "amxd~[1]",
							"parameter_shortname" : "amxd~[1]",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"patchername" : "Poly Vocoder.amxd",
						"patchername_fallback" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Poly Vocoder.amxd"
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "max~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"name" : "Poly Vocoder.amxd",
							"origname" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Poly Vocoder.amxd",
							"valuedictionary" : 							{
								"parameter_values" : 								{
									"Bus" : 0.0,
									"Midi" : 1.0,
									"AmbienceThreshold" : 0.0,
									"Atten" : 1.0,
									"CorrectionAmount" : 100.0,
									"CorrectionThreshold" : 0.0,
									"Dry/Wet" : 100.0,
									"Fade" : 5011.871990064824786,
									"Gain" : 0.0,
									"Latency" : 1.0,
									"PreGain" : 0.0,
									"Quality" : 0.0,
									"Shift" : 0.0,
									"SibilanceThreshold" : 100.0,
									"Spread" : 50.0,
									"Pattern" : 0.0,
									"blob" : 									{
										"Chord" : [ 59, 80, 60, 80, 62, 80, 64, 80, 65, 80, 67, 80, 69, 80, 74, 80 ],
										"Storage" : [ 											{
												"pattrstorage" : 												{
													"name" : "u953001153",
													"slots" : 													{
														"2" : 														{
															"id" : 2,
															"data" : 															{
																"Chord" : [ 57, 18, 60, 18, 64, 18, 67, 22 ]
															}

														}

													}

												}

											}
 ]
									}

								}

							}

						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Poly Vocoder.amxd",
									"origin" : "Poly Vocoder.amxd",
									"type" : "amxd",
									"subtype" : "Undefined",
									"embed" : 0,
									"snapshot" : 									{
										"name" : "Poly Vocoder.amxd",
										"origname" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Poly Vocoder.amxd",
										"valuedictionary" : 										{
											"parameter_values" : 											{
												"Bus" : 0.0,
												"Midi" : 1.0,
												"AmbienceThreshold" : 0.0,
												"Atten" : 1.0,
												"CorrectionAmount" : 100.0,
												"CorrectionThreshold" : 0.0,
												"Dry/Wet" : 100.0,
												"Fade" : 5011.871990064824786,
												"Gain" : 0.0,
												"Latency" : 1.0,
												"PreGain" : 0.0,
												"Quality" : 0.0,
												"Shift" : 0.0,
												"SibilanceThreshold" : 100.0,
												"Spread" : 50.0,
												"Pattern" : 0.0,
												"blob" : 												{
													"Chord" : [ 59, 80, 60, 80, 62, 80, 64, 80, 65, 80, 67, 80, 69, 80, 74, 80 ],
													"Storage" : [ 														{
															"pattrstorage" : 															{
																"name" : "u953001153",
																"slots" : 																{
																	"2" : 																	{
																		"id" : 2,
																		"data" : 																		{
																			"Chord" : [ 57, 18, 60, 18, 64, 18, 67, 22 ]
																		}

																	}

																}

															}

														}
 ]
												}

											}

										}

									}
,
									"fileref" : 									{
										"name" : "Poly Vocoder.amxd",
										"filename" : "Poly Vocoder.amxd.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "f2e8f1e612af5dda67f3ba7effbbac7e"
									}

								}
 ]
						}

					}
,
					"text" : "amxd~ \"Poly Vocoder.amxd\"",
					"varname" : "amxd~[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 453.0, 99.66668701171875, 40.0, 22.0 ],
					"text" : "*~ 0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 30.0, 99.66668701171875, 40.0, 22.0 ],
					"text" : "*~ 0.5"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 1,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-29",
					"lockeddragscroll" : 0,
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 4,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "" ],
					"patching_rect" : [ 30.0, 164.333343505859375, 418.0, 196.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "amxd~",
							"parameter_shortname" : "amxd~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"patchername" : "Poly Vocoder.amxd",
						"patchername_fallback" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Poly Vocoder.amxd"
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "max~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"name" : "Poly Vocoder.amxd",
							"origname" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Poly Vocoder.amxd",
							"valuedictionary" : 							{
								"parameter_values" : 								{
									"Bus" : 0.0,
									"Midi" : 1.0,
									"AmbienceThreshold" : 0.0,
									"Atten" : 1.0,
									"CorrectionAmount" : 100.0,
									"CorrectionThreshold" : 0.0,
									"Dry/Wet" : 100.0,
									"Fade" : 4881.889763779530767,
									"Gain" : 0.0,
									"Latency" : 1.0,
									"PreGain" : 0.0,
									"Quality" : 0.0,
									"Shift" : 0.0,
									"SibilanceThreshold" : 100.0,
									"Spread" : 100.0,
									"Pattern" : 0.0,
									"blob" : 									{
										"Chord" : [ 59, 80, 60, 80, 62, 80, 64, 80, 65, 80, 67, 80, 69, 80, 74, 80 ],
										"Storage" : [ 											{
												"pattrstorage" : 												{
													"name" : "u091000433",
													"slots" : 													{
														"2" : 														{
															"id" : 2,
															"data" : 															{
																"Chord" : [ -1 ]
															}

														}
,
														"3" : 														{
															"id" : 3,
															"data" : 															{
																"Chord" : [ -1 ]
															}

														}

													}

												}

											}
 ]
									}

								}

							}

						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Poly Vocoder.amxd",
									"origin" : "Poly Vocoder.amxd",
									"type" : "amxd",
									"subtype" : "Undefined",
									"embed" : 0,
									"snapshot" : 									{
										"name" : "Poly Vocoder.amxd",
										"origname" : "C74:/packages/Max for Live/patchers/Max Audio Effect/Poly Vocoder.amxd",
										"valuedictionary" : 										{
											"parameter_values" : 											{
												"Bus" : 0.0,
												"Midi" : 1.0,
												"AmbienceThreshold" : 0.0,
												"Atten" : 1.0,
												"CorrectionAmount" : 100.0,
												"CorrectionThreshold" : 0.0,
												"Dry/Wet" : 100.0,
												"Fade" : 4881.889763779530767,
												"Gain" : 0.0,
												"Latency" : 1.0,
												"PreGain" : 0.0,
												"Quality" : 0.0,
												"Shift" : 0.0,
												"SibilanceThreshold" : 100.0,
												"Spread" : 100.0,
												"Pattern" : 0.0,
												"blob" : 												{
													"Chord" : [ 59, 80, 60, 80, 62, 80, 64, 80, 65, 80, 67, 80, 69, 80, 74, 80 ],
													"Storage" : [ 														{
															"pattrstorage" : 															{
																"name" : "u091000433",
																"slots" : 																{
																	"2" : 																	{
																		"id" : 2,
																		"data" : 																		{
																			"Chord" : [ -1 ]
																		}

																	}
,
																	"3" : 																	{
																		"id" : 3,
																		"data" : 																		{
																			"Chord" : [ -1 ]
																		}

																	}

																}

															}

														}
 ]
												}

											}

										}

									}
,
									"fileref" : 									{
										"name" : "Poly Vocoder.amxd",
										"filename" : "Poly Vocoder.amxd.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "f2e8f1e612af5dda67f3ba7effbbac7e"
									}

								}
 ]
						}

					}
,
					"text" : "amxd~ \"Poly Vocoder.amxd\"",
					"varname" : "amxd~",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1011.0, 175.0, 25.0, 22.0 ],
					"text" : "t b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1062.0, 285.0, 62.0, 22.0 ],
					"text" : "midiflush"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1062.0, 175.0, 59.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 27.0, 257.33331298828125, 124.0, 23.0 ],
					"text" : "start 512"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 1062.0, 250.0, 29.5, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 32.5, 58.666656494140625, 105.0, 23.0 ],
					"text" : "seq"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1182.0, 45.333343505859375, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 32.5, 17.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 658.3333740234375, 55.0, 22.0 ],
					"text" : "dac~ 3 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 562.3333740234375, 55.0, 22.0 ],
					"text" : "dac~ 1 2"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 1 ],
					"midpoints" : [ 590.5, 594.3333740234375, 416.75, 594.3333740234375, 416.75, 498.3333740234375, 348.0, 498.3333740234375 ],
					"source" : [ "obj-11", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"midpoints" : [ 462.5, 594.3333740234375, 415.25, 594.3333740234375, 415.25, 498.3333740234375, 319.0, 498.3333740234375 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 1 ],
					"midpoints" : [ 46.75, 525.0, 294.0, 525.0, 294.0, 375.0, 654.5, 375.0 ],
					"order" : 0,
					"source" : [ "obj-18", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 39.5, 525.0, 294.0, 525.0, 294.0, 384.0, 462.5, 384.0 ],
					"order" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"midpoints" : [ 46.75, 549.0, 75.5, 549.0 ],
					"order" : 1,
					"source" : [ "obj-18", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 1,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 1 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [ 1071.5, 147.416671752929688, 1020.5, 147.416671752929688 ],
					"order" : 1,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"order" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [ 1020.5, 233.416671752929688, 1071.5, 233.416671752929688 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"midpoints" : [ 1082.0, 283.0, 1306.75, 283.0, 1306.75, 34.333343505859375, 1191.5, 34.333343505859375 ],
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"source" : [ "obj-31", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 1 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"midpoints" : [ 1151.5, 162.0, 1071.5, 162.0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 1146.5, 237.0, 1071.5, 237.0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"midpoints" : [ 1084.5, 161.166671752929688, 1146.5, 161.166671752929688 ],
					"source" : [ "obj-44", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 2 ],
					"order" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 2 ],
					"order" : 1,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-29" : [ "amxd~", "amxd~", 0 ],
			"obj-18" : [ "live.gain~", "live.gain~", 0 ],
			"obj-11" : [ "amxd~[2]", "amxd~[2]", 0 ],
			"obj-31" : [ "live.gain~[1]", "live.gain~[1]", 0 ],
			"obj-2" : [ "amxd~[1]", "amxd~[1]", 0 ],
			"parameterbanks" : 			{

			}

		}
,
		"dependency_cache" : [ 			{
				"name" : "Poly Vocoder.amxd.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../../../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "ChamberVerb.amxd.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../../../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
