class ValuesList extends React.Component {
  constructor(){
    super();
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
    console.log('state',this.state);
    let values = this.state.values.map((value) => {
      return <div key={value.id} className="value">{value.value}</div>
    });
    return <div className="values">{values}</div>
  }
}
