import React from "react"

class InfoCard extends React.Component {

    render() {
        return (
        <div className="modal">
           <h2>{this.props.event.info}</h2>
           {this.props.event.ytUrl &&
           <a href={this.props.event.ytUrl}>Facebook</a>
            }
            <br/>
            {this.props.event.igUrl &&
           <a href={this.props.event.igUrl}>Twitter</a>
            }
        </div>
        )
    }
}

export default InfoCard