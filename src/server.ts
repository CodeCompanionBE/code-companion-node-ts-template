import Fastify from 'fastify';
import autoLoad from '@fastify/autoload';
import path from 'node:path';

const server = Fastify({
  logger: {
    level: process.env.LOG_LEVEL || 'info',
  },
});

server.register(autoLoad, {
  dir: path.join(import.meta.dirname, 'routes'),
});

export default server;
