import logo from "./logo.svg";
import "./App.css";
import { Button } from "react-bootstrap";
import Header from "./Header";
import Login from "./Login";
import Register from "./Register";
import AddProduct from "./AddProduct";
import UpdateProduct from "./UpdateProduct";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Protected from "./Protected";

function App() {
  return (
    <div className="App">
      <BrowserRouter>
        {/* <Header /> */}
        <Routes>
          <Route path="/login" element={<Login />} />
          {/* <Route path="/add" element={<AddProduct />} /> */}
          <Route path="/add" element={<Protected Cmp={AddProduct} />} />
          {/* <Route path="/update" element={<UpdateProduct />} /> */}
          <Route path="/update" element={<Protected  Cmp={UpdateProduct}/>} />
          <Route path="/register" element={<Register />} />
        </Routes>
      </BrowserRouter>
    </div>
  );
}

export default App;
