import { app } from './app'

const { PORT=8080 } = process.env
app.listen(PORT, () =>
  console.log(`
🚀 Server ready at: http://localhost:${PORT}
⭐️ See sample requests: http://pris.ly/e/ts/rest-express#3-using-the-rest-api`),
)
