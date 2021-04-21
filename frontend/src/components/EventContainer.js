import React from 'react';
import EventCard from './EventCard'

const EventContainer = (props) => {
    return(
        <div className="container">
            {props.eventData.map(event => <EventCard event={event} />)}
            {/* {props.venueData.map(venue => <EventCard key={venue.id} venue={venue}/>)} */}
        </div>
    )
}

export default EventContainer