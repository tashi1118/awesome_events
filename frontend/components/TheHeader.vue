<template>
  <div>
    <v-app-bar flat>
      <v-app-bar-nav-icon></v-app-bar-nav-icon>
      <v-toolbar-title>タイトル</v-toolbar-title>

      <v-spacer></v-spacer>

      <v-btn icon>
        <v-icon @click="login">fas fa-lock</v-icon>
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

  methods: {
    async login() {
      const res = await this.$axios.$get('/auth/sign_in')
      const redirectUrl = `${res.protocol}${res.host}/${res.auth_link}`
      window.location.href = redirectUrl
    },
  },
}
</script>

<style></style>
