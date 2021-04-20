import { Card, Image } from "semantic-ui-react";

const ItemCard = (props) => {
    return (
      <Card raised>
        <Image src={props.item.imageUrl} />
        <Card.Content>
          <Card.Header>
              {props.item.name}
          </Card.Header>
          <Card.Description>
              Price: {props.item.price} <br />
              Condition: {props.item.condition} <br />
              Description: {props.item.description} <br />
              Category: {props.item.category} <br />
          </Card.Description>
          {props.myPage ? <button 
                    className="userRmvBtn" 
                    id={props.item.id} 
                    onClick={()=>props.remove(props.item)}>x</button> : null}
        </Card.Content>
      </Card>
    )
}

export default ItemCard