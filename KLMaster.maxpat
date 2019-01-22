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
		"rect" : [ 62.0, 68.0, 1852.0, 990.0 ],
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
		"style" : "blueNight",
		"subpatcher_template" : "Default Max 7",
		"showontab" : 1,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 386.0, -60.0, 65.0, 22.0 ],
					"text" : "r toCloseB"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-7",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "errorReporting.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 971.0, 386.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 526.0, 375.0, 438.0, 330.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1411.0, 129.333343505859375, 83.0, 22.0 ],
					"text" : "qmetro 10000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1411.0, 182.0, 117.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 105.0, 475.0, 117.0, 22.0 ],
					"text" : "script processStatus"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1411.0, 74.666671752929688, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 49.0, 465.66668701171875, 49.0, 49.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-4",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "audio.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 906.0, 61.5, 415.0, 310.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 910.0, 42.5, 388.0, 321.5 ],
					"varname" : "audio",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 483.0, 28.0, 63.0, 22.0 ],
					"text" : "script stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 476.0, -60.0, 63.0, 22.0 ],
					"text" : "closebang"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-9",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "Vis.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 458.0, 375.0, 481.0, 174.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 39.0, 531.0, 481.0, 174.0 ],
					"varname" : "Vis",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-1",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "WikiScraper.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 41.0, 43.0, 431.0, 321.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 41.0, 43.0, 431.0, 321.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-3",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "Pi+Poems.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 39.0, 371.0, 312.0, 73.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 39.0, 371.0, 312.0, 73.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-5",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "hue.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 483.0, 61.5, 415.0, 302.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 480.0, 42.5, 415.0, 321.5 ],
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"order" : 2,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"order" : 1,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"order" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"order" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"order" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-5::obj-1::obj-70::obj-122" : [ "slider", "slider", 0 ],
			"obj-9::obj-39::obj-37" : [ "vertical[4]", "vertical", 0 ],
			"obj-5::obj-1::obj-70::obj-77" : [ "slider[1]", "slider[1]", 0 ],
			"obj-9::obj-39::obj-39" : [ "pictctrl[4]", "pictctrl[1]", 0 ],
			"obj-9::obj-39::obj-24" : [ "range[2]", "range", 0 ],
			"obj-5::obj-3::obj-53" : [ "slider[5]", "slider", 0 ],
			"obj-5::obj-3::obj-62" : [ "slider[6]", "slider[3]", 0 ],
			"obj-4::obj-5::obj-13" : [ "amxd~", "amxd~", 0 ],
			"obj-4::obj-7::obj-29" : [ "amxd~[4]", "amxd~", 0 ],
			"obj-9::obj-39::obj-68" : [ "horizontal[4]", "horizontal", 0 ],
			"obj-4::obj-7::obj-11" : [ "amxd~[2]", "amxd~[2]", 0 ],
			"obj-4::obj-7::obj-31" : [ "live.gain~[1]", "live.gain~[1]", 0 ],
			"obj-5::obj-1::obj-70::obj-114" : [ "slider[2]", "slider[2]", 0 ],
			"obj-5::obj-3::obj-69" : [ "slider[8]", "slider[1]", 0 ],
			"obj-9::obj-39::obj-33" : [ "pictctrl[5]", "pictctrl[1]", 0 ],
			"obj-4::obj-7::obj-18" : [ "live.gain~", "live.gain~", 0 ],
			"obj-4::obj-8::obj-13" : [ "amxd~[1]", "amxd~", 0 ],
			"obj-5::obj-1::obj-70::obj-115" : [ "slider[3]", "slider[3]", 0 ],
			"obj-4::obj-7::obj-2" : [ "amxd~[3]", "amxd~[1]", 0 ],
			"obj-5::obj-3::obj-64" : [ "slider[7]", "slider[2]", 0 ],
			"parameterbanks" : 			{

			}

		}
,
		"dependency_cache" : [ 			{
				"name" : "hue.maxpat",
				"bootpath" : "~/Documents/GitHub/KL_Installation/hue",
				"patcherrelativepath" : "./hue",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "hue.js",
				"bootpath" : "~/Documents/GitHub/KL_Installation/hue",
				"patcherrelativepath" : "./hue",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "n4m.monitor.maxpat",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "resize_n4m_monitor_patcher.js",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "fit_jweb_to_bounds.js",
				"bootpath" : "C74:/packages/Node For Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "Pi+Poems.maxpat",
				"bootpath" : "~/Documents/GitHub/KL_Installation",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "WikiScraper.maxpat",
				"bootpath" : "~/Documents/GitHub/KL_Installation",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "serverMax.js",
				"bootpath" : "~/Documents/GitHub/KL_Installation",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "Vis.maxpat",
				"bootpath" : "~/Documents/GitHub/KL_Installation",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "brcosa.genjit",
				"bootpath" : "~/Library/Application Support/Cycling '74/Max 8/Examples/jitter-examples/gen",
				"patcherrelativepath" : "../../../Library/Application Support/Cycling '74/Max 8/Examples/jitter-examples/gen",
				"type" : "gJIT",
				"implicit" : 1
			}
, 			{
				"name" : "vz.pixl8r.maxpat",
				"bootpath" : "C74:/packages/vizzie/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "data-handler.maxpat",
				"bootpath" : "C74:/packages/vizzie/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vzgl-object.maxpat",
				"bootpath" : "C74:/packages/vizzie/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vizzie-global.js",
				"bootpath" : "C74:/packages/vizzie/code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "video-handler.maxpat",
				"bootpath" : "C74:/packages/vizzie/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vzgl-routemat.maxpat",
				"bootpath" : "C74:/packages/vizzie/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vzgl-disable.maxpat",
				"bootpath" : "C74:/packages/vizzie/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "duotone.genjit",
				"bootpath" : "~/Documents/GitHub/KL_Installation",
				"patcherrelativepath" : ".",
				"type" : "gJIT",
				"implicit" : 1
			}
, 			{
				"name" : "KLRightMask.png",
				"bootpath" : "~/Documents/GitHub/KL_Installation",
				"patcherrelativepath" : ".",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "audio.maxpat",
				"bootpath" : "~/Documents/GitHub/KL_Installation",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "audio.js",
				"bootpath" : "~/Documents/GitHub/KL_Installation",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "voiceBoi.maxpat",
				"bootpath" : "~/Documents/GitHub/KL_Installation",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "Poly Vocoder.amxd.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "audio-synth.maxpat",
				"bootpath" : "~/Documents/GitHub/KL_Installation",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ChamberVerb.amxd.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "waves_kl_2019.wav",
				"bootpath" : "~/Documents/GitHub/KL_Installation/assets-audio",
				"patcherrelativepath" : "./assets-audio",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "errorReporting.maxpat",
				"bootpath" : "~/Documents/GitHub/KL_Installation",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "errors.js",
				"bootpath" : "~/Documents/GitHub/KL_Installation",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "blueNight",
				"default" : 				{
					"patchlinecolor" : [ 0.317647, 0.654902, 0.976471, 0.9 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"textcolor_inverse" : [ 0.849573, 1.0, 0.926902, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ],
		"bgcolor" : [ 0.089381, 0.096932, 0.115358, 1.0 ],
		"editing_bgcolor" : [ 0.089381, 0.096932, 0.115358, 1.0 ]
	}

}
