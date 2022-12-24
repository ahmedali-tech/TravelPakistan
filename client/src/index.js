import React from "react";
import ReactDOM from "react-dom/client";
import "./index.css";
import App from "./App";
import axios from "axios";

/*
The frontend has been created by Ramisha Anwar. Some of the components have been bootstraped and some have been custom coded. The website 
was decided by the group based on the backend apis.
*/

axios.defaults.withCredentials = true;

const root = ReactDOM.createRoot(document.getElementById("root"));
root.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);
