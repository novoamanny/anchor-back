# Anchor Fabrication Backend API

Built with Strapi CMS
[See Strapi Documentation here](https://strapi.io/documentation/).

## Setup

We have removed `config/database.js` from tracking, so the file will need to be created within the config directory.

Add something similar to:
```
module.exports = ({ env }) => ({
  defaultConnection: 'default',
  connections: {
    default: {
      connector: 'bookshelf',
      settings: {
        client: 'mysql',
        host: env('DATABASE_HOST', '127.0.0.1'),
        port: env.int('DATABASE_PORT', 3306),
        database: env('DATABASE_NAME', 'anchor-example-database'),
        username: env('DATABASE_USERNAME', 'anchor-example-user'),
        password: env('DATABASE_PASSWORD', 'anchor-example-password'),
        ssl: env.bool('DATABASE_SSL', false),
      },
      options: {},
    },
  },
});
```

1. Use `nvm use` when changing into the directory, or [update your shell to do this automatically](https://github.com/nvm-sh/nvm#deeper-shell-integration)
2. If you do not have it installed, install it with: `nvm install 14.16.0`
3. Ensure you install dependencies: `yarn`
4. Start the development server: `yarn dev`
## Admin Panel

You should see an admin panel open up in a browser window. If not, navigate to `http://localhost:1337/admin/`

## Migrations

To avoid passing around full SQL dumps, possibly causing issues between developers, leverage migrations. For now, manually export tables and entries which is trivial with [Sequel Pro](https://www.sequelpro.com/) (free). And add it to the migrations so other team members can:

* PR review the structure / imports. Not a big deal though since they're system generated usually, but can't hurt
* Can import incremental changes instead of mass updates that could conflict with local updates

### Long Term

Long term, adopt and setup [Sequelize](https://sequelize.org/) or [Knex](https://knexjs.org/), which will handle the migrations automatically via commands.