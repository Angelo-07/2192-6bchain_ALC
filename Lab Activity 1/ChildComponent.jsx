import React from "react";

class ChildComponent extends React.Component {
    render () {
        return (
            <div>{this.props.message}</div>
        );
    }
}

/*
function ChildComponent(props) {
    return (
        <div>
            <p>{props.message}</p>
        </div>
    );
}
*/

export default ChildComponent;