import { Sequelize } from "sequelize";
import mysql from "mysql2/promise";
import Posts from "../model/posts.js";
import Users from "../model/users.js";
import Comments from "../model/comments.js";

const database = {};

// Add your db credentials here
const credentials = {
  host: "localhost",
  user: "root",
  password: "your_current_password",
  database: "blog",
};

try {
  const connection = await mysql.createConnection({
    host: credentials.host,
    user: credentials.user,
    password: credentials.password,
  });
  await connection.query(
    `CREATE DATABASE IF NOT EXISTS ${credentials.database}`
  );
  const sequelize = new Sequelize(
    credentials.database,
    credentials.user,
    credentials.password,
    { dialect: "mysql" }
  );
  database.Posts = Posts(sequelize);
  database.Users = Users(sequelize);
  database.Comments = Comments(sequelize);

  database.Posts.hasMany(database.Comments);
  database.Users.hasMany(database.Comments);
  database.Comments.belongsTo(database.Users);
  await sequelize.sync({ alter: true });
} catch (error) {
  console.log("There was an error in the database");
}

export default database;
