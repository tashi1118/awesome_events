<template>
  <div class="mt-3">
    <v-card class="mt-5">
      <v-form ref="form" lazy-validation>
        <v-row justify="center">
          <p cols="12" class="mt-3 display-1 grey--text">ログイン</p>
        </v-row>
        <v-row justify="center">
          <v-col cols="12" md="10" sm="10">
            <v-text-field v-model="email" label="Eメールアドレス" />
            <p class="caption mb-0" />
          </v-col>
        </v-row>
        <v-row justify="center">
          <v-col cols="12" md="10" sm="10">
            <v-text-field
              v-model="password"
              type="password"
              label="パスワード"
            />
          </v-col>
        </v-row>
        <v-row justify="center">
          <v-col cols="12" md="10" sm="10">
            <v-btn
              block
              class="mr-4 blue white--text"
              @click="loginWithAuthModule"
            >
              ログイン
            </v-btn>
          </v-col>
        </v-row>
      </v-form>
    </v-card>
  </div>
</template>

<script>
export default {
  data() {
    return {
      password: '',
      email: '',
    }
  },
  methods: {
    async loginWithAuthModule() {
      try {
        const res = await this.$axios.$post('/auth/sign_in')
        const redirectUrl = `${res.protocol}${res.host}/${res.auth_link}`
        window.location.href = redirectUrl

        await this.$auth.loginWith('local')
      } catch (err) {
        console.log(err)
      }
    },
  },
}
</script>
