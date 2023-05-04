import React from 'react'
import './style.css'
export default function Models({ title, image }) {
  return (
    <div className='Model'>
      <div className="Model-information">
        <p className='Model-title'><strong>{title}</strong></p>
        <a href="">
          <img src={image} alt="Not Fount Data" className='Model-single' />
        </a>
        
      </div>
      <div className="more-models">
        <a href="" className='More-goods'>see more</a>
      </div>
    </div>
  )
}
