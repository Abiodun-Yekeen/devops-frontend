import axios from 'axios';

const axiosInstance = axios.create({
  baseURL: 'http://3.88.210.223:8085/api/', // Set your backend server URL here
});

export default axiosInstance;
