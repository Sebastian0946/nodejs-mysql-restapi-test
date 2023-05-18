import express from "express";
import employeesRoutes from './routes/employees.routes.js'
import indexRouter from './routes/index.routes.js'

const app = express()

app.use(express.json())

app.use(indexRouter)

app.use('/api/security', employeesRoutes)

app.use(( req, res, next) =>{
    res.status(404).json({
        message: 'Endpoint not found'
    })
})
  
app.use((error, req, res, next) => {
    res.status(error.status || 500).json({
      message: error.message || 'Internal Server Error',
    });
});

export default app;