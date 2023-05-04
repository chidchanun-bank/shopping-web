import {createBrowserRouter, Navigate} from "react-router-dom";
import Dashboard from "./Dashboard.jsx";
import DefaultLayout from "./components/DefaultLayout";
import GuestLayout from "./components/GuestLayout";
import Login from "./views/Login";
import NotFound from "./views/NotFound";
import Signup from "./views/Signup";
import Users from "./views/Users";
import UserForm from "./views/UserForm";
import Homepage from "./views/Homepage"
import CreateProduct from "./views/create.product.jsx";
import Account from "./views/Account.jsx";
import Profile from "./components/account-components/Profile.jsx";
import UserHomepage from "./views/User-Homepage.jsx"

const router = createBrowserRouter([
  {
    path: '/',
    element: <DefaultLayout/>,
    children: [
      {
        path: '/',
        element: <UserHomepage/>
      },
      {
        path: '/account',
        element: <Account />,
        children: [
          {
            path: '/account/profile',
            element: <Profile/>
          }
        ]
      },
      {
        path: '/users',
        element: <Users/>
      },
      {
        path: '/users/new',
        element: <UserForm key="userCreate" />
      },
      {
        path: '/users/:id',
        element: <UserForm key="userUpdate" />
      }
    ]
  },
  {
    path: '/',
    element: <GuestLayout />,
    children: [
      {
        path:'/homepage',
        element: <Homepage />
      },
      {
        path: '/login',
        element: <Login/>
      },
      {
        path: '/signup',
        element: <Signup/>
      }
    ]
  },
  {
    path: "*",
    element: <NotFound/>
  },
  {
    path: '/createProduct',
    element: <CreateProduct />
  },
  
])

export default router;
