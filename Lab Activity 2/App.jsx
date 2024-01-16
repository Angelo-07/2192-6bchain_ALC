// Name: Angelo L. Cometa
import React from 'react'
import './App.css'
import ToDoList from './assets/components/ToDoList'
import MovieList from './assets/components/MovieList'
import Booklist from './assets/components/Booklist'

function App() {
  return (
      <div className="App">
        <div class="container" id='cont'>
        <ToDoList/>
        </div>
        <div class="container" id='cont'>
        <MovieList/>
        </div>
        <div class="container" id='cont'>
        <h2>Book List</h2>
        <Booklist faveBookList = "1: Everything is F*cked" />
        <Booklist faveBookList = "2: The Sutle Art of not Giving a f*ck" />
        <Booklist faveBookList = "3: It Ends with us" />
        </div>
    </div>
  )
}

export default App
