<template>
  <v-app>
    <TheHeader />
    <v-main>
      <v-container fluid fill-height>
        <Nuxt />
      </v-container>
    </v-main>
    <TheFooter />
  </v-app>
</template>

<script>
import TheFooter from '../components/TheFooter.vue'
import TheHeader from '../components/TheHeader.vue'

export default {
  components: {
    TheHeader,
    TheFooter,
  },
}
</script>

<style></style>
