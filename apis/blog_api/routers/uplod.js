const router = require('express').Router()
const { upload } = require('../util')
router.post('/', upload.single('img'), (req, res, next) => {
    res.json({
        ok:1,
        src: req.dir.replace('./public','')
    })
})

module.exports = router