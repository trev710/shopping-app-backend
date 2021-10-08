// import item from "./Items"
import React, { useState, useEffect } from "react"
import Cart from "./Cart"

function PenguinCard(penguin){


    return (
        <div className="card-container">
            <img src={penguin.image_url} alt="penguin-images"></img>
            <h3>Name:{penguin.name}</h3>
            <h4>Price:{penguin.price}</h4>
            <h4>Origin:{penguin.origin}</h4>
            <h5>Bio:{penguin.bio}</h5>
            <br></br>
            <button type="button" className="btn-primary" onClick={console.log("hi")}>Add to Cart</button>
        </div>
    )
 }



export default PenguinCard;