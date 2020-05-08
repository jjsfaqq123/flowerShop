import http from "../utils/http"
export const homeUser =param => {
  http.get('/homebarthday',param)
}