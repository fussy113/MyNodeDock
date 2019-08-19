import { configure } from '@storybook/vue'

import 'bulma/css/bulma.css'

const req = require.context('../stories', true, /\.stories.js$/)
function loadStories() {
  req.keys().forEach(filename => req(filename));
}

configure(loadStories, module)
