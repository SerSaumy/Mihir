/**
 * Android API Shims
 * 
 * Provides JavaScript implementations of Android APIs commonly used
 * by Mihon extensions. These shims bridge Android functionality to
 * Node.js/JavaScript equivalents.
 */

const cheerio = require('cheerio');

/**
 * Android Base64 utilities
 */
const Base64 = {
  encodeToString: (bytes, flags = 0) => {
    if (Buffer.isBuffer(bytes)) {
      return bytes.toString('base64');
    }
    if (typeof bytes === 'string') {
      return Buffer.from(bytes, 'utf8').toString('base64');
    }
    return Buffer.from(bytes).toString('base64');
  },

  decode: (str, flags = 0) => {
    return Buffer.from(str, 'base64');
  },
};

/**
 * Android HTML utilities
 */
const Html = {
  fromHtml: (html, flags = 0) => {
    // Strip HTML tags and decode entities
    const $ = cheerio.load(html);
    return $.text();
  },
};

/**
 * OkHttp Request/Response shims
 * These serialize to JSON and are sent to Dart for actual HTTP execution
 */
class Request {
  constructor(builder) {
    this.url = builder.url;
    this.method = builder.method || 'GET';
    this.headers = builder.headers || {};
    this.body = builder.body;
  }

  static Builder = class {
    constructor() {
      this.url = null;
      this.method = 'GET';
      this.headers = {};
      this.body = null;
    }

    url(url) {
      this.url = url;
      return this;
    }

    method(method, body) {
      this.method = method;
      this.body = body;
      return this;
    }

    get() {
      this.method = 'GET';
      return this;
    }

    post(body) {
      this.method = 'POST';
      this.body = body;
      return this;
    }

    header(name, value) {
      this.headers[name] = value;
      return this;
    }

    addHeader(name, value) {
      if (!this.headers[name]) {
        this.headers[name] = [];
      }
      if (Array.isArray(this.headers[name])) {
        this.headers[name].push(value);
      } else {
        this.headers[name] = [this.headers[name], value];
      }
      return this;
    }

    build() {
      return new Request(this);
    }
  };
}

class Response {
  constructor(request, statusCode, headers, body) {
    this.request = request;
    this.statusCode = statusCode;
    this.headers = headers;
    this.body = body;
  }

  body() {
    return this.body;
  }

  code() {
    return this.statusCode;
  }

  headers() {
    return this.headers;
  }

  isSuccessful() {
    return this.statusCode >= 200 && this.statusCode < 300;
  }
}

/**
 * JSoup shim using Cheerio
 */
const Jsoup = {
  parse: (html) => {
    return cheerio.load(html);
  },

  connect: (url) => {
    // This will be handled by the HTTP proxy
    return {
      url,
      get: () => {
        // Return a promise that will be resolved by the bridge
        return Promise.resolve({ html: () => '' });
      },
    };
  },
};

/**
 * Gson/Moshi JSON parsing shim
 */
const Gson = {
  fromJson: (json, type) => {
    return JSON.parse(json);
  },

  toJson: (obj) => {
    return JSON.stringify(obj);
  },
};

module.exports = {
  Base64,
  Html,
  Request,
  Response,
  Jsoup,
  Gson,
};
