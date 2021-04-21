import React from 'react';
import InfoCard from './InfoCard'
import CardFront from './CardFront'

class EventCard extends React.Component {

    state = {
        details: false
    }

    render() {
        return ( 
            <div className="card" onClick={() => this.setState({ details: !this.state.details})}>
                {!this.state.details && <CardFront event={this.props.event}/>}
                {this.state.details && <InfoCard event={this.props.event}/>}
            </div>
        )
    }
}

export default EventCard