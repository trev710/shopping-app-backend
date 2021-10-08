// import item from "./Items"
import React, { useState } from "react"
import PenguinDetails from "./PenguinDetails"

function PenguinCard(penguin){

    const [cartItems, setCartItems] = useState([]);

//   const addToCard = () => {
//     if (group.userGroup) {
//       return <button onClick={() => joinGroup(group.id)}>Join Group</button>
//     }
//   }
    return (
       
        <div className="card-container">
            <div className="shop-details">
                
                    <img src={penguin.image_url} alt="penguin-images"></img>
                    <h3>Name: {penguin.name}</h3>
                    <h4>Price: ${penguin.price}</h4>
                    <h4>Origin: {penguin.origin}</h4>
                    <h4>Shelter: {penguin.shelter}</h4>
                    <h5>Bio: {penguin.bio}</h5>
            </div>
          
            &nbsp;&nbsp;
            <button type="button" className="btn-primary" onClick={console.log("hi")}>Add to Cart</button>
        </div>
    )
 }



export default PenguinCard;