class ProfileCard extends React.Component {
  //need to get values up to profiles list? 
  constructor(props){
    super(props);
    this.state = {
      values: []
    }
  }
  componentDidMount() {
    const url = 'http://localhost:3000/profiles/' + this.props.profile.id + '/values';
    this.getValues = $.ajax({
        url: url,
        type: 'GET',
        dataType: 'json'
      })
      .done((values) => {
        this.setState({values: values});
        })
      .fail(() => console.log('error getting values'));
  }
  render () {
    let profile = this.props.profile;
    return (
      <div className="profile-card">
        <div className="card-left">
          <img src={profile.image_url} className="user-img" />
          <ValuesList values={this.state.values} />
        </div>
        <div className="card-right">
          <span className="quote">{profile.quote}</span>
          <p>{profile.location}</p>
          <p>{profile.insights}</p>
        </div>
      </div>
    )
  }
}
