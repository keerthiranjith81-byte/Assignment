import React, { useState } from "react";

const Task8 = () => {
  const [isDark, setIsDark] = useState(false);

  const toggleTheme = () => setIsDark(!isDark);

  const style = {
    backgroundColor: isDark ? "#333" : "#fff",
    color: isDark ? "#fff" : "#000",
    height: "100vh",
    display: "flex",
    justifyContent: "center",
    alignItems: "center",
    flexDirection: "column",
  };

  return (
    <div style={style}>
      <h1>{isDark ? "Dark Theme" : "Light Theme"}</h1>
      <button onClick={toggleTheme}>
        Switch to {isDark ? "Light" : "Dark"}
      </button>
    </div>
  );
};

export default Tas8;