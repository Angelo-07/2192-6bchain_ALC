//Angelo L. Cometa      
//2192-6BChain      
//WD-401

import { useState } from 'react'
import './App.css'
import Hello from './components/Hello'
import Welcome from './components/Welcome'
import React from 'react';
import ParentComponent from './components/ParentComponent';

function App() {
  const [count, setCount] = useState(0)

  return (
      <div>
        <Hello/>
        <Welcome/>
        <ParentComponent/>
      </div> 
  )
}

export default App
