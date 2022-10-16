import { Navbar, Nav } from "react-bootstrap";
import { Link } from "react-router-dom";

function Header() {
  return (
    <div>
      <Navbar bg="dark" variant="dark">
        <Navbar.Brand href="#home"> &nbsp; E-Com</Navbar.Brand>
        <Nav className="me-auto navbar_wrapper">
          {
            localStorage.getItem('user-info') ?
              <>
                <Link to="/add" className="btn btn-outline-success ">
                  Add Product
                </Link>
                &nbsp;
                <Link to="/update" className="btn btn-outline-success">
                  Update Product
                </Link>
              </>
              :
              <>
                <Link to="/login" className="btn btn-outline-success">
                  Login
                </Link>
                &nbsp;
                <Link to="/register" className="btn btn-outline-success">
                  Regirster
                </Link>
              </>
          }




        </Nav>
      </Navbar>
    </div>
  );
}

export default Header;
