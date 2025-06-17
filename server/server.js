const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')
const cookieParser = require('cookie-parser')
const app = express()
const corsOption = {
    origin: 'http://localhost:8081',
    credentials: true,
};

app.use(cookieParser())

app.use(cors(corsOptions))

app.use(bodyParser.json())
app.use(bodyParser.urlencoded({extended: true}))

app.get('/', (req, res) => {
    res.json({message: "Bienvenue sur l'API de Travel Vue!"});
})

const db = require('./app/models')
db.connex.sync();

require('./app/routes/travel_package.route')(app)

const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Le serveur fonctionne sur le port ${PORT}.`);
});
