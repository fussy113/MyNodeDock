import { storiesOf } from '@storybook/vue'

import MyButton from '@/components/MyButton.vue'

storiesOf('Button', module)
  .add(
    'Button view',
    () => ({
      components: { MyButton },
      template: '<my-button />',
    }),
    {
      info: {}
    }
  )
