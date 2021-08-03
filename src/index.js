import Express from "express";

const app = new Express();
const port = 3311;

app.get("/", (req, res) => {
    res.send("Done it!");
})

app.listen(port);