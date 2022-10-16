import { Button } from "react-bootstrap";
import React, { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import Header from "./Header";

function Register() {

  useEffect(()=>{
    if(localStorage.getItem('user-info')){
      navigate("/add");
    }
  },[])

  const [name, setName] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const navigate = useNavigate();

  async function signup() {
    // console.warn(name, email, password);
    let item = { name, email, password };

    let result = await fetch("http://localhost:8000/api/register", {
      method: "POST",
      body: JSON.stringify(item),
      headers: {
        "Content-Type": "Applicaiton/json",
        Accept: "Applicaiton/json",
      },
    });

    result = await result.json();
    localStorage.setItem("user-info", JSON.stringify(result));
    navigate("/add");
    // console.warn(result);
  }

  return (
    <>
      <Header />
      <div className="mt-2 card col-sm-6  offset-sm-3">
        <div className="card-body">
          <h1>Register Page</h1>
          <hr />
          <input
            type="text"
            value={name}
            onChange={(e) => setName(e.target.value)}
            className="form-control mb-2"
            placeholder="Enter Name Here"
          />
          <input
            type="email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            className="form-control mb-2"
            placeholder="Enter Email Here"
          />
          <input
            type="password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            className="form-control mb-2"
            placeholder="Enter Password Here"
          />

          <button onClick={signup} className="btn btn-sm btn-success">
            Sign Up
          </button>
        </div>
      </div>
    </>
  );
}

export default Register;
