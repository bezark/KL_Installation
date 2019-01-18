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
		"rect" : [ 3927.0, 73.0, 972.0, 647.0 ],
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
					"patching_rect" : [ 483.0, 4.0, 63.0, 22.0 ],
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
					"presentation_rect" : [ 458.0, 375.0, 481.0, 174.0 ],
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
					"presentation_rect" : [ 483.0, 61.5, 415.0, 302.5 ],
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-2", 0 ]
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
					"destination" : [ "obj-5", 0 ],
					"order" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-9::obj-76::obj-68" : [ "horizontal[2]", "horizontal", 0 ],
			"obj-5::obj-1::obj-70::obj-115" : [ "slider[3]", "slider[3]", 0 ],
			"obj-9::obj-39::obj-37" : [ "vertical[4]", "vertical", 0 ],
			"obj-9::obj-128::obj-24" : [ "range[3]", "range", 0 ],
			"obj-5::obj-3::obj-69" : [ "slider[8]", "slider[1]", 0 ],
			"obj-9::obj-76::obj-37" : [ "vertical[2]", "vertical", 0 ],
			"obj-5::obj-3::obj-62" : [ "slider[6]", "slider[3]", 0 ],
			"obj-5::obj-1::obj-70::obj-77" : [ "slider[1]", "slider[1]", 0 ],
			"obj-9::obj-39::obj-24" : [ "range[2]", "range", 0 ],
			"obj-9::obj-128::obj-68" : [ "horizontal[5]", "horizontal", 0 ],
			"obj-9::obj-39::obj-68" : [ "horizontal[4]", "horizontal", 0 ],
			"obj-9::obj-128::obj-37" : [ "vertical[5]", "vertical", 0 ],
			"obj-9::obj-76::obj-33" : [ "pictctrl[67]", "pictctrl[1]", 0 ],
			"obj-5::obj-1::obj-70::obj-114" : [ "slider[2]", "slider[2]", 0 ],
			"obj-9::obj-39::obj-33" : [ "pictctrl[5]", "pictctrl[1]", 0 ],
			"obj-9::obj-76::obj-24" : [ "range[23]", "range", 0 ],
			"obj-9::obj-128::obj-39" : [ "pictctrl[6]", "pictctrl[1]", 0 ],
			"obj-9::obj-76::obj-39" : [ "pictctrl[68]", "pictctrl[1]", 0 ],
			"obj-5::obj-1::obj-70::obj-122" : [ "slider", "slider", 0 ],
			"obj-5::obj-3::obj-53" : [ "slider[5]", "slider", 0 ],
			"obj-5::obj-3::obj-64" : [ "slider[7]", "slider[2]", 0 ],
			"obj-9::obj-128::obj-33" : [ "pictctrl[7]", "pictctrl[1]", 0 ],
			"obj-9::obj-39::obj-39" : [ "pictctrl[4]", "pictctrl[1]", 0 ],
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
				"name" : "brcosa.genjit",
				"bootpath" : "~/Library/Application Support/Cycling '74/Max 8/Examples/jitter-examples/gen",
				"patcherrelativepath" : "../../../Library/Application Support/Cycling '74/Max 8/Examples/jitter-examples/gen",
				"type" : "gJIT",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "blueNight",
				"default" : 				{
					"textcolor_inverse" : [ 0.849573, 1.0, 0.926902, 1.0 ],
					"patchlinecolor" : [ 0.317647, 0.654902, 0.976471, 0.9 ],
					"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ]
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
