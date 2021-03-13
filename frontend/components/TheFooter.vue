<template>
  <div>
    <v-footer padless>
      <v-col class="text-center" cols="12">
        {{ new Date().getFullYear() }} — Vuetify
      </v-col>
    </v-footer>
  </div>
</template>

<script>
export default {
  data() {
    return {
      localAttr: {
        google: 'https://google.com',
      },
    }
  },
}
</script>

<style></style>
