function getKnowledgeLost(page) {


    const $ = cheerio.load(page);

    let tds = $("td.diff-deletedline");
    // let name = $("#firstHeading").data;
    let name = $("#firstHeading")[0].firstChild.data.split(":")[0];
    let dels = {};

    dels[name] = [];

    for (let x = 0; x < tds.length; x++) {
        //console.log(x);
        if (tds[x].firstChild != null && tds[x].firstChild.children.length > 1) {
            cellCont = tds[x].firstChild.children;

            for (y in cellCont) {
                if (cellCont[y].type == "tag" && cellCont[y].name == "del") {

                    //console.log("INLINE: " + cellCont[y].firstChild.data);

                    // dels += "\t..." + cellCont[y].firstChild.data + "...";

                    dels[name].push(cellCont[y].firstChild.data);

                }
            }
        } else if (tds[x].firstChild != null && tds[x].firstChild.children.length == 1) {

            //console.log("WHOLE: " + tds[x].firstChild.firstChild.data);

            // dels += "\n" + tds[x].firstChild.firstChild.data;
            dels[name].push(tds[x].firstChild.firstChild.data);

        } else {

            //console.log("NULL")

            // dels += "\n_______________\n";
            dels[name].push("___");

        }

    }

    //console.log(dels);
    dels = JSON.stringify(dels);

    const options = {
        hostname: 'localhost',
        port: 3666,
        path: '',
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'Content-Length': Buffer.byteLength(dels)
        }
    };

    const req = http.request(options, (res) => {

        res.on('end', () => {


        })

        res.on('error', (e) => {
            console.log(e.name);
        })
    })
    req.write(new Buffer(dels));
    req.end;

}

function processNegList(list) {
    return new Promise((resolve, reject) => {
        for (x in list) {
            let beenThere = false;

            for (let y = 0; y < linksAccesed.length; y++) {

                if (list[x] == linksAccesed[y]) {
                    //console.log("data seen already: redundant");
                    beenThere = true;
                }

            }

            if (beenThere) {

                resolve(null)
            } else {

                linksAccesed.push(list[x]);

                
                    let req = https.get("https://en.wikipedia.org" + list[x], (res) => {
                        //console.log('statusCode:' + res.statusCode + " " + x);

                        let page = "";
                        res.on('data', (d) => {

                            page += d.toString();

                        })

                        res.on('end', () => {
                            console.log(res.req._header);
                            resolve(getKnowledgeLost(page));

                        })

                        res.on('error', (e) => {
                            reject(e);
                        })

                    })
                
                //console.log("listing!");
            }
        }
    })

}

setInterval(() => {

    getChanges(function (x) {


        console.log(x);

        if (pile == null) {
            pile = x;

        }

        if (pile != null) {

            tempHighTs = pile[0][1];

            console.log(pile[0][1]);

            if (x != null) {

                for (let i = x.length; i > 0; i--) {

                    if (x[i][1] > tempHighTs) {

                        pile.push(x[i]);
                        console.log("got a fish!");
                        console.log(pile.length);

                    }

                }
            }
        }
    });

    // console.log(pile);

}, 5000);