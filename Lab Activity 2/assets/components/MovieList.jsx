import React from "react";

class MovieList  extends React.Component {
    render () {
        return (
        <div>
            <h2>Movie List</h2>
            <div class="flexcontainer">
            <div class="card">
                <img src="rewind.jpeg" width="180em%" height="300em"></img>
                <div class="container" id="moviee">
                    <h4><b>Movie 1: Rewind</b></h4> 
                </div>
            </div>
            
            <div class="card">
                <img src="Mallari.jpg" width="180em%" height="300em"></img>
                <div class="container" id="moviee">
                    <h4><b>Movie 2: Mallari</b></h4> 
                </div>
            </div>
            <div class="card">
                <img src="twilight.jpg" width="180em%" height="300em"></img>
                <div class="container" id="moviee">
                    <h4><b>Movie 3: Twilight</b></h4> 
                </div>
            </div>
            <div class="card">
                <img src="GSP.jpg" width="180em%" height="300em"></img>
                <div class="container" id="moviee">
                    <h4><b>Movie 4: Gaya sa Pelikula</b></h4> 
                </div>
            </div>
            </div>
           
            
        </div>
        );
    }
}


export default MovieList;