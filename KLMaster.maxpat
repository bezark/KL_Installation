{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 607.0, 409.0, 972.0, 647.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
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
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 41.0, 43.0, 431.0, 321.0 ],
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
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 483.0, 61.5, 415.0, 302.5 ],
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [  ],
		"parameters" : 		{
			"obj-9::obj-39::obj-68" : [ "horizontal[4]", "horizontal", 0 ],
			"obj-9::obj-128::obj-33" : [ "pictctrl[7]", "pictctrl[1]", 0 ],
			"obj-9::obj-76::obj-33" : [ "pictctrl[67]", "pictctrl[1]", 0 ],
			"obj-9::obj-76::obj-39" : [ "pictctrl[68]", "pictctrl[1]", 0 ],
			"obj-9::obj-128::obj-39" : [ "pictctrl[6]", "pictctrl[1]", 0 ],
			"obj-9::obj-39::obj-24" : [ "range[2]", "range", 0 ],
			"obj-9::obj-76::obj-24" : [ "range[23]", "range", 0 ],
			"obj-9::obj-39::obj-39" : [ "pictctrl[4]", "pictctrl[1]", 0 ],
			"obj-9::obj-128::obj-68" : [ "horizontal[5]", "horizontal", 0 ],
			"obj-9::obj-76::obj-68" : [ "horizontal[2]", "horizontal", 0 ],
			"obj-9::obj-39::obj-37" : [ "vertical[4]", "vertical", 0 ],
			"obj-9::obj-39::obj-33" : [ "pictctrl[5]", "pictctrl[1]", 0 ],
			"obj-9::obj-128::obj-37" : [ "vertical[5]", "vertical", 0 ],
			"obj-9::obj-76::obj-37" : [ "vertical[2]", "vertical", 0 ],
			"obj-9::obj-128::obj-24" : [ "range[3]", "range", 0 ],
			"parameterbanks" : 			{

			}

		}
,
		"dependency_cache" : [ 			{
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
