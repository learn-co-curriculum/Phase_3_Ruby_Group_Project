import React from 'react';
import './App.css';
import EventContainer from './components/EventContainer'

URL = "http://localhost:9393"
class App extends React.Component {

  state = {
    events: [],
    venues: []
  }

  componentDidMount() {
    fetch(`${URL}/events`)
    .then(res => res.json())
    .then(eventData => {
      this.setState({
        events: eventData
      })
    })
  }

  sort(e) {
    fetch(`${URL}/${e.target.value}`)
    .then(res => res.json())
    .then(dateData => {
      console.log(dateData)
      this.setState({
        events: dateData
      })
    })
  }

  render() {
    
    return (
    
    <div>
      <header >Website name</header>
      <div>
        <form className="form">
          <select onChange={(e) => this.sort(e)}>
            <option value="events">default</option>
            <option value="dates">dates</option>
            <option>Ex2</option>
            <option>Ex3</option>
            <option>Ex4</option>
          </select>
        </form>
      </div>
      <div>
        <EventContainer eventData={this.state.events} />
      </div>
    </div>
  );  
  }
}

export default App;
