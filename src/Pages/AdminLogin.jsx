// import React from "react";

import Navbar from "../Components/Navbar";
import Footer from "../Components/Footer";

const Admin_login = () => {
    return(
        <>
            <Navbar/>

            <div className="flex">
                <div>
                    <div className="flex flex-col">
                        <h1 className="text-xl font-semibold">CyberSecure Stories</h1>
                        <h1 className="text-sm">Hear Their Stories, Fight for Change, Stand Against Cybercrime</h1>
                    </div>

                    <div className="flex flex-col ">
                        <h1>CyberSecure not only educates but also reassures. Knowing others have faced similar challenges and triumphed is empowering. Highly recommended for building digital resilience.</h1>
                        <div>
                            <div className="flex">
                                <img src="" alt="" />
                                <h1>Aditya Singh</h1>
                            </div>
                            <button>Read More</button>
                        </div>
                    </div>
                </div>

                <form action="">
                    <div>
                        <h1>Login</h1>
                        <h1>Welcome back! Please log in to access your account</h1>
                    </div>

                    <div>
                        <h1>Name</h1>
                        
                    </div>
                </form>
            </div>

            <Footer/>
        </>
    )
};
export default Admin_login;