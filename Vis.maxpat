{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 79.0, 652.0, 787.0 ],
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
		"style" : "",
		"subpatcher_template" : "",
		"showontab" : 1,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 850.0, 191.0, 282.0, 22.0 ],
					"text" : "pack 0. 0. -0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 850.0, 87.0, 365.0, 22.0 ],
					"text" : "t b b s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1023.0, 153.0, 104.0, 22.0 ],
					"text" : "scale 0. 1 -1.3 1.3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 850.0, 153.0, 91.0, 22.0 ],
					"text" : "scale 0. 1 -2. 2."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1023.0, 121.17022705078125, 141.0, 22.0 ],
					"text" : "jstrigger (Math.random())"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 850.0, 121.17022705078125, 141.0, 22.0 ],
					"text" : "jstrigger (Math.random())"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-180",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 644.3333740234375, 50.62982177734375, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "scale",
					"id" : "obj-178",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 644.3333740234375, 87.0, 177.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-160",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 557.800048828125, 153.0, 61.0, 22.0 ],
					"text" : "enable $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-156",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 557.800048828125, 124.20001220703125, 29.5, 22.0 ],
					"text" : "!= 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-153",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 557.800048828125, 89.05560302734375, 75.0, 22.0 ],
					"text" : "r piActivated"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-146",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 975.5, 50.0, 60.0, 22.0 ],
					"text" : "r toWords"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-145",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1192.3333740234375, 233.0, 75.0, 22.0 ],
					"text" : "prepend text"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 850.0, 233.0, 97.0, 22.0 ],
					"text" : "prepend position"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 259.0, 640.0, 480.0 ],
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
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"hidden" : 1,
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 85.0, 104.87921142578125, 64.0, 23.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 104.87921142578125, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 131.87921142578125, 48.0, 23.0 ],
									"text" : "fontlist"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-97",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 185.87921142578125, 74.0, 23.0 ],
									"text" : "tosymbol"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-99",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 213.87921142578125, 85.0, 23.0 ],
									"text" : "prepend font"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-100",
									"items" : [ ".SF Compact Display Heavy", ",", ".SF NS Rounded Black", ",", ".SF Compact Text Medium", ",", ".SF Compact Rounded Bold", ",", ".SF NS Rounded Semibold", ",", ".SF NS Text Condensed Bold", ",", "Apple SD Gothic Neo Regular", ",", ".Apple SD Gothic NeoI Regular", ",", "Apple SD Gothic Neo Medium", ",", ".Apple SD Gothic NeoI Medium", ",", "Apple SD Gothic Neo SemiBold", ",", ".Apple SD Gothic NeoI SemiBold", ",", "Apple SD Gothic Neo Bold", ",", ".Apple SD Gothic NeoI Bold", ",", "Apple SD Gothic Neo Light", ",", ".Apple SD Gothic NeoI Light", ",", "Apple SD Gothic Neo Thin", ",", ".Apple SD Gothic NeoI Thin", ",", "Apple SD Gothic Neo UltraLight", ",", ".Apple SD Gothic NeoI UltraLight", ",", "Apple SD GothicNeo ExtraBold", ",", "Apple SD GothicNeo ExtraBold", ",", "Apple SD Gothic Neo Heavy", ",", ".Apple SD Gothic NeoI Heavy", ",", ".SF NS Rounded Regular", ",", ".SF NS Rounded Bold", ",", "System Font", ",", "Heiti TC Medium", ",", "Heiti SC Medium", ",", ".SF Compact Rounded Medium", ",", ".SF NS Text Condensed Medium", ",", "Symbol", ",", "Hiragino Sans GB W3", ",", ".Hiragino Sans GB Interface W3", ",", "Hiragino Sans GB W6", ",", ".Hiragino Sans GB Interface W6", ",", ".LastResort", ",", "Hiragino Sans W8", ",", ".Hiragino Kaku Gothic Interface W8", ",", "Hiragino Kaku Gothic Std W8", ",", "Hiragino Kaku Gothic StdN W8", ",", ".SF NS Display Condensed Semibold", ",", "PingFang HK Regular", ",", "PingFang TC Regular", ",", "PingFang SC Regular", ",", "PingFang HK Medium", ",", "PingFang TC Medium", ",", "PingFang SC Medium", ",", "PingFang HK Semibold", ",", "PingFang TC Semibold", ",", "PingFang SC Semibold", ",", "PingFang HK Light", ",", "PingFang TC Light", ",", "PingFang SC Light", ",", "PingFang HK Thin", ",", "PingFang TC Thin", ",", "PingFang SC Thin", ",", "PingFang HK Ultralight", ",", "PingFang TC Ultralight", ",", "PingFang SC Ultralight", ",", ".PingFang HK Regular", ",", ".PingFang TC Regular", ",", ".PingFang SC Regular", ",", ".PingFang HK Medium", ",", ".PingFang TC Medium", ",", ".PingFang SC Medium", ",", ".PingFang HK Semibold", ",", ".PingFang TC Semibold", ",", ".PingFang SC Semibold", ",", ".PingFang HK Light", ",", ".PingFang TC Light", ",", ".PingFang SC Light", ",", ".PingFang HK Thin", ",", ".PingFang TC Thin", ",", ".PingFang SC Thin", ",", ".PingFang HK Ultralight", ",", ".PingFang TC Ultralight", ",", ".PingFang SC Ultralight", ",", "Noteworthy Light", ",", "Noteworthy Bold", ",", ".SF Compact Rounded Black", ",", "Hiragino Sans W9", ",", ".Hiragino Kaku Gothic Interface W9", ",", ".SF NS Display Condensed Black", ",", ".SF Compact Rounded Semibold", ",", ".SF NS Rounded Thin", ",", ".SF NS Symbols Black", ",", "Optima Regular", ",", "Optima Bold", ",", "Optima Italic", ",", "Optima ExtraBlack", ",", ".SF Compact Rounded Thin", ",", "Zapf Dingbats", ",", ".SF NS Display Condensed Thin", ",", "Monaco", ",", "Apple Braille", ",", ".SF NS Symbols Ultralight", ",", "Avenir Next Condensed Bold", ",", "Avenir Next Condensed Demi Bold", ",", "Avenir Next Condensed Italic", ",", "Avenir Next Condensed Medium", ",", "Avenir Next Condensed Regular", ",", "Avenir Next Condensed Heavy", ",", "Avenir Next Condensed Ultra Light", ",", "Lucida Grande", ",", ".Lucida Grande UI Regular", ",", ".Lucida Grande UI Bold", ",", ".SF NS Text Condensed Semibold", ",", "System Font", ",", "Thonburi", ",", "Thonburi Light", ",", ".Arabic UI Display Black", ",", ".Arabic UI Display Bold", ",", ".Arabic UI Display Heavy", ",", ".Arabic UI Display Light", ",", ".Arabic UI Display Medium", ",", ".Arabic UI Display Regular", ",", ".Arabic UI Display Semibold", ",", ".Arabic UI Display Thin", ",", ".Arabic UI Display Ultralight", ",", "Apple Braille Outline 6 Dot", ",", "Kohinoor Telugu", ",", "Kohinoor Telugu Semibold", ",", "Kohinoor Telugu Medium", ",", "Kohinoor Telugu Light", ",", ".SF Compact Display Light", ",", ".SF Compact Text Regular", ",", "Apple Braille Pinpoint 6 Dot", ",", ".SF NS Display Condensed Bold", ",", "System Font Medium Italic", ",", "Avenir Book", ",", "Avenir Book Oblique", ",", "Avenir Black", ",", "Avenir Black Oblique", ",", "Avenir Heavy", ",", "Avenir Heavy Oblique", ",", "Avenir Light", ",", "Avenir Light Oblique", ",", "Avenir Medium", ",", "Avenir Medium Oblique", ",", "Avenir Oblique", ",", "Avenir Roman", ",", ".SF Compact Display Semibold", ",", "Kohinoor Devanagari Regular", ",", "Kohinoor Devanagari Medium", ",", "Kohinoor Devanagari Semibold", ",", "Kohinoor Devanagari Bold", ",", "Kohinoor Devanagari Light", ",", ".SF NS Display Condensed Regular", ",", ".SF NS Text Condensed Heavy", ",", "Hiragino Mincho ProN W3", ",", "Hiragino Mincho Pro W3", ",", "Hiragino Mincho ProN W6", ",", "Hiragino Mincho Pro W6", ",", "System Font Semibold Italic", ",", ".SF Compact Display Medium", ",", ".SF Compact Rounded Ultralight", ",", ".SF NS Rounded Heavy", ",", "Avenir Next Bold", ",", "Avenir Next Demi Bold", ",", "Avenir Next Italic", ",", "Avenir Next Medium", ",", "Avenir Next Regular", ",", "Avenir Next Heavy", ",", "Avenir Next Ultra Light", ",", ".SF Compact Display Black", ",", ".SF Compact Rounded Regular", ",", ".Aqua Kana", ",", ".SF NS Rounded Medium", ",", "Palatino", ",", ".SF Compact Display Regular", ",", "Apple Symbols", ",", "System Font Black Italic", ",", "Noto Nastaliq Urdu", ",", ".Noto Nastaliq Urdu UI", ",", "Heiti TC Light", ",", "Heiti SC Light", ",", ".SF Compact Rounded Heavy", ",", ".SF NS Display Condensed Medium", ",", "Geeza Pro Regular", ",", "Geeza Pro Bold", ",", ".Geeza Pro Interface Regular", ",", ".Geeza Pro Interface Bold", ",", ".Geeza Pro Interface Light", ",", ".Geeza Pro PUA", ",", "System Font Ultralight Italic", ",", ".SF NS Symbols Medium", ",", ".SF NS Symbols Regular", ",", ".SF NS Symbols Heavy", ",", ".SF Compact Text Semibold", ",", ".SF Compact Text Italic", ",", ".SF Compact Text Light", ",", ".SF NS Text Condensed Regular", ",", ".SF NS Display Condensed Heavy", ",", "Hiragino Sans W7", ",", ".Hiragino Kaku Gothic Interface W7", ",", "Courier", ",", "Courier Oblique", ",", ".SF Compact Display Bold", ",", ".SF Compact Text Bold", ",", ".SF Compact Rounded Light", ",", ".SF NS Symbols Bold", ",", "System Font Thin G2", ",", "Times Roman", ",", "Times Bold", ",", "Times Italic", ",", "System Font Thin G3", ",", ".SF NS Display Condensed Ultralight", ",", "Hiragino Maru Gothic Pro W4", ",", "Hiragino Maru Gothic ProN W4", ",", "Hiragino Sans W6", ",", ".Hiragino Kaku Gothic Interface W6", ",", "Hiragino Kaku Gothic ProN W6", ",", "Hiragino Kaku Gothic Pro W6", ",", "Hiragino Sans W4", ",", ".Hiragino Kaku Gothic Interface W4", ",", ".SF NS Symbols Light", ",", "System Font Thin G1", ",", ".SF Compact Display Ultralight", ",", ".SF Compact Text Heavy", ",", ".SF NS Display Condensed Light", ",", "Hiragino Sans W5", ",", ".Hiragino Kaku Gothic Interface W5", ",", "Marker Felt Thin", ",", "Marker Felt Wide", ",", "Apple Braille Pinpoint 8 Dot", ",", ".SF NS Rounded Ultralight", ",", ".Keyboard", ",", "Hiragino Sans W1", ",", ".Hiragino Kaku Gothic Interface W1", ",", "Geneva", ",", "System Font Thin G4", ",", ".Arabic UI Text Regular", ",", ".Arabic UI Text Medium", ",", ".Arabic UI Text Semibold", ",", ".Arabic UI Text Bold", ",", ".Arabic UI Text Heavy", ",", ".Arabic UI Text Light", ",", ".SF NS Text Condensed Light", ",", ".SF NS Rounded Light", ",", "System Font Thin Italic", ",", "Arial Hebrew", ",", "Arial Hebrew Light", ",", ".Arial Hebrew Desk Interface", ",", ".Arial Hebrew Desk Interface Light", ",", "Arial Hebrew Scholar", ",", "Arial Hebrew Scholar Light", ",", "Apple Braille Outline 8 Dot", ",", "Hiragino Sans W0", ",", ".Hiragino Kaku Gothic Interface W0", ",", "Hiragino Sans W2", ",", ".Hiragino Kaku Gothic Interface W2", ",", "System Font Heavy Italic", ",", ".SF NS Symbols Thin", ",", "System Font Light Italic", ",", "Kohinoor Bangla", ",", "Kohinoor Bangla Semibold", ",", "Kohinoor Bangla Medium", ",", "Kohinoor Bangla Light", ",", ".SF Compact Display Thin", ",", ".SF NS Symbols Semibold", ",", "Hiragino Sans W3", ",", ".Hiragino Kaku Gothic Interface W3", ",", "Hiragino Kaku Gothic ProN W3", ",", "Hiragino Kaku Gothic Pro W3", ",", "Al Bayan Plain", ",", ".Al Bayan PUA Plain", ",", "Webdings", ",", "Source Sans Pro Light", ",", "Kozuka Gothic Pr6N EL", ",", "Nueva Std Italic", ",", "Rockwell", ",", "Zapfino", ",", "Adobe Fan Heiti Std B", ",", "Georgia", ",", "Savoye LET Plain:1.0", ",", "Savoye LET Plain CC.:1.0", ",", "PT Sans", ",", "PT Sans Narrow", ",", "PT Sans Caption", ",", "Bodoni 72 Smallcaps Book", ",", "Myriad Arabic", ",", "Sukhumvit Set Thin", ",", "Sukhumvit Set Light", ",", "Sukhumvit Set Text", ",", "Sukhumvit Set Medium", ",", "Sukhumvit Set Semi Bold", ",", "Sukhumvit Set Bold", ",", "Silom", ",", "Prestige Elite Std Bold", ",", "Kozuka Mincho Pro R", ",", "Kefa Regular", ",", "Kefa Bold", ",", "Nadeem Regular", ",", ".Nadeem PUA", ",", "KufiStandardGK Regular", ",", ".KufiStandardGK PUA", ",", "OCR A Std", ",", "Bradley Hand Bold", ",", "Lithos Pro", ",", "Kozuka Gothic Pr6N M", ",", "Kozuka Mincho Pro H", ",", "STIXGeneral-Italic", ",", "Kozuka Gothic Pro R", ",", "Kannada Sangam MN", ",", "Papyrus Condensed", ",", "Papyrus", ",", "Seravek", ",", "Seravek Medium", ",", "Seravek Light", ",", "Seravek ExtraLight", ",", "AppleGothic Regular", ",", "Iowan Old Style Roman", ",", "Iowan Old Style Bold", ",", "Iowan Old Style Italic", ",", "Iowan Old Style Black", ",", "Iowan Old Style Titling", ",", "Adobe Myungjo Std M", ",", "DIN Condensed Bold", ",", "Kozuka Mincho Pr6N M", ",", "Kailasa Regular", ",", "Kailasa Bold", ",", "Charter Roman", ",", "Charter Italic", ",", "Charter Bold", ",", "Charter Black", ",", "Farisi Regular", ",", "Kozuka Mincho Pr6N H", ",", "Chaparral Pro", ",", "Trebuchet MS", ",", "Mishafi Regular", ",", "Letter Gothic Std Bold", ",", "Kozuka Mincho Pro EL", ",", "Marion Regular", ",", "Marion Italic", ",", "Marion Bold", ",", "Kozuka Gothic Pro B", ",", "Trattatello", ",", "Sinhala MN", ",", "Corsiva Hebrew", ",", "Big Caslon Medium", ",", "GB18030 Bitmap", ",", "Letter Gothic Std Medium", ",", "Adobe Garamond Pro", ",", "Al Nile", ",", ".Al Nile PUA", ",", "STIXIntegralsUpSm-Regular", ",", "Superclarendon Regular", ",", "Superclarendon Italic", ",", "Superclarendon Light", ",", "Superclarendon Bold", ",", "Superclarendon Black", ",", "Baghdad Regular", ",", ".Baghdad PUA", ",", "STIXGeneral-Regular", ",", "Kozuka Mincho Pro L", ",", "Athelas Regular", ",", "Athelas Italic", ",", "Athelas Bold", ",", "STIXIntegralsUpD-Bold", ",", "American Typewriter", ",", "American Typewriter Light", ",", "American Typewriter Semibold", ",", "American Typewriter Condensed", ",", "American Typewriter Condensed Light", ",", "Kozuka Mincho Pr6N B", ",", "Kozuka Mincho Pr6N L", ",", "Lao Sangam MN", ",", "Brush Script Std Medium", ",", "Luminari", ",", "STIXVariants-Regular", ",", "Malayalam MN", ",", "STIXSizeOneSym-Bold", ",", "Muna Regular", ",", ".Muna PUA", ",", "Muna Bold", ",", "Muna Black", ",", ".Muna PUA Black", ",", "Times New Roman", ",", "Brush Script MT Italic", ",", "Bodoni 72 Oldstyle Book", ",", "Bodoni 72 Oldstyle Bold", ",", "Charlemagne Std Bold", ",", "Myanmar MN", ",", "Source Sans Pro", ",", "Arial Unicode MS", ",", "Telugu MN", ",", "Myanmar Sangam MN", ",", "Chalkduster", ",", "STIXIntegralsUpSm-Bold", ",", "STIXIntegralsUpD-Regular", ",", "Devanagari Sangam MN", ",", "Phosphate Inline", ",", "Phosphate Solid", ",", "Apple Chancery", ",", "Kozuka Mincho Pro B", ",", "Tekton Pro Bold Extended", ",", "AppleMyungjo Regular", ",", "STIXSizeOneSym-Regular", ",", "Myriad Pro Semibold", ",", "Futura Medium", ",", "Futura Bold", ",", "Futura Condensed Medium", ",", "Futura Condensed ExtraBold", ",", "Copperplate", ",", "Copperplate Light", ",", "PT Mono", ",", "Farah Regular", ",", ".Farah PUA", ",", "Malayalam Sangam MN", ",", "Chalkboard SE Light", ",", "Chalkboard SE Regular", ",", "Chalkboard SE Bold", ",", "Lithos Pro Black", ",", "ITF Devanagari Book", ",", "ITF Devanagari Bold", ",", "ITF Devanagari Demi", ",", "ITF Devanagari Light", ",", "ITF Devanagari Medium", ",", "ITF Devanagari Marathi Book", ",", "ITF Devanagari Marathi Bold", ",", "ITF Devanagari Marathi Demi", ",", "ITF Devanagari Marathi Light", ",", "ITF Devanagari Marathi Medium", ",", "Orator Std Medium", ",", "Bangla MN", ",", "Kozuka Mincho Pro M", ",", "STIXNonUnicode-Bold", ",", "Arial Narrow", ",", "Birch Std", ",", "Myriad Pro", ",", "Bangla Sangam MN", ",", "Tamil MN", ",", "Gurmukhi Sangam MN", ",", "Gujarati MT", ",", "Diwan Kufi Regular", ",", ".Diwan Kufi PUA", ",", "Chaparral Pro Light Italic", ",", "Courier New", ",", "Wingdings 3", ",", "Wingdings 2", ",", "Adobe Song Std L", ",", "Hoefler Text Ornaments", ",", "Minion Pro Bold Cond", ",", "Tamil Sangam MN", ",", "Bodoni Ornaments", ",", "Trajan Pro 3", ",", "Myriad Hebrew", ",", "Cochin", ",", "Skia", ",", "Devanagari MT", ",", "Kannada MN", ",", "Impact", ",", "Kokonor Regular", ",", "Kozuka Gothic Pro H", ",", "Nueva Std Bold Condensed", ",", "New Peninim MT", ",", "New Peninim MT Inclined", ",", "New Peninim MT Bold Inclined", ",", "STIXIntegralsUp-Bold", ",", "Gurmukhi MN", ",", "STIXSizeThreeSym-Bold", ",", "Tekton Pro Bold Oblique", ",", "Blackoak Std", ",", "Adobe Hebrew Bold", ",", "Adobe Fangsong Std R", ",", "Arial", ",", "Diwan Thuluth Regular", ",", "Ayuthaya", ",", "STIXIntegralsUp-Regular", ",", "Sinhala Sangam MN", ",", "Khmer Sangam MN", ",", "PT Serif", ",", "STIXSizeThreeSym-Regular", ",", "Snell Roundhand", ",", "Snell Roundhand Black", ",", "Adobe Caslon Pro", ",", "Minion Pro", ",", "Source Sans Pro ExtraLight", ",", "Chalkboard", ",", "Adobe Arabic Bold", ",", "Adobe Devanagari", ",", "Minion Pro Semibold", ",", "Kozuka Gothic Pr6N H", ",", "STIXNonUnicode-Regular", ",", "Mshtakan", ",", "Mshtakan Oblique", ",", "Letter Gothic Std Bold Slanted", ",", "Adobe Arabic Regular", ",", "Tekton Pro Bold", ",", "Letter Gothic Std Slanted", ",", "Lao MN", ",", "Sana Regular", ",", ".Sana PUA", ",", "Arial Black", ",", "Adobe Arabic Italic", ",", "Nueva Std Condensed", ",", "Adobe Heiti Std R", ",", "Comic Sans MS", ",", "Adobe Hebrew Italic", ",", "Source Sans Pro Semibold", ",", "Hoefler Text", ",", "Hoefler Text Black", ",", "Adobe Kaiti Std R", ",", "Adobe Gurmukhi", ",", "DIN Alternate Bold", ",", "Wingdings", ",", "Sathu", ",", "Gujarati Sangam MN", ",", "STIXSizeTwoSym-Bold", ",", "Tahoma", ",", "Euphemia UCAS", ",", "Plantagenet Cherokee", ",", "Didot", ",", "Kozuka Gothic Pr6N R", ",", "Adobe Gothic Std B", ",", "STIXIntegralsSm-Regular", ",", "STIXNonUnicode-Italic", ",", "STIXSizeFourSym-Regular", ",", "Tekton Pro Bold Condensed", ",", "Kozuka Gothic Pr6N L", ",", "Arial Rounded MT Bold", ",", "Hobo Std Medium", ",", "STIXSizeTwoSym-Regular", ",", "Minion Pro Medium", ",", "Khmer MN", ",", "Kozuka Mincho Pr6N EL", ",", "STIXGeneral-BoldItalic", ",", "Krungthep", ",", "Kozuka Gothic Pro EL", ",", "Adobe Ming Std L", ",", "Oriya MN", ",", "STIXSizeFourSym-Bold", ",", "STIXIntegralsSm-Bold", ",", "Adobe Hebrew Regular", ",", "Gurmukhi MT", ",", "Al Tarikh Regular", ",", ".Al Tarikh PUA", ",", "STIXNonUnicode-BoldItalic", ",", "Raanana", ",", "Andale Mono", ",", "Kozuka Mincho Pr6N R", ",", "Gill Sans", ",", "Gill Sans SemiBold", ",", "Gill Sans UltraBold", ",", "Gill Sans Light", ",", "Nueva Std Bold", ",", "Kozuka Gothic Pr6N B", ",", "Mishafi Gold Regular", ",", "Adobe Naskh Medium", ",", "Herculanum", ",", "Waseem Regular", ",", "Waseem Light", ",", "Source Sans Pro Black", ",", "Kozuka Gothic Pro L", ",", "PT Serif Caption", ",", "STIXVariants-Bold", ",", "STIXSizeFiveSym-Regular", ",", "Kozuka Gothic Pro M", ",", "Adobe Caslon Pro Semibold", ",", "SignPainter-HouseScript", ",", "SignPainter-HouseScript Semibold", ",", "Poplar Std Black", ",", "Oriya Sangam MN", ",", "STIXGeneral-Bold", ",", "Verdana", ",", "Myriad Pro Bold Condensed", ",", "STIXIntegralsD-Bold", ",", "Songti SC Black", ",", "Songti SC Bold", ",", "Songti TC Bold", ",", "Songti SC Light", ",", "STSong", ",", "Songti TC Light", ",", "Songti SC Regular", ",", "Songti TC Regular", ",", "DecoType Naskh Regular", ",", ".DecoType Naskh PUA", ",", "Myriad Pro Condensed", ",", "GhostmeatBack-Regular", ",", "AmarilloUSAF", ",", "Ghostmeat-Regular", ",", "Captain Howdy", ",", "VT220", ",", "GhostmeatFront-Regular", ",", "Blok Heavy", ",", "Bienetresocial", ",", "Easily amused", ",", "PirulenRg-Regular", ",", "GoodTimesRg-Regular", ",", "Kraut-type-a-fuck", ",", "Senor Saturno", ",", "Cavorting", ",", "Kingthings Trypewriter 2", ",", "Menlo Regular", ",", "Menlo Bold", ",", "Menlo Italic", ",", "Helvetica Neue", ",", "Helvetica Neue Condensed Bold", ",", "Helvetica Neue UltraLight", ",", "Helvetica Neue Light", ",", "Helvetica Neue Condensed Black", ",", "Helvetica Neue Medium", ",", "Helvetica Neue Thin", ",", ".Helvetica Neue DeskInterface Regular", ",", ".Helvetica Neue DeskInterface Bold", ",", ".Helvetica Neue DeskInterface Italic", ",", ".Helvetica Neue DeskInterface Medium P4", ",", ".Helvetica Neue DeskInterface Medium Italic P4", ",", ".Helvetica Neue DeskInterface Light", ",", ".Helvetica Neue DeskInterface Thin", ",", ".Helvetica Neue DeskInterface UltraLight", ",", ".Helvetica Neue DeskInterface Heavy", ",", "Apple Color Emoji", ",", ".Apple Color Emoji UI", ",", "Helvetica", ",", "Helvetica Oblique", ",", "Helvetica Light", ",", "Helvetica Light Oblique", ",", "Beirut Regular", ",", ".Beirut PUA", ",", "Bodoni 72 Book", ",", "Bodoni 72 Bold", ",", "Baskerville", ",", "Baskerville SemiBold", ",", "InaiMathi", ",", "Telugu Sangam MN", ",", "Microsoft Sans Serif", ",", "Damascus Regular", ",", ".Damascus PUA", ",", "Damascus Light", ",", ".Damascus PUA Light", ",", "Damascus Medium", ",", ".Damascus PUA Medium", ",", "Damascus Bold", ",", "Damascus Semi Bold", ",", ".Damascus PUA Semi Bold", ",", "STIXIntegralsD-Regular", ",", "Shree Devanagari 714" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 157.87921142578125, 139.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-34",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 296.87921142578125, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 0 ],
									"midpoints" : [ 119.5, 179.879226684570312, 59.5, 179.879226684570312 ],
									"source" : [ "obj-100", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"hidden" : 1,
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-100", 0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-99", 0 ],
									"source" : [ "obj-97", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-99", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 697.5, 50.62982177734375, 35.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p fint"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 644.3333740234375, 277.0, 366.0, 35.0 ],
					"text" : "jit.gl.text3d @gl_color 1. 1. 1. 1. @mat_diffuse 1. 1. 1. 1. @color 1. 1. 1. 1. @depth 0. @align 1 @lighting_enable 0 @scale 0.2 0.2 0.2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 256.0, 108.0, 150.0, 20.0 ],
					"text" : "@rect 0 0 1920 1200"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 576.0, 716.0, 173.0, 22.0 ],
					"text" : "jit.gl.cornerpin @drawto KLLeft"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 576.0, 612.0, 70.0, 22.0 ],
					"text" : "jit.gl.texture"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 576.0, 680.0, 874.0, 22.0 ],
					"text" : "jit.gl.cornerpin @drawto KLRight @lower_left 0.003646 1.003333 @upper_left 0.025 0.013333 @lower_right 0.932292 0.934167 @upper_right 0.901563 0.210833"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-10",
					"maxclass" : "jit.fpsgui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 378.0, 228.0, 80.0, 35.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "bang", "" ],
					"patching_rect" : [ 26.0, 221.0, 334.0, 49.0 ],
					"text" : "jit.world KLRight @erase_color 0. 0. 0. 1. @windowposition 0 0 @name KLRight @fullscreen 1 @enable 1 @size 1920 1200 @fsaa 1 @fsmenubar 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 4,
					"outlettype" : [ "int", "int", "int", "int" ],
					"patching_rect" : [ 26.0, 51.0, 50.5, 22.0 ],
					"text" : "key"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 26.0, 86.0, 43.0, 22.0 ],
					"text" : "sel 92"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "jit.fpsgui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 378.0, 156.0, 80.0, 35.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 26.0, 119.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "bang", "" ],
					"patching_rect" : [ 26.0, 156.0, 334.0, 49.0 ],
					"text" : "jit.world KLLeft @fsaa 1 @erase_color 0. 0. 0. 1. @name KLLeft @enable 1 @size 1920 1080 @windowposition 1920 0 @rect 1920 0 3840 1080 @fsmenubar 0 @fullscreen 1"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"midpoints" : [ 193.0, 215.0, 370.25, 215.0, 370.25, 152.0, 387.5, 152.0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"midpoints" : [ 193.0, 280.0, 369.25, 280.0, 369.25, 217.0, 387.5, 217.0 ],
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-145", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"order" : 1,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"order" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 0 ],
					"source" : [ "obj-153", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-160", 0 ],
					"source" : [ "obj-156", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-160", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-178", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-178", 0 ],
					"source" : [ "obj-180", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"order" : 1,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 1 ],
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-145", 0 ],
					"source" : [ "obj-87", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"source" : [ "obj-87", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 0 ],
					"source" : [ "obj-88", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
