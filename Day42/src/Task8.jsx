import React from "react";

function Task8({ title, price }) {
  return (
    <div>
      <h4>{title}</h4>
      <p>Price: ₹{price}</p>
    </div>
  );
};

export default Task8;