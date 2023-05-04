import React, { useState } from "react";
import './style.css'

function Tooltip(props) {
  const [isVisible, setIsVisible] = useState(false);

  // Tooltip content
  const tooltipContent = <div className="tooltip">{props.text}</div>;

  // Show/hide tooltip
  const toggleTooltip = () => {
    setIsVisible(!isVisible);
  };

  // Render
  return (
    <span
      className="tooltip-container"
      onMouseEnter={toggleTooltip}
      onMouseLeave={toggleTooltip}
    >
      {props.children}
      {isVisible && tooltipContent}
    </span>
  );
}

export default Tooltip