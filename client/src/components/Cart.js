import React, { useState, useEffect } from "react";
// import { Link } from 'react-router-dom';
// import { removeItem,addQuantity,subtractQuantity} from './actions/cartActions'
// import { connect } from 'react-redux'
import "./component.css"


function Cart(){

    const [cartItems, setCartItems] = useState([]);

    function handleDelete(id) {
        fetch(`/penguins/${id}`, {
        method: "DELETE",
        }).then((r) => {
        if (r.ok) {
            setCartItems((items) =>
            items.filter((item) => item.id !== id));
            }
        });
       
    }

    return (
        <div className="cart-container">
            <img src="https://text2image.com/user_images/202110/text2image_A3945363_20211008_154305.jpg" alt="cart-image" />
        </div>    
)}




export default Cart;