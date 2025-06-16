const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const app = express();

const db = require('./app/models');
db.connex.sync();

require('./app/routes/travel_package.route')(app);

const corsOption = {
    origin: 'http://localhost:8081',
    credentials: true,
};

app.use(cors(corsOption));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.get('/', (req, res) => {
    res.json({ message: 'Welcome' });
});

const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}.`);
});
