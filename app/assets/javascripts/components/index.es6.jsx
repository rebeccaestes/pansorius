class Index extends React.Component {
  constructor(props){
    super(props);
    this.state = {profiles: this.props.profiles};
    console.log(this.state);
  }

  render() {
    return (
      <div>
        <ProfilesList profiles={this.state.profiles}/>
      </div>
    )
  }
};
