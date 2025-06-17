module.exports = (connex, Sequelize) => {
    const TravelPackage = connex.define('travel_package',{
        name: {
            type: Sequelize.STRING
        },
        photo: {
            type: Sequelize.STRING
        },
        price: {
            type: Sequelize.REAL
        },
        description: {
            type: Sequelize.TEXT
        },
        type: {
            type: Sequelize.STRING
        }
    })
    return TravelPackage
}
