class ProfilesList extends React.Component {
  render () {
    let profiles = this.props.profiles.map((profile) => {
      return <ProfileCard key={profile.id} profile={profile}>{profile.name}</ProfileCard>
    })
    return <div>{profiles}</div>
  }
}
