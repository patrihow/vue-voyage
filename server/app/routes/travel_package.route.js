module.exports = app => {
    const travel_package = require('../controllers/travel_package.controller.js'); // Asegúrate de que la ruta sea correcta
    const router = require('express').Router();

    router.get('/', travel_package.findAll); // Asegúrate de que findAll sea una función
    router.post('/', travel_package.create); // Asegúrate de que create sea una función
    router.get('/:id', travel_package.findOne); // Asegúrate de que findOne sea una función
    router.delete('/:id', travel_package.delete); // Asegúrate de que delete sea una función
    router.put('/:id', travel_package.update); // Asegúrate de que update sea una función

    app.use('/api/travel_package', router);
};
