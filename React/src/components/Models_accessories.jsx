import React from 'react'
import './style.css'

export default function Models_accessories({ title, image1, description1, image2, description2, image3, description3, image4, description4 }) {
    return (
        <div className="Model">
            <div className="Model-information">
                <p className='Model-title'><strong>{title}</strong></p>
                <div className="Model-row">
                    <img src={image1} alt="Not Found Picture" className='Model-image' />
                    <a href="">
                        <p className='Model-desc'>{description1}</p>
                    </a>
                    <img src={image2} alt="Not Found Picture" className='Model-image' />
                    <a href="">
                        <p className='Model-desc'>{description2}</p>
                    </a>
                </div>
                <div className="Model-row">
                    <img src={image3} alt="Not Found Picture" className='Model-image' />
                    <a href="">
                        <p className='Model-desc'>{description3}</p>
                    </a>
                    <img src={image4} alt="Not Found Picture" className='Model-image' />
                    <a href="">
                        <p className='Model-desc'>{description4}</p>
                    </a>
                </div>
                <div className="more-models">
                    <a href = "" className='More-goods'>see more</a>
                </div>
            </div>
        </div>
    );
}
