/* eslint-disable react-hooks/rules-of-hooks */
import { Link, Navigate, Outlet } from "react-router-dom";
import { useStateContext } from "../ContextProvider";
import axiosClient from "../axios-client.js";
import { useEffect } from "react";
import Models from '../components/Models'
import Infographic from '../components/Infographic'
import Models_accessories from '../components/Models_accessories'
import Headset from '../components/image/image_models/Headset.png'
import Keyboard from '../components/image/image_models/Keyboard.png'
import Mouse from '../components/image/image_models/Mouse.png'
import Chair from '../components/image/image_models/Chair.png'
import Kitchen from '../components/image/image_models/Kitchen.png'
import Beauty from '../components/image/image_models/Beauty.png'
import Home from '../components/image/image_models/Home.png'
import Garden from '../components/image/image_models/Garden.png'
import Electronics from '../components/image/image_models/Electronics.png'
import Dress from '../components/image/image_models/Dress.jpg'
import Recommended from '../components/Recommended'
import "bootstrap/dist/css/bootstrap.css";
import Header from './Header'

export default function DefaultLayout() {
  const { user, token, setUser, setToken, notification } = useStateContext();

  if (!token) {
    return <Navigate to="/homepage" />
  }

  

  useEffect(() => {
    axiosClient.get('/user')
      .then(({ data }) => {
        setUser(data)
      })
  }, [])

  return (
    <div id="DefaultLayout">
      <Outlet/>
    </div>
  )
}
