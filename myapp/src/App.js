import React from 'react';

function App() {
  const handleRedirect = () => {
    window.location.href = 'http://Django-211501353.eu-central-1.elb.amazonaws.com:8000';
  };

  return (
    <div>
      <h1>Welcome to Your App</h1>
      <button onClick={handleRedirect}>
        Redirect
      </button>
    </div>
  );
}

export default App;
