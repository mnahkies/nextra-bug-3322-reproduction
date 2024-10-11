# reproduction for https://github.com/shuding/nextra/issues/3322

https://github.com/shuding/nextra/issues/3322#issuecomment-2408046904

Instructions:
1. Clone
2. Run `docker build -t nextra-test .`

## Output

```shell
docker build -t nextra-test .
[+] Building 22.1s (10/10) FINISHED                                                                                                            docker:default
 => [internal] load build definition from Dockerfile                                                                                                     0.1s
 => => transferring dockerfile: 176B                                                                                                                     0.0s
 => [internal] load metadata for docker.io/library/node:22                                                                                               0.4s
 => [internal] load .dockerignore                                                                                                                        0.1s
 => => transferring context: 124B                                                                                                                        0.0s
 => CACHED [1/6] FROM docker.io/library/node:22@sha256:69e667a79aa41ec0db50bc452a60e705ca16f35285eaf037ebe627a65a5cdf52                                  0.0s
 => [internal] load build context                                                                                                                        0.1s
 => => transferring context: 53.31kB                                                                                                                     0.0s
 => [2/6] WORKDIR /app                                                                                                                                   0.5s
 => [3/6] ADD . .                                                                                                                                        0.2s
 => [4/6] RUN corepack enable                                                                                                                            0.5s
 => [5/6] RUN yarn                                                                                                                                      10.7s
 => ERROR [6/6] RUN yarn build                                                                                                                           9.1s 
------                                                                                                                                                        
 > [6/6] RUN yarn build:                                                                                                                                      
1.237 Attention: Next.js now collects completely anonymous telemetry regarding usage.                                                                         
1.238 This information is used to shape Next.js' roadmap and prioritize features.                                                                             
1.238 You can learn more, including how to opt-out if you'd not like to participate in this anonymous program, by visiting the following URL:                 
1.238 https://nextjs.org/telemetry                                                                                                                            
1.238 
1.269   ▲ Next.js 14.2.15
1.269 
1.270    Linting and checking validity of types ...
2.021    Creating an optimized production build ...
8.997 Failed to compile.
8.997 
8.997 ./node_modules/typescript/lib/typescript.js
8.997 Module not found: Can't resolve 'module'
8.997 
8.997 https://nextjs.org/docs/messages/module-not-found
8.997 
8.997 Import trace for requested module:
8.997 ./node_modules/twoslash/dist/index.mjs
8.997 ./node_modules/@shikijs/twoslash/dist/index.mjs
8.997 ./node_modules/nextra/dist/server/compile.js
8.997 ./node_modules/nextra/dist/client/components/playground.js
8.997 ./node_modules/nextra/dist/client/components/index.js
8.997 ./node_modules/nextra-theme-docs/dist/index.js
8.997 ./src/pages/_app.tsx
8.997 
8.998 
8.998 > Build failed because of webpack errors
------
Dockerfile:7
--------------------
   5 |     RUN corepack enable
   6 |     RUN yarn
   7 | >>> RUN yarn build
   8 |     
   9 |     
--------------------
ERROR: failed to solve: process "/bin/sh -c yarn build" did not complete successfully: exit code: 1
```
