import http from 'k6/http'
import { sleep } from 'k6'

export const options = {
    stages: [
        { duration: '5s', target: 10 },
        { duration: '30s', target: 10 },
        { duration: '5s', target: 0 }
    ]
}

const products = [
    'bcd50b3-95bb-45e2-bc4a-4ad1e9dcc5fe',
    '45646da7-b747-49e5-a167-91a45d5a0d5b',
    '51046043-6b3d-47e0-b5b0-f80b6027b0e3',
    '93847885-811a-4688-9db3-3975447d41a7',
    '06b66f46-39da-4d64-badd-871b5f46c5c4',
    '282191e1-4d80-4de1-8a2b-4327f0a3640f',
    '75795588-494f-4b6a-a24c-5aabed80dac3',
    'f9f9ad24-a216-435d-b585-8db9cde35410',
    '7f0bcaf1-3c49-4a56-aa90-6227007dd478',
]

export default () => {
    const randomIndex = Math.floor(Math.random() * 8)
    http.get(`http://localhost/products/${products[randomIndex]}`)
    sleep(1)
}