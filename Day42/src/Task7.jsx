import React from "react";

function Task7({ color, size, text }){
  return (
    <button
      style={{
        backgroundColor: color,
        padding: size === "large" ? "12px 24px" : "6px 12px",
        color: "white",
        border: "none",
        borderRadius: "4px",
      }}
    >
      {text}
    </button>
  );
};

export default Task7;