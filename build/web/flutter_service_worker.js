'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "9251702e591db46393ebd239cb1687f7",
"/": "9251702e591db46393ebd239cb1687f7",
"main.dart.js": "49c878fe403a770bc465d9f35e00dcbc",
"favicon.png": "b7ed0b33e406b7744b1fa1e4a3150889",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "fd6494b37022485e5afc7fd40db2392b",
"assets/instaplant-logo.png": "451a9b558c4eff8f22e4e66e6196a539",
"assets/Icon-Large.png": "b589cf010b9b8300b0beafc3feb85e58",
"assets/home-button.png": "a4d2c043673fa5e4a9956a0bd7ce678a",
"assets/ccare-button.png": "c8a50292af7faa402ee7012705dd36f7",
"assets/chip3.png": "81e805711d7a326ff0a306da677c2021",
"assets/chip2.png": "4a600e9238042175c0a266720c7deb97",
"assets/youtube-logo.png": "867180102efa910834baa7e4c4a79b8f",
"assets/instaplant-leaf.png": "fcdffde737fa2929fd7e4d9f4fab2f1d",
"assets/chip1.png": "c2ccc5d55915de77f553f7732992f5e4",
"assets/AssetManifest.json": "0d8f630addade1ac0fda1b63624fd77d",
"assets/chip5.png": "bed7aa757897feb421e5cf9de4a60124",
"assets/chip4.png": "7a8bfbcca83e5abcaf3f14a76a0b5f60",
"assets/google-play-logo.png": "5b6fef1d17b1105ee246a8e4857b9878",
"assets/chip6.png": "25a1db99644f490f931e3f786851257e",
"assets/report-button.png": "9eb16029106e117c29b35d2b85038ff7",
"assets/NOTICES": "c8aa6c9191120c64be4f73de4928947e",
"assets/placeholder.png": "45dd61914e4ef910826e00bf83bff2a9",
"assets/app-store-logo.png": "5d8ecfa2283efdd250730e7a4fcec1ed",
"assets/instaplant-button.png": "707e4a51980443d137067b7d76ef3e9e",
"assets/logo.png": "e92d75da68b0db510c0ce50855b2de47",
"assets/discord-logo.png": "353b5e962071417f1e9d79f94adbd221",
"assets/FontManifest.json": "8055ff8263b2242fef45cafa49b03386",
"assets/TCi-Square.png": "54666b3e4c0320e57cfe39cd9df0f50d",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/Name-Large.png": "98b9082fc1aa5b36979db7ab8c9d6080",
"assets/bdbd-button.png": "65582761b2de56149e704ba5df1256f1",
"assets/relive-button.png": "71673e8fbf098db2895751e60ef0d7b3",
"assets/fonts/Montserrat-Light.ttf": "409c7f79a42e56c785f50ed37535f0be",
"assets/fonts/Montserrat-Thin.ttf": "43dd5b7a3d277362d5e801e5353e3a01",
"assets/fonts/Montserrat-Bold.ttf": "ade91f473255991f410f61857696434b",
"assets/fonts/OpenSans-Bold.ttf": "1025a6e0fb0fa86f17f57cc82a6b9756",
"assets/fonts/MaterialIcons-Regular.otf": "a68d2a28c526b3b070aefca4bac93d25",
"assets/assets/instaplant-logo.png": "451a9b558c4eff8f22e4e66e6196a539",
"assets/assets/Icon-Large.png": "b589cf010b9b8300b0beafc3feb85e58",
"assets/assets/home-button.png": "a4d2c043673fa5e4a9956a0bd7ce678a",
"assets/assets/ccare-button.png": "c8a50292af7faa402ee7012705dd36f7",
"assets/assets/chip3.png": "81e805711d7a326ff0a306da677c2021",
"assets/assets/chip2.png": "4a600e9238042175c0a266720c7deb97",
"assets/assets/youtube-logo.png": "867180102efa910834baa7e4c4a79b8f",
"assets/assets/instaplant-leaf.png": "fcdffde737fa2929fd7e4d9f4fab2f1d",
"assets/assets/chip1.png": "c2ccc5d55915de77f553f7732992f5e4",
"assets/assets/chip5.png": "bed7aa757897feb421e5cf9de4a60124",
"assets/assets/chip4.png": "7a8bfbcca83e5abcaf3f14a76a0b5f60",
"assets/assets/chip6.png": "25a1db99644f490f931e3f786851257e",
"assets/assets/report-button.png": "9eb16029106e117c29b35d2b85038ff7",
"assets/assets/instaplant-button.png": "707e4a51980443d137067b7d76ef3e9e",
"assets/assets/logo.png": "e92d75da68b0db510c0ce50855b2de47",
"assets/assets/discord-logo.png": "353b5e962071417f1e9d79f94adbd221",
"assets/assets/TCi-Square.png": "54666b3e4c0320e57cfe39cd9df0f50d",
"assets/assets/Name-Large.png": "98b9082fc1aa5b36979db7ab8c9d6080",
"assets/assets/bdbd-button.png": "65582761b2de56149e704ba5df1256f1",
"assets/assets/relive-button.png": "71673e8fbf098db2895751e60ef0d7b3",
"assets/assets/fonts/Montserrat-Light.ttf": "409c7f79a42e56c785f50ed37535f0be",
"assets/assets/fonts/Montserrat-Thin.ttf": "43dd5b7a3d277362d5e801e5353e3a01",
"assets/assets/fonts/Montserrat-Bold.ttf": "ade91f473255991f410f61857696434b",
"assets/assets/fonts/OpenSans-Bold.ttf": "1025a6e0fb0fa86f17f57cc82a6b9756",
"assets/assets/logomain.png": "65949b7a29c8735fa6e5d5d1adf7f832",
"assets/assets/twitter-logo.png": "48e530930be63a6b08352e7deb967b1c",
"assets/logomain.png": "65949b7a29c8735fa6e5d5d1adf7f832",
"assets/twitter-logo.png": "48e530930be63a6b08352e7deb967b1c"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      // Provide a 'reload' param to ensure the latest version is downloaded.
      return cache.addAll(CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');

      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }

      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#')) {
    key = '/';
  }
  // If the URL is not the RESOURCE list, skip the cache.
  if (!RESOURCES[key]) {
    return event.respondWith(fetch(event.request));
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache. Ensure the resources are not cached
        // by the browser for longer than the service worker expects.
        var modifiedRequest = new Request(event.request, {'cache': 'reload'});
        return response || fetch(modifiedRequest).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    return self.skipWaiting();
  }

  if (event.message === 'downloadOffline') {
    downloadOffline();
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey in Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
