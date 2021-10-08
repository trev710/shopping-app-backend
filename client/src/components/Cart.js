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
            <h2>Cart</h2>
        </div>    
)}




export default Cart;