//comparing functions
function Greeting() {
    return (
        <h1>Hello! I am a standard function.</h1>
    );
}
const ArrowGreeting = () => (
    <h1>Hello! I am an arrow function.</h1>
);

//function with an arrow function
function Demo1() {
    const handleClick = () => {
        alert("You clicked me!");
    }
    return (
        <button onClick={handleClick}>
            Click This Button!
        </button>
    );
}

//export default Greeting;
//export default ArrowGreeting;
export default Demo1;