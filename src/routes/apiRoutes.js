const { Router } = require("express");
const apiRoutes = () => {
  const router = Router();
  router.get("/", (req, res) => {
    res.json({ message: "Welcome to the API" });
  });
  return router;
};

module.exports = apiRoutes;
