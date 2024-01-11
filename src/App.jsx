// import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";

import HomePage from "./Homepage" ;
import Admin_login from "./Pages/AdminLogin";


const App = () => {
  return (
    <>
      <Router>
        <Routes>
          <Route path="/" element={<HomePage />}></Route>
          <Route path="AdminLogin" element={<Admin_login/>}></Route>
        </Routes>
      </Router>
    </>
  )
};
export default App;