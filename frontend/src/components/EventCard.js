import React from 'react';

class EventCard extends React.Component {

    render() {
        return (
            <div className="card">
                <h2>{this.props.event.name}</h2>
                <img src={this.props.event.image} className="images"/>
                <h2>{this.props.event.venueName}</h2>
                <h2>{this.props.event.date}</h2>
            </div>
        )
    }
}

export default EventCard