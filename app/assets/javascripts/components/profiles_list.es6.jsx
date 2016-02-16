class ProfilesList extends React.Component {
  render () {
    let profiles = this.props.profiles.map((profile) => {
      if (profile.location.toLowerCase().includes(this.props.locationFilter.toLowerCase())) {
        return (
          <ProfileCard key={profile.id} profile={profile}>
            {profile.name}
          </ProfileCard>
        )
      }
    })
    return <div>{profiles}</div>
  }
}
