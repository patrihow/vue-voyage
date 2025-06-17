module.exports = app => {
  const travelPackage = require('../controllers/travel_package.controller.js')
  const router = require('express').Router()
  router.get('/', travelPackage.findAll)
  router.post('/', travelPackage.create)
  router.get('/:id', travelPackage.findOne)
  router.put('/:id', travelPackage.update)
  router.delete('/:id', travelPackage.delete)
  app.use('/api/travel_package', router)
}
