<template>
  <div class='metamask-info'>
    <p>Metamask: {{ web3.isInjected }}</p>
    <p>Network: {{ web3.networkId }}</p>
    <p>Account: {{ web3.coinbase }}</p>
    <p>Balance: {{ web3.balance }}</p>
  </div>
</template>

<script>
export default {
  name: 'hello-metamask',
  computed: {
    web3 () {
      return this.$store.state.web3
    }
  }
}
</script>

<style scoped></style>
