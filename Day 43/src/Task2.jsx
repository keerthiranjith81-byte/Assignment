import React, { useState } from "react";

const Task2 = () => {
  const [text, setText] = useState("");

  return (
    <div>
      <input
        type="text"
        value={text}
        onChange={(e) => setText(e.target.value)}
        placeholder="Type here"
      />
      <p>{text}</p>
    </div>
  );
};

export default Task2;