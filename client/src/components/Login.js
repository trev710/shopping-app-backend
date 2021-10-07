import React, {useState} from 'react';
import { BrowserRouter } from 'react-router-dom'

function Login() {

    const [inputField , setInputField] = useState({
        user_name: '',
        Password: '',
        redirectToHome: false

    })

    const inputsHandler = (e) =>{
        setInputField( {[e.target.name]: e.target.value} )
    }

    const loginButton = () =>{
        alert (`successfully logged in: ${inputField.user_name}`);
    }

    return (
        <div>
            <input 
            type="text" 
            name="user_name" 
            onChange={inputsHandler} 
            placeholder="Username" 
            value={inputField.user_name}/>

            <br/>

            <input 
            type="password" 
            name="Password" 
            onChange={inputsHandler} 
            placeholder="Password" 
            value={inputField.Password}/>

            <br/>

            <button onClick={loginButton}>Login</button>
        </div>
    )
}

export default Login