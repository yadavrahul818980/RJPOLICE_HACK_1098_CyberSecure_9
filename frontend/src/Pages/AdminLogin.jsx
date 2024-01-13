// import React from "react";
import { Link } from "react-router-dom";

import Navbar from "../Components/Navbar";
import Footer from "../Components/Footer";

import test from "../assets/images/testimonial.png";
import left from "../assets/images/left.png";
import right from "../assets/images/right.png";
import UserLogin from "../assets/images/UserLogin.png";

const AdminLogin = () => {
  return (
    <div className="bg-[#F2F6FF]">
      <Navbar />

      <div className="flex justify-center w-full h-screen">
        <div className="flex items-center w-3/4 gap-24">
          <div className="w-3/4">
            <div className="flex flex-col mb-6">
              <h1 className="text-3xl font-semibold pb-2">
                CyberSecure Stories
              </h1>
              <h1 className="text-sm">
                Hear Their Stories, Fight for Change, Stand Against Cybercrime
              </h1>
            </div>

            <div className="bg-white flex flex-col p-8 rounded-lg">
              <h1 className="text-sm pb-4">
                CyberSecure not only educates but also reassures. Knowing others
                have faced similar challenges and triumphed is empowering.
                Highly recommended for building digital resilience.
              </h1>
              <hr />
              <div className="flex justify-between items-center pt-6">
                <div className="flex items-center gap-3">
                  <img className="w-12" src={test} alt="" />
                  <h1 className="font-semibold">Aditya Singh</h1>
                </div>
                <button className="bg-[#F7F7F8] px-4 py-2 rounded-md">
                  Read More
                </button>
              </div>
            </div>

            <div className="flex justify-end w-full py-3 gap-2">
              <a className="w-12" href="">
                <img src={left} alt="" />
              </a>
              <a className="w-12" href="">
                <img src={right} alt="" />
              </a>
            </div>
          </div>

          <form className="flex flex-col w-2/4 p-12 bg-white rounded-xl">
            <div className="flex flex-col items-center pb-10">
              <h1 className="text-4xl pb-3 font-semibold">Login</h1>
              <h1 className="text-sm">
                Welcome back! Please log in to access your account
              </h1>
            </div>

            <div className="pb-4">
              <label className="block text-sm font-medium leading-6 text-gray-900"> Name
              </label>
              <div className="mt-2">
                <div className="flex rounded-md shadow-sm ring-1 ring-inset ring-gray-300 focus-within:ring-2 focus-within:ring-inset focus-within:ring-indigo-600 sm:max-w-md">
                  <input
                    type="text"
                    name="username"
                    id="username"
                    className="block flex-1 border-0 bg-transparent py-1.5 pl-4 text-gray-900 placeholder:text-gray-400 focus:ring-0 sm:text-sm sm:leading-6"
                    placeholder="Enter Your Name"
                  />
                </div>
              </div>
            </div>

            <div className="pb-4">
              <label className="block text-sm font-medium leading-6 text-gray-900"> Rank / Designation
              </label>
              <div className="mt-2">
                <div className="flex rounded-md shadow-sm ring-1 ring-inset ring-gray-300 focus-within:ring-2 focus-within:ring-inset focus-within:ring-indigo-600 sm:max-w-md">
                  <input
                    type="text"
                    name="username"
                    id="username"
                    className="block flex-1 border-0 bg-transparent py-2 pl-4 text-gray-900 placeholder:text-gray-400 focus:ring-0 sm:text-sm sm:leading-6 lg:text-sm"
                    placeholder="Enter your Rank"
                  />
                </div>
              </div>
            </div>

            <div className="pb-4">
              <label className="block text-sm font-medium leading-6 text-gray-900"> Identification Number
              </label>
              <div className="mt-2">
                <div className="flex rounded-md shadow-sm ring-1 ring-inset ring-gray-300 focus-within:ring-2 focus-within:ring-inset focus-within:ring-indigo-600 sm:max-w-md">
                  <input
                    type="text"
                    name="username"
                    id="username"
                    className="block flex-1 border-0 bg-transparent py-2 pl-4 text-gray-900 placeholder:text-gray-400 focus:ring-0 sm:text-sm sm:leading-6 lg:text-sm"
                    placeholder="Enter your Identification Number"
                  />
                </div>
              </div>
            </div>

            <div>
              <label className="block text-sm font-medium leading-6 text-gray-900"> Issued Date
              </label>
              <div className="mt-2">
                <div className="flex rounded-md shadow-sm ring-1 ring-inset ring-gray-300 focus-within:ring-2 focus-within:ring-inset focus-within:ring-indigo-600 sm:max-w-md">
                  <input
                    type="text"
                    name="username"
                    id="username"
                    className="block flex-1 border-0 bg-transparent py-2 pl-4 text-gray-900 placeholder:text-gray-400 focus:ring-0 sm:text-sm sm:leading-6 lg:text-sm"
                    placeholder="Enter your I’d Issued Date"
                  />
                </div>
              </div>
            </div>

            <div className="flex items-center py-4 gap-2">
            <input id="comments" name="comments" type="checkbox" className="h-4 w-4 rounded border-gray-300 text-indigo-600 focus:ring-indigo-600" />
            <h1>Remember me</h1>
            </div>

            <Link to="/Dashboard"><button className="bg-[#4E82EA] text-white py-1.5 px-52 rounded-md">Login</button></Link>

            <img className="pt-6" src={UserLogin} alt="" />
          </form>
        </div>
      </div>

      <Footer />
    </div>
  );
};
export default AdminLogin;
