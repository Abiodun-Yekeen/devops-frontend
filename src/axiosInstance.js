import axios from 'axios';

const axiosInstance = axios.create({
  baseURL: '/api/', // Set your backend server URL here
});

export default axiosInstance;
