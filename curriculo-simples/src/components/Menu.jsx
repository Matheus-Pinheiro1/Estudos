import { NavLink } from "react-router-dom";

export default function Menu() {
  return (
    <div className="menu">
      <NavLink to="/" className={({ isActive }) => (isActive ? "ativo" : "")}>
        Currículo
      </NavLink>

      <NavLink
        to="/contato"
        className={({ isActive }) => (isActive ? "ativo" : "")}
      >
        Contato
      </NavLink>
    </div>
  );
}
