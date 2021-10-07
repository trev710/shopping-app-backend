import React, { useState, useEffect } from 'react';
import PenguinCard from './PenguinCard'

function Shop(penguins) {

 return (
        <div className="shop-container">
            {penguins.map((penguin) => console.log(penguin)
                // <PenguinCard
                //     key={penguin.id}
                //     // penguin={penguin}
                //     image_url={penguin.image_url} 
                //     origin={penguin.origin}
                //     price={penguin.price}
                //     bio={penguin.bio}
                // />
            )}    
        </div>   
    );
}

export default Shop;