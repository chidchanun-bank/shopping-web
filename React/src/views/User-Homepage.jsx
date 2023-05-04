import { useState , useEffect} from 'react'
import './Homepage.css'
import { useStateContext } from "../ContextProvider";
import {Navigate, Outlet} from "react-router-dom";
import {BsFillCaretDownFill } from 'react-icons/Bs'
import {BiSearch, BiCartDownload } from 'react-icons/bi'
import Models from '../components/Models'
import Infographic from '../components/Infographic'
import Models_accessories from '../components/Models_accessories'
import Headset from '../components/image/image_models/Headset.png'
import Keyboard from '../components/image/image_models/Keyboard.png'
import Mouse from '../components/image/image_models/Mouse.png'
import Chair from '../components/image/image_models/Chair.png'
import Logo_icon from '../components/image/image_icons/Logo-Icons.png'
import Kitchen from '../components/image/image_models/Kitchen.png'
import Beauty from '../components/image/image_models/Beauty.png'
import Home from '../components/image/image_models/Home.png'
import Garden from '../components/image/image_models/Garden.png'
import Electronics from '../components/image/image_models/Electronics.png'
import Dress from '../components/image/image_models/Dress.jpg'
import Recommended from '../components/Recommended'
import "bootstrap/dist/css/bootstrap.css";
import axiosClient from "../axios-client.js";
import Header from "../components/Header"


function App() {

    return (

        <div className="App">
            <Header />

            <body className='home-page'>
                <div className="home-slide">
                    <Infographic />
                </div>
                <div className="home_row1">
                    <div className="home_row_container">
                        <div className="home_row">
                            <Models_accessories
                                title="Game Accessories"
                                image1={Headset}
                                description1="Headset"
                                image2={Keyboard}
                                description2="Keyboard"
                                image3={Mouse}
                                description3="Mouse"
                                image4={Chair}
                                description4="Chair"
                            />
                        </div>

                        <div className="home_row">
                            <Models_accessories
                                title="Refresh You Space"
                                image1={Kitchen}
                                description1="Kitchen"
                                image2={Garden}
                                description2="Garden"
                                image3={Home}
                                description3="Home"
                                image4={Beauty}
                                description4="Beauty & Health"
                            />
                        </div>
                        <div className="home_row">
                            <Models
                                title="Electronics"
                                image={Electronics}
                            />
                        </div>
                        <div className="home_row">
                            <Models
                                title="Dress"
                                image={Dress}
                            />
                        </div>
                    </div>

                </div>

                <div className="recommended-bar">
                    <div className="container-rec">
                        <span className="rec-goods">recommended for you</span>
                    </div>
                </div>

                <div className="recommended-model-row1">
                    <div className="recommended-model">
                        <Recommended />
                    </div>
                </div>

                <div className="recommended-model-row2">
                    <div className="recommended-model">
                        <Recommended />
                    </div>
                </div>

                <div className="recommended-model-row2">
                    <div className="recommended-model">
                        <Recommended />
                    </div>
                </div>

                <div className="recommended-model-row2">
                    <div className="recommended-model">
                        <Recommended />
                    </div>
                </div>

         

            </body>

        </div>


    )
}

export default App
