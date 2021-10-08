import React, {useState} from 'react';
import { BrowserRouter } from 'react-router-dom'

function Login() {
let img = <img src="https://text2image.com/user_images/202110/text2image_W4720911_20211008_160727.jpg" />
    const [inputField , setInputField] = useState({
        username: '',
        password: '',
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
            // onChange={inputsHandler} 
            placeholder="Password" 
            value={inputField.Password}/>

            <br/>

            <button onClick={loginButton}>Login</button>    
        </div>
    )
}

export default Login