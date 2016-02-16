class ValuesList extends React.Component {
  render () {
    let values = this.props.values.map((value) => {
      return <div key={value.id} className="value">{value.value}</div>
    });
    return <div className="values">{values}</div>
  }
}
