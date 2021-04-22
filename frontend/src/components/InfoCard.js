import React from "react"

class InfoCard extends React.Component {

    render() {
        return (
        <div className="modal">
            {this.props.event.info &&
           <h2 className="info">{this.props.event.info}</h2>
            }
           {this.props.event.ytUrl &&
           <a href={this.props.event.ytUrl} className="link">Facebook</a>
            }
            <br/>
            {this.props.event.igUrl &&
           <a href={this.props.event.igUrl} className="link">Twitter</a>
            }
        </div>
        )
    }
}

export default InfoCard