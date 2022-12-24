import express from "express";
import session from "express-session";
import posts from "./controller/posts.js";
import users from "./controller/users.js";
import comments from "./controller/comments.js";
import cors from "cors";
import path from "path";

/*
Backend code has been designed by Ahmed Ali Niazi BESE 11B. Server Boiler plate code was initally copied to fast track the basic routing, controllers and model
setup. Backend logic is genuine and belongs to the team effort.
*/

const app = express();
app.use(express.urlencoded({ extended: true }));
app.use(cors());
app.use("/uploads", express.static("uploads"));
app.use(express.json());

app.set("trust proxy", 1);
app.use(
  session({
    secret: "a very secret phrase",
    resave: false,
    saveUninitialized: false,
    cookie: {
      secure: false,
      maxAge: 6000000,
    },
  })
);

app.use("/api/posts/", posts);
app.use("/api/users/", users);
app.use("/api/comments/", comments);
app.listen(process.env.PORT || 3000);
