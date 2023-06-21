import React, { useState, useEffect } from 'react';
import './App.css';

function App() {
  const [joke, setJoke] = useState('');

  useEffect(() => {
    fetchJoke();
  }, []);

  const fetchJoke = async () => {
    const response = await fetch('/joke');
    const data = await response.text();
    setJoke(data);
  };

  return (
  <div className="App">
    <div className="container" style={{ display: 'flex', justifyContent: 'center', alignItems: 'center', height: '100vh' }}>
      <div className="content" style={{ background: 'lightblue', padding: '20px', borderRadius: '10px' }}>
        <p>{joke}</p>
      </div>
    </div>
  </div>
  );
}

export default App;
