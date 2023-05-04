import { useState, useEffect } from 'react'
import { Link, Navigate } from 'react-router-dom'
import Logo_icon from '../components/image/image_icons/Logo-Icons.png'
import { BsFillCaretDownFill } from 'react-icons/Bs'
import { BiSearch, BiCartDownload } from 'react-icons/bi'
import { useStateContext } from '../ContextProvider'
import axiosClient from '../axios-client'
import Header from '../components/Header'
import './Account.css'
import Profile from '../components/account-components/Profile'

export default function Account() {
    const { user, token, setUser, setToken } = useStateContext();

    if (!token) {
        return <Navigate to="/homepage" />
    }


    return (


        <div className="container-account">
            <Header />
            <div className="container-side">
                <div className="person-infor">
                    <Link to='/account/profile'>My Account</Link>
                </div>
                <div className="history-buy">

                </div>
                <div className="support">

                </div>

            </div>
        </div>
    )
}
