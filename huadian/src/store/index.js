import Vue from 'vue'
import Vuex from 'vuex'
import * as mutations from "./mutation"
import * as actions from "./action"
import * as modules from "./modules"
import createPersistedState from "vuex-persistedstate"
Vue.use(Vuex)
const state = {
  userArrar:new Array(),
  loginKey:'',
  guideIndex:0,
  purpoIndex:0,
  prowdIndex:'',
  occasionIndex:'',
  flowerIndex: '',
  categoryIndex:'',
  colorIndex:'',
  navbarIndex:'',
  addtoIndex:new Array(),
}
export default new Vuex.Store({
  state,
  mutations,
  actions,
  modules,
  plugins: [createPersistedState()]
})
