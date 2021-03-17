<template>
  <div>
    <v-app-bar flat>
      <v-app-bar-nav-icon></v-app-bar-nav-icon>
      <v-toolbar-title>タイトル</v-toolbar-title>

      <v-spacer></v-spacer>

      <v-btn icon>
        <nuxt-link to="/login">
          <v-icon>fas fa-lock</v-icon>
        </nuxt-link>
      </v-btn>
    </v-app-bar>
  </div>
</template>

<script>
export default {
  data() {
    return {
      text: 'aaaa',
    }
  },

  methods: {},
}
</script>

<style></style>
