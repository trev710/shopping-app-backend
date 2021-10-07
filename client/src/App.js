import './App.css';
import React, { useState, useEffect } from 'react';
import { BrowserRouter, Route, NavLink, Switch } from 'react-router-dom'
import Cart from './components/Cart';
import Home from './components/Home';
import Checkout from './components/Checkout';
import Shop from './components/Shop';
import Login from './components/Login';
function App() {

  const [penguins, setPenguins] = useState([]);
    
  useEffect(() =>  {
    fetch('/penguins')
    .then(res => res.json())
    // .then(console.log)
    .then(penguin => setPenguins(penguin))
    // .then(penguin => console.log(penguin) )
    }, [])


  return (
    <div className="App">
      <BrowserRouter>
          <nav className="navbar-container">
            <NavLink to="/">Home | </NavLink>
            <NavLink to="/shop">Shop | </NavLink>
            <NavLink to="/cart">Cart | </NavLink>
            <NavLink to="/login">Login</NavLink>
          </nav> 
          <Switch>
            <Route exact path="/">
              <Home />
            </Route>
            <Route exact path="/shop">
              <Shop penguins={penguins}/>
            </Route>
            <Route path="/cart" >
              <Cart />
            </Route>
            <Route exact path="/checkout" >
              <Checkout />
            </Route>
            <Route exact path="/login" >
              <Login />
            </Route>
          </Switch>
       </BrowserRouter>
    </div>
  );
 } 
export default App;
