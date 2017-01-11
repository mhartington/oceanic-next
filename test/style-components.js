import styled from 'styled-components';

const Button = styled.button`
  /* Color the background and border with theme.main */
  background: ${props => props.theme.main};
  border: 2px solid ${props => props.theme.main};

  /* …more styles here… */
`;

// Set the default theme, in our case main will be
// palevioletred if no other theme is specified
Button.defaultProps = {
  theme: {
    main: 'palevioletred',
  },
};
