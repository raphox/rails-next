import axios from "axios";

const api = axios.create({
  baseURL: process.env.NEXT_PUBLIC_API_URL,
  timeout: 5000,
  headers: {
    Accept: "application/json",
  },
});

api.interceptors.request.use(
  function (config) {
    config.params = { ...config.params, token: "***" };

    return config;
  },
  function (error) {
    if (error.response.status === 401) {
      window.location.href = process.env.NEXT_PUBLIC_API_URL || "/";
    }

    return Promise.reject(error);
  }
);

export { api };
