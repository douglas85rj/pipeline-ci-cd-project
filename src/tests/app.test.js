const request = require('supertest');
const app = require('../app');

describe('GET /', () => {
    it('should respond with a 200 status code', async () => {
        const response = await request(app).get('/');
        expect(response.statusCode).toBe(200);
    });

    it('should respond with a welcome message', async () => {
        const response = await request(app).get('/');
        expect(response.text).toContain('Welcome to the application!');
    });
});

// Add more tests as needed for other routes and functionalities.