import React, { useState } from "react";

const Task5 = () => {
  const [color, setColor] = useState("lightblue");

  const changeColor = () => {
    setColor(color === "lightblue" ? "lightgreen" : "lightblue");
  };

  return (
    <button
      onClick={changeColor}
      style={{ backgroundColor: color, padding: "10px 20px", border: "none" }}
    >
      Change Color
    </button>
  );
};

export default Task5;