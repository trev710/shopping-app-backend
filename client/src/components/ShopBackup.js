import React, { useState, useEffect } from 'react';
import PenguinCard from './PenguinCard'

function Shop({ penguins }) {

 return (
        <div className="shop-container">
            <div className="penguin-options">
            <h1>Shop</h1>
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
        </div>   
    );
}

export default Shop;