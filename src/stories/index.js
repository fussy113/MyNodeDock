import { storiesOf } from '@storybook/vue'

import Logo from '@/components/Logo.vue'

storiesOf('Logo', module)
  .add('Logo view', () => ({
    components: { Logo },
    template: '<logo />'
  }))
