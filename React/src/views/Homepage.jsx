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


function Homepage() {

    const [searchDropdownBox, setSearchDropdownBox] = useState('All')
    // eslint-disable-next-line no-unused-vars
    const [searchtextbox, setSearchtextbox] = useState()

    const handleSubmit = (event) => {
        event.preventDefault()

        setSearchtextbox('')
    }


    return (

        <div className="App">
            <header className="top-navbar">
                <div className="nav-belt">

                    <div className="nav-left">
                        <a href="" className='nav-logo-link'>
                            <img src={Logo_icon} alt="Not Found Data" className='logo-icons' />
                        </a>

                    </div>

                    <div className="nav-search">
                        <form onSubmit={handleSubmit} className='form-search' method='GET' acceptCharset='utf-8'>
                            <div className="nav-left-box">
                                <div className="nav-search-dropdown-card">
                                    <div className="nav-search-scope">
                                        <div className="nav-search-facade" >
                                            <span id='nav-search-id' className='nav-search-label'>{searchDropdownBox}<BsFillCaretDownFill className='arrow-down' /></span>
                                        </div>
                                        <label id="searchDropdownDescription" for="searchDropdownBox" className='nav-progressive-attribute'></label>
                                        <select name="url" id="searchDropdownBox" className='nav-search-dropdown' tabIndex="0" onChange={(e) => setSearchDropdownBox(e.target.value)} title='search in'>
                                            <option selected="selected" value="All Departments">All Departments</option>
                                            <option value="Art & Crafts">Art & Crafts</option>
                                            <option value="Automotive">Automotive</option>
                                            <option value="Baby">Baby</option>
                                            <option value="Beauty & Personal Care">Beauty & Personal Care</option>
                                            <option value="Books">Books</option>
                                            <option value="Computers">Computers</option>
                                            <option value="Digital Music">Digital Music</option>
                                            <option value="Electronics">Electronics</option>
                                            <option value="Home & Kitchen">Home & Kitchen</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div className="nav-fill">
                                <div className="nav-search-field">
                                    <label for="searchtextbox" className='search-box'>Search Goods</label>
                                    <input type="text" id="searchtextbox" autoComplete='off' placeholder='Search Goods' className='nav-input' tabIndex="0" aria-label='Search Goods' spellCheck="false" onChange={(event) =>
                                        setSearchtextbox(event.target.value)} />
                                </div>
                            </div>

                            <div className="nav-right">
                                <div className="nav-search-submit">
                                    <span className="nav-search-submit-text" id='nav-search-submit-text'>
                                        <button className='nav-search-button'><BiSearch className='nav-search-button-icons' /></button>
                                    </span>
                                </div>
                            </div>

                        </form>
                    </div>

                    <div className="nav-right-tool">
                        <div className="nav-tool">

                            <a href="/login" className="nav-account">
                                <div className="nav-line-1-container">
                                    <span className="nav-line-1">
                                        Hello, signup
                                    </span>
                                </div>
                                <span className="nav-line-2">
                                    Account & Lists
                                    <span className="nav-icons-line-"><BsFillCaretDownFill className='arrow-down' /></span>
                                </span>
                            </a>



                        </div>

                        <div className="nav-my-cart">
                            <a href="" className="nav-my-cart-link">
                                My Cart
                                <span className="nav-my-cart-line"></span>
                                <div className="nav-my-cart-container">
                                    <BiCartDownload className='nav-my-cart-icon' />
                                </div>
                            </a>
                        </div>

                    </div>

                </div>
            </header>

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

export default Homepage
