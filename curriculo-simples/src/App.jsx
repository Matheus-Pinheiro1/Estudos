import { Routes, Route } from "react-router-dom";
import Menu from "./components/Menu";
import Home from "./pages/Home";
import Contato from "./pages/Contato";

export default function App() {
  return (
    <div>
      <Menu />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/contato" element={<Contato />} />
      </Routes>
    </div>
  );
}
