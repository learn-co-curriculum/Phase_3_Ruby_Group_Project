import React from "react"

class CardFront extends React.Component {

    render() {
        return (
        <div className="modal">
           <h2>{this.props.event.name}</h2>
                <img src={this.props.event.imageUrl} className="images"/>
                <h2>{this.props.event.venueName}</h2>
                <h2>{this.props.event.date}</h2>
                
                {this.props.event.priceMin &&
                <h2>
                    ${this.props.event.priceMin} - ${this.props.event.priceMax}
                </h2> 
                }
        </div>
        )
    }
}

export default CardFront