<template>
  <div>
    <span class="abc">Hi {{ message }}</span>
    <q-btn color="primary" v-on:click="reverseMessage" label="Reverse Message"></q-btn>
  </div>
</template>

<script>
{
  props: ['context'],
  data: function () {
    return {
      message: ''
    }
  },
  methods: {
    reverseMessage: function () {
      debugger
      this.message = this.message.split('').reverse().join('');
    }
  },
  created: function () {
    this.message = '12345';
  },
  components: {
    'q-btn': quasar.QBtn
  }
}
</script>

<style>
  .abc {
    color: blue;
  }
</style>