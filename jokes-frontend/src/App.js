import React, { useState, useEffect } from 'react';
import './App.css';

function App() {
  const [joke, setJoke] = useState('');

  useEffect(() => {
    fetchJoke();
  }, []);

  const fetchJoke = async () => {
    const response = await fetch('http://localhost:8080/joke');
    const data = await response.text();
    setJoke(data);
  };

  return (
    <div className="App">
      <div className="content" style={{ display: 'flex', justifyContent: 'center', alignItems: 'center', height: '100vh' }}>
        <p>{joke}</p>
      </div>
    </div>
  );
}

export default App;
