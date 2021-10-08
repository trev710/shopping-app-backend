import React, { useState, useEffect } from 'react';
import PenguinCard from './PenguinCard'

function Shop({ penguins }) {

 return (
        <div className="shop-container">
            <div className="penguin-options">
                <h1>Shop</h1>
                <div className="penguins">
                    {penguins.map((penguin) => <PenguinCard key={penguin.id} penguin={penguin} />)}  
                </div>
            </div>  
        </div>   
    );
}

export default Shop;