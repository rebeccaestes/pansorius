const defaultProps = {
  role: ''
};

class Index extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      valuesFilter: '',
      roleFilter: this.props.role, //remove props from in here
      locationFilter: ''
    };
    this.handleUserInput = this.handleUserInput.bind(this);
  }
  handleUserInput(newValues) {
    this.setState(newValues);
  }
  render() {
    return (
      <div>
        <SearchFilters
          valuesFilter={this.state.valuesFilter}
          roleFilter={this.state.roleFilter}
          locationFilter={this.state.locationFilter}
          onUserInput={this.handleUserInput}
        />
        <ProfilesList
          profiles={this.props.profiles}
          valuesFilter={this.state.valuesFilter}
          roleFilter={this.state.roleFilter}
          locationFilter={this.state.locationFilter}
        />
      </div>
    )
  }
}

Index.defaultProps = defaultProps;
