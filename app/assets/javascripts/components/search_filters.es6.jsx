class SearchFilters extends React.Component {
  constructor(props) {
    super(props);
    this.onChange = this.onChange.bind(this);
  }
  onChange(e) {
    let newValues = {};
    newValues[e.target.name] = e.target.value;
    this.props.onUserInput(newValues);
  }
  render () {
    return (
      <form>
        <input
          type="text"
          placeholder="Location"
          value={this.props.locationFilter}
          name="locationFilter"
          ref="locationFilterInput"
          onChange={this.onChange}
        />
      </form>
    )
  }
}
