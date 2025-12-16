import React, { useState } from "react";

const Task4 = () => {
  const [num, setNum] = useState("");

  return (
    <div>
      <input
        type="number"
        value={num}
        onChange={(e) => setNum(e.target.value)}
      />
      <p>{num !== "" && (num % 2 === 0 ? "Even" : "Odd")}</p>
    </div>
  );
};

export default Task4;