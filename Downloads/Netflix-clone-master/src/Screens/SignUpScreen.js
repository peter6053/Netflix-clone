import React from 'react';
import "./SignupScreen.css";

function SignUpScreen() {
    return (
        <div className="signupScreen">

            <form>
                <h1> Sign In</h1>
                <input placeholder='Email' type="email" />
                <input placeholder="Password" type="password" />
                <button type="submit"> Sign In</button>
                <h4>
                    <span className="signUpSreen__gray"> New to netflix?</span>
                    <span className="SignUpnow__Link"> Sign Up now</span>

                   </h4>

                    





            </form>



        </div>

    )
}

export default SignUpScreen