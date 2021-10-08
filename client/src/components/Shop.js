import React, { useState, useEffect } from 'react';
import PenguinCard from './PenguinCard'
import "./component.css"

function Shop({ penguins }) {
{/* <img src=""/> */}

 return (
     
        <div className="shop-container">
            {penguins.map((penguin) => 
                <PenguinCard
                    key={penguin.id}
                    name={penguin.name}
                    image_url={penguin.image_url} 
                    price={penguin.price}
                    origin={penguin.origin}
                    shelter={penguin.shelter}
                    bio={penguin.bio}
                />
            )}    
        </div>   
    );
}

export default Shop;