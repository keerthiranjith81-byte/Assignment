import React, { useState } from "react";

const Task9 = () => {
  const [selected, setSelected] = useState("");

  return (
    <div>
      <select value={selected} onChange={(e) => setSelected(e.target.value)}>
        <option value="">Select an option</option>
        <option value="Option 1">Option 1</option>
        <option value="Option 2">Option 2</option>
        <option value="Option 3">Option 3</option>
      </select>
      {selected && <p>You selected: {selected}</p>}
    </div>
  );
};

export default Task9;