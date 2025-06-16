const db = require('../models');
const TravelPackage = db.travel_packages;

exports.findAll = (req, res) => {
    TravelPackage.findAll()
        .then(data => {
            res.send(data);
        })
        .catch(err => {
            res.status(500).send({
                message: err.message || 'Une erreur s’est produite'
            });
        });
};

exports.create = (req, res) => {
    // Implementación de la creación de un nuevo paquete de viaje
};

exports.findOne = (req, res) => {
    // Implementación para encontrar un paquete de viaje por ID
};

exports.update = (req, res) => {
    // Implementación para actualizar un paquete de viaje
};

exports.delete = (req, res) => {
    // Implementación para eliminar un paquete de viaje
};
