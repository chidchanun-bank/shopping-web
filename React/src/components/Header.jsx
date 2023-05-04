import { useState, useEffect } from 'react'
import * as React from 'react';
import { Link, Navigate } from 'react-router-dom'
import Logo_icon from '../components/image/image_icons/Logo-Icons.png'
import { BsFillCaretDownFill } from 'react-icons/Bs'
import { BiSearch, BiCartDownload } from 'react-icons/bi'
import { useStateContext } from '../ContextProvider'
import axiosClient from '../axios-client'
import '../views/Homepage.css'
import "bootstrap/dist/css/bootstrap.css";
import { styled } from '@mui/material/styles';
import Button from '@mui/material/Button';
import Tooltip, { tooltipClasses } from '@mui/material/Tooltip';
import Typography from '@mui/material/Typography';

export default function Account() {
    const HtmlTooltip = styled(({ className, ...props }) => (
        <Tooltip {...props} classes={{ popper: className }} />
    ))(({ theme }) => ({
        [`& .${tooltipClasses.tooltip}`]: {
            backgroundColor: '#f5f5f9',
            color: 'rgba(0, 0, 0, 0.87)',
            maxWidth: 220,
            fontSize: theme.typography.pxToRem(12),
            border: '1px solid #dadde9',
        },
    }));

    const { user, token, setUser, setToken } = useStateContext();

    if (!token) {
        return <Navigate to="/homepage" />
    }

    const onLogout = ev => {
        ev.preventDefault()

        axiosClient.post('/logout')
            .then(() => {
                setUser({})
                setToken(null)
            })
    }

    useEffect(() => {
        axiosClient.get('/user')
            .then(({ data }) => {
                setUser(data)
            })
    }, [])

    const [searchDropdownBox, setSearchDropdownBox] = useState('All')
    // eslint-disable-next-line no-unused-vars
    const [searchtextbox, setSearchtextbox] = useState()

    const handleSubmit = (event) => {
        event.preventDefault()

        setSearchtextbox('')
    }

    return (
        <header className="top-navbar">
            <div className="nav-belt">
                <div className="nav-left">
                    <a href="/" className='nav-logo-link'>
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
                        <HtmlTooltip
                            title={
                                <React.Fragment>
                                    <Typography color="inherit">Hello {user.name}</Typography>
                                    <Button onClick={onLogout} href='/homepage'>Logout</Button>
                                </React.Fragment>
                            }
                        >
                            <a href="/account" className="nav-account">
                                <div className="nav-line-1-container">
                                    <span className="nav-line-1">
                                        Hello, {user.name}
                                    </span>
                                </div>
                                <span className="nav-line-2">
                                    Account & Lists
                                    <span className="nav-icons-line-"><BsFillCaretDownFill className='arrow-down' /></span>
                                </span>
                            </a>
                        </HtmlTooltip>



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
    )
}
