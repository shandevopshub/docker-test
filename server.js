const express = require("express")
const app = express()


app.get('/are-you-alive', (req, res) => {
    res.json({
        message: "Hey, I'm Alive"
    })
})

app.listen(4000)