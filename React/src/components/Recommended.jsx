import React, { useEffect, useState } from 'react';
import './recommended.css'
import { Link } from 'react-router-dom';
import Button from 'react-bootstrap/Button'
import axios from 'axios';
import Swal from 'sweetalert2'



export default function Recommended({promotion1, promotion2, promotion3}) {

  const [products, setProducts] = useState([])
  
  useEffect(() => {
    fetchProducts()
  }, [])

  const fetchProducts = async () => {
    await axios.get(`http://localhost:8000/api/products`).then(({ data }) => {

      setProducts(data)
      console.log(data)
    })
  }
  return (
    <div className='rec-model'>


      {products.map((product, index) => (
        <a href="" key={index}>
          <div className="rec-model-container">
            <div className="rec-model-center">
              <img src={`http://localhost:8000/storage/product/image/${product.image}`} alt="Not Found Data" className='rounded mx-auto d-block ' />
              <div className="title-infor-container">
                <p className='title-image'>{product.title}</p>
                <p className="promotion-goods">{promotion1} {promotion2} {promotion3}</p>
                <p className="cost-goods">$ {product.cost}</p>
              </div>
            </div>
          </div>
        </a>
      ))}





    </div>
  )
}
