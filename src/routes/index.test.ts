import { describe, before, test } from 'node:test';
import assert from 'node:assert/strict';

import request from 'supertest';

import server from '../server.js';

const RESOURCE_URI = '/';

describe(`${RESOURCE_URI}`, () => {
  before(async () => {
    await server.ready();
  });

  function act(token?: string) {
    const req = request(server.server).get(RESOURCE_URI);

    if (token) return req.set('Authorization', `Bearer ${token}`);

    return req;
  }

  test('it works', async () => {
    const { status } = await act();

    assert.equal(status, 200);
  });
});
