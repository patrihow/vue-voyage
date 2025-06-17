const db = require('../models');
const TravelPackage = db.travelPackages

exports.findAll = (req, res) => {
    TravelPackage.findAll()
        .then(data => {
            res.send(data)
        })
        .catch(err => {
            res.status(500).send({
                message: 'Une erreur s’est produite'
            })
        })
}

exports.create = (req, res) => {
    // Validación de los datos del paquete de viaje
    if (!req.body.name){
        res.status(400).send({
            message: 'Le nom est requis'
        })
        return;
    }
    TravelPackage.create(req.body)
    .then(data => {
        res.send(data)
    })
    .catch(err => {
        res.status(500).send({
            message: 'Pas possible de créer le paquet de voyage'
        })
    })
}
exports.findOne = (req, res) => {
    const id = req.params.id;
    TravelPackage.findByPk(id)
        .then(data => {
            if (data) {
                res.send(data)
            } else {
                res.status(404).send({
                    message: `Le paquet de voyage avec l'ID ${id} n'a pas été trouvé`
                })
            }
        })
        .catch(err => {
            res.status(500).send({
                message: 'Erreur lors de la récupération du paquet de voyage'
            })
        })
}

exports.update = (req, res) => {
    const id = req.params.id;
    TravelPackage.update(req.body, {
        where: {id: id}
    })
        .then(num => {
            if (num == 1) {
                res.send({
                    message: 'Le paquet de voyage a été mis à jour avec succès'
                })
            } else {
                res.status(404).send({
                    message: `Impossible de mettre à jour le paquet de voyage avec l'ID ${id}. Peut-être qu'il n'existe pas ou que les données envoyées sont vides.`
                })
            }
        })
        .catch(err => {
            res.status(500).send({
                message: 'Erreur lors de la mise à jour du paquet de voyage'
            })
        })
}

exports.delete = (req, res) => {
    const id = req.params.id;
    TravelPackage.destroy({
        where: {id: id}
    })
        .then(num => {
            if (num == 1) {
                res.send({
                    message: 'Le paquet de voyage a été supprimé avec succès'
                })
            } else {
                res.status(404).send({
                    message: `Impossible de supprimer le paquet de voyage avec l'ID ${id}. Peut-être qu'il n'existe pas.`
                })
            }
        })
        .catch(err => {
            res.status(500).send({
                message: 'Erreur lors de la suppression du paquet de voyage'
            })
        })
}