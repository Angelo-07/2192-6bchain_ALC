import { useState } from 'react'
import './App.css'
import Demo1 from './components/Conditional-Demo-1'
import Demo2 from './components/Conditional-Demo-2'
import Demo3 from './components/Conditional-Demo-3'
import Demo4 from './components/Conditional-Demo-4'

function App() {
  const [count, setCount] = useState(0)

  return (
    <div>
    <Demo1/>
    <div class="container">
    <Demo2/>
    </div>
    <div class="container">
    <Demo3/>
    </div>
    <div class="container">
    <Demo4/>
    </div>
    </div>
  )
}

export default App
