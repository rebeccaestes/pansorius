class ProfileCard extends React.Component {
  render () {
    let profile = this.props.profile;
    return (
      <div className="profile-card">
        <div className="card-left">
          <img src={profile.image_url} className="user-img" />
          <ValuesList profile={profile}>Values pholder</ValuesList>
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
