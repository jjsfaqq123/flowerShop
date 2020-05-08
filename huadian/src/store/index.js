import Vue from 'vue'
import Vuex from 'vuex'
import * as mutations from "./mutation"
import * as actions from "./action"
import * as modules from "./modules"
import createPersistedState from "vuex-persistedstate"
Vue.use(Vuex)
const state = {
  guideIndex:0,
}
export default new Vuex.Store({
  state,
  mutations,
  actions,
  modules,
  plugins: [createPersistedState()]
})
