module.exports = (connex, Sequelize) => {
    const TravelPackage = connex.define('travel_packages',{
        name: {
            type: Sequelize.STRING
        },
        photo: {
            type: Sequelize.STRING
        },
        price: {
            type: Sequelize.DECIMAL(10, 2)
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
