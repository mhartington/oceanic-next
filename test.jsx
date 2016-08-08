const EmailField = function (props) {
  return {
    propTypes: {
      email: React.PropTypes.string,
      isEditMode: React.PropTypes.bool
    },

    props,

    onKeyUp (e) {
      if (e.keyCode !== ENTER_KEY) return;
      setEmail(e.target.value);
    },

    render () {
      const isEditMode = this.props.isEditMode;
      const email = this.props.email;

      const displayStyle = {
        display: isEditMode ? 'none' : 'block'
      };
      const editStyle = {
        display: isEditMode ? 'block' : 'none'
      };

      return (
        <div>
          <p
            onClick={ () => setEditMode(true) }
            style = { displayStyle }
            >{ email }
          </p>
          <input
            type="email"
            onKeyUp={ this.onKeyUp }
            style = { editStyle }
            placeholder = { email } />
        </div>
      );
    }
  };
};
