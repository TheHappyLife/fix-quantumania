'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "856cf3dda423be5dbea31080e91399e9",
"assets/assets/audios/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/fonts/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/fonts/impact.ttf": "8fc622c3a2e2d992ec059cca61e3dfc0",
"assets/assets/fonts/JosefinSans-Bold.ttf": "9b93e2dc1845186696aeb17d692e1652",
"assets/assets/fonts/JosefinSans-Medium.ttf": "87a8c8f80f8cbdcfc2b1d30b651ee9f8",
"assets/assets/fonts/JosefinSans-Regular.ttf": "d043c7832664506d64199a29bc1848df",
"assets/assets/fonts/JosefinSans-SemiBold.ttf": "dddc915e91657a933cdc46a566f4a256",
"assets/assets/fonts/Roboto-Bold.ttf": "b8e42971dec8d49207a8c8e2b919a6ac",
"assets/assets/fonts/Roboto-Medium.ttf": "68ea4734cf86bd544650aee05137d7bb",
"assets/assets/fonts/Roboto-Regular.ttf": "8a36205bd9b83e03af0591a004bc97f4",
"assets/assets/images/1686-scan-qr-code-outline.svg": "09f3740573767b12f9fe80998ad0421e",
"assets/assets/images/259-share-arrow-outline-down.svg": "cf72924f95b3f29f31a4921014e19517",
"assets/assets/images/304-coins-btc-outline.svg": "61c959e74611c400a72b0e4d5c144ffb",
"assets/assets/images/34rbv_6.png": "62c4d171ddab069e1a7e730f36909369",
"assets/assets/images/4386-connection-error.gif": "88489a3665c362838b39216bd4263d2a",
"assets/assets/images/5202-review-id.gif": "13e1742edee0f0ffac7d49b6be6bfac9",
"assets/assets/images/88860-success-animation.gif": "0874736f1accdb27d5fed2a70dcce722",
"assets/assets/images/964-omnichannel-outline.svg": "b3dc9b57c5e09bb090a86951d06144ca",
"assets/assets/images/9hsjc_2.png": "4c70bf7fa83fc134963c32fadc950876",
"assets/assets/images/account-user_icon_member.png": "ebefa7450ab2c8bf004ad6db9ccc2b8f",
"assets/assets/images/Account.png": "34bc3343b94d1fab5c2b893e52fa23dc",
"assets/assets/images/app_launcher_icon.png": "04c3bc6addb9fdf30f4b53ef4a9363d6",
"assets/assets/images/auth-google.svg": "3f97c2282183d456870d9035e76c64fd",
"assets/assets/images/Avatar.png": "690111303b5ac08d271eb7bcbf1b74db",
"assets/assets/images/Avt%255B1%255D.png": "059c40fc5d9e09d46d44f21ee565ff22",
"assets/assets/images/Avt.png": "66211b1659bedb3e3918a7be1269df4e",
"assets/assets/images/background-badge-star-user.jpg": "b1ad284172f4bd0dbf531a78b77edf6f",
"assets/assets/images/background-badge-user.jpg": "38a8b6706e2a9b3e8c738194171e090b",
"assets/assets/images/background-page.png": "6038dba45ee80790d592d8c982f1ad77",
"assets/assets/images/bank.svg": "8a80319a1ad6d433eac73cccaea9a77a",
"assets/assets/images/banner-best.png": "c09363940b7470637d3ce7f5a8c67003",
"assets/assets/images/banner-investment-pack-2.png": "1431d0023723a3cac60322745f8fef9e",
"assets/assets/images/base-checked.png": "83a551277d3afbbe029ba1a567e20d89",
"assets/assets/images/Base.png": "5f311a055ace61495212a9ed1a132bef",
"assets/assets/images/Blue.png": "f59af56b8997e12e32b8771ecefa3166",
"assets/assets/images/Button.svg": "6b6cb6db501f682fe251dfa8d4e8220b",
"assets/assets/images/Button_(1).svg": "89a0104fb471f94b14f081deeed6e7cc",
"assets/assets/images/Calendar.png": "4d84ceaeee87fb44489905274547311e",
"assets/assets/images/close.svg": "6e36ad2e865f9f55163729a7183dd858",
"assets/assets/images/Coinicon_3.png": "52a0df4fe57e75be18fcdf3fb3b9513d",
"assets/assets/images/coin_ic.png": "2505e19d7a1da33e86d280425bb355cf",
"assets/assets/images/Coin_icon.png": "3a4a6b035ec14f1e1daf8dadac9a8191",
"assets/assets/images/Coin_icon2.png": "f7631830ad818ed59f8d87a90e17b297",
"assets/assets/images/Coin_icon_(1).svg": "a8ee909bc4302bb6e1131a8861a559a2",
"assets/assets/images/Coin_icon_2.png": "d6c07ed1d992a2c399f87a7422be3bcc",
"assets/assets/images/Coin_icon_3.png": "f9d35c05a638431ee452190510ade5e0",
"assets/assets/images/coin_update.png": "9e60b80b6919bb1fbe8ccca8687bd128",
"assets/assets/images/Complete-2.png": "18667bc1fd6cd299ba0f9fdcd23c3cc8",
"assets/assets/images/cover-photo.jpeg": "868ef2ffd29579c797f173f53367782e",
"assets/assets/images/credit-card.svg": "2645b0fd031c7164f10cd5c0106af854",
"assets/assets/images/device-phone.png": "7e1b706219098139be317ed321da87c7",
"assets/assets/images/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/images/gift-box.png": "55f360fd0fcc920d470396f6497de058",
"assets/assets/images/hpoint-thumb.jpg": "ddbc303a9dfa781cc2cd99a15960a1f9",
"assets/assets/images/hunter-1s.png": "9e2332183ccb86891da87338795c8ded",
"assets/assets/images/Icon.svg": "3d2a1ba9fa8a4eca895bf9992c9d1302",
"assets/assets/images/Icon_(1).svg": "65ff0b6eef882758482b7d455b77fba4",
"assets/assets/images/Icon_(2).svg": "03fe88faa447a8005dd0a158ee94438f",
"assets/assets/images/Icon_(3).svg": "e0ee103e81c6f640a985b089e420d886",
"assets/assets/images/Icon_(4).svg": "99a18af1f6b691de4bd5190e579a9265",
"assets/assets/images/Icon_(5).svg": "d9f826551ea718ece6be120988c1b9bd",
"assets/assets/images/Icon_(6).svg": "44f107df713c93c80a4919281ae2b34c",
"assets/assets/images/Icon_(7).svg": "7eb0c14ee249749f16aaaadc067acdb4",
"assets/assets/images/id-card-upload.png": "3d12a380ac133400a147c1dcd90afb53",
"assets/assets/images/image-newbie-pack.png": "1e78e4ffab6ee8890ed951132293b2dd",
"assets/assets/images/image-qr-test.png": "009147cf435140d7297717b521d07a84",
"assets/assets/images/image-recommend.png": "46571938a55f4b6ae8f150968b3ae520",
"assets/assets/images/image-shield.png": "7ec123142d8434e8df3a9f154c399698",
"assets/assets/images/image-success.png": "c276fe3761b4c8ad1db20b2ef7afd596",
"assets/assets/images/image-topup-failed.png": "a911b2fdbce43ca72bdb3bbeabd7d3ab",
"assets/assets/images/image-topup-valid.png": "a1033c4539c5073656beec099c10c45c",
"assets/assets/images/indicator.png": "c716deefbb086b5e579e49827d2c5bbc",
"assets/assets/images/Info.png": "5be64c9c9f2713e74fce0a39f90ef23c",
"assets/assets/images/Line.png": "7456c13b6bb18a4e83c86efe948d1cab",
"assets/assets/images/logo-huntgem.png": "bcb40b59878760834b38c519e000aa10",
"assets/assets/images/logo-quantum.png": "2e1a190c643db4fc8cf0ba45f9027fc5",
"assets/assets/images/Logo.svg": "f28be3cac32270289447773fa0b30b79",
"assets/assets/images/logout-arrow-outline.png": "25d187a9ac0c562f9830ea3fd887b102",
"assets/assets/images/Logo_(1).svg": "e11e3849fe2c54f573c9623f07a8f4e8",
"assets/assets/images/master.png": "53474deb77f09fe0d8742ade28d1a8da",
"assets/assets/images/mcatd_1.png": "73710c329559e600f58380c1bac5791c",
"assets/assets/images/ml88i_4.png": "1783f719ff53245a416a1d4d9852a17b",
"assets/assets/images/Name_Investment=1,_Active=Yes,_Line=Yes.png": "842b7ca8faf7bc47c7200a6d77745b9f",
"assets/assets/images/No.png": "05124fd976bdd784c9d365c4a20a18fd",
"assets/assets/images/package_2-active..png": "3502dbab45ad7156d934a8256ed33d40",
"assets/assets/images/package_3-active..png": "a6b81eb6f1bf46bf63aecbb443d02ed1",
"assets/assets/images/package_4-active..png": "c6bc786fd99450151f3336e9ca746f3f",
"assets/assets/images/package_5-active..png": "f9f85b48bad5a79a0471d8fc4b6437b5",
"assets/assets/images/package_6-active..png": "cbaa7a466f41d102dcfad4a77dc3f0f0",
"assets/assets/images/packpage-1.png": "83f84be4fe0918222c114766bc322f9e",
"assets/assets/images/Packpage_Img.png": "fe23e045fa9ced3d7681b217fea484cc",
"assets/assets/images/point_ic.png": "e42cd0c2bb754815e3f1571fbc4c1082",
"assets/assets/images/qoc.svg": "872b01261763b2e93010febdd5419586",
"assets/assets/images/quantumania.png": "df2098252671d326bd3d2dbe82abcc3e",
"assets/assets/images/Quantumania.svg": "16b86245c4dae7db86c95c4a584e22d1",
"assets/assets/images/receipt.svg": "63c94104c1e8ed4cc22302a25952f90f",
"assets/assets/images/Rectangle.png": "847c7c9461cd20952e04382ebf3d9111",
"assets/assets/images/share-campaign.png": "657815e6a5d3ca6bf335a85cdfb0e462",
"assets/assets/images/star.png": "c976efbb9e7fb48bba2ffbeb0d4ee530",
"assets/assets/images/support-center.png": "ede7c044aaeefd8d53057a16779f5a7d",
"assets/assets/images/Teamwork.svg": "0bc131ac80a01a9cd42f1bb409040fb7",
"assets/assets/images/truck.svg": "159278112e509c9d9c3909470cbf24a8",
"assets/assets/images/T_ic.png": "f5b83592e42ffcccf0947d14e7648088",
"assets/assets/images/usdt.png": "efaad1ccac26a7ceea7671faeedaa852",
"assets/assets/images/usdt2.png": "aa0431a17051ff6d1e0da82cfe7f006a",
"assets/assets/images/User-Logged.png": "e8efd2e04c2b08a92dfb172fc25dfb24",
"assets/assets/images/user-not-logged.png": "3f00a0f54307963d3d42ac422da32eb5",
"assets/assets/images/warning.png": "39237eae1bedfaa9959dce14226d1ded",
"assets/assets/images/WarningCircle.png": "bd87470f2f8d9f084147c4473962ce6d",
"assets/assets/images/x5rbw_5.png": "dcec6d3e007917a0968921a67cf6e36a",
"assets/assets/lottie_animations/1103-confetti-outline-edited.json": "7facd761ebfd0f739c60eb7b44e78088",
"assets/assets/lottie_animations/193-bell-notification-outline-edited.json": "cf3ef86a45ef73ea24c1ed2020c2fde0",
"assets/assets/lottie_animations/194-refresh-outline-edited.json": "7b03b4dce5afcb64f20d1651813416c6",
"assets/assets/lottie_animations/2129-login-outline-edited.json": "f9e708e9ebf7231f19d00b1303aded76",
"assets/assets/lottie_animations/259-share-arrow-outline-edited.json": "656449646068df0a47faaaf2b5c9ad2b",
"assets/assets/lottie_animations/27-globe-outline-edited.json": "b4e58de3cf04d12d6957a079003cc197",
"assets/assets/lottie_animations/306-avatar-icon-calm-outline-edited.json": "f29c117913079481c31ffe0cb78e8e25",
"assets/assets/lottie_animations/314-three-avatars-icon-calm-outline-edited.json": "4e56a7fc2a88d222b14274c1ba9eabd2",
"assets/assets/lottie_animations/334-loader-5-edited_(1).json": "d89dec8c6b12c5e7e00149d1cfb8585b",
"assets/assets/lottie_animations/457-shield-security-outline-edited.json": "8c75dcef0fc4218f71f39b814b5132b0",
"assets/assets/lottie_animations/99280-beezhive-splash-loading-animation.json": "2d5f9eb3b8c20bfd74324c90c1b3d4e0",
"assets/assets/lottie_animations/cash-dispenser.json": "71110494464885c7a3645c43b394b3a2",
"assets/assets/lottie_animations/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/lottie_animations/loading-line.json": "07ece7e8315d5b247c34c98e076cf70f",
"assets/assets/lottie_animations/successful.json": "81e8174f18dfd06fad1a90ae8d2cdbc2",
"assets/assets/lottie_animations/support.json": "87a862645d9902cb07051537982f900d",
"assets/assets/lottie_animations/transaction-request-in-pending.json": "4caaf5e5df97b57d3e610ad9dc360184",
"assets/assets/pdfs/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/rive_animations/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/videos/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/FontManifest.json": "24dfe37bccff735c9309af14951beafd",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/NOTICES": "4da074ab31ba21e698787ed12f31243f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "d1722d5cf2c7855862f68edb85e31f88",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "613e4cc1af0eb5148b8ce409ad35446d",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "dd3c4233029270506ecc994d67785a37",
"Blue_(1).png": "9ae6780c4e4161f2396787527176ca3e",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"favicon.png": "2704101cb06ce66e2000356a312be25c",
"flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "08a04534fefd847a322199396b451d89",
"/": "08a04534fefd847a322199396b451d89",
"logo_app_quantum.png": "04c3bc6addb9fdf30f4b53ef4a9363d6",
"main.dart.js": "8505397dbceade6d3112984155cf2fa1",
"manifest.json": "b472ad3ead634e256fb39736989875d8",
"version.json": "980e1c2f76445882a86fd11f705593c6"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
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
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
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
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
