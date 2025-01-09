// Start the server

const setup = require('./config/set_up'); 
const PORT = process.env.PORT || 3000;
const { app, db } = setup.setupApp();
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
