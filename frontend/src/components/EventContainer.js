import React from 'react';
import EventCard from './EventCard'

const EventContainer = (props) => {
    return(
        <div className="container">
            {props.eventData.map(event => <EventCard event={event} key={event.id} showInfo={props.showInfo} moreInfo={props.moreInfo}/>)}
        </div>
    )
}

export default EventContainer