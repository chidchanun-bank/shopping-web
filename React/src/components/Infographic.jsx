import React, { useState } from 'react';
import './style.css'
import banner_living from './image/banner.jpg'
import banner_toy_game from './image/banner2.jpg'
import Carousel from 'react-bootstrap/Carousel'
import 'bootstrap/dist/css/bootstrap.min.css'

export default function Infographic() {
  const [index, setIndex] = useState(0);

  const handleSelect = (selectedIndex, e) => {
    setIndex(selectedIndex);
  };
  return (
    <div className="container">
      <Carousel activeIndex={index} onSelect={handleSelect} >
        <Carousel.Item interval={2000}>
          <img src={banner_living} alt="Not Found Data" className='d-block w-100' />
        </Carousel.Item>
        <Carousel.Item interval={2000}>
          <img src={banner_toy_game} alt="Not Found Data" className='d-block w-100' />
        </Carousel.Item>
      </Carousel>
    </div>
  )
}
