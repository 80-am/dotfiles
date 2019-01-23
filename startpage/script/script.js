const CONFIG = {
  commands: [
    [null, 'google', '*', 'https://encrypted.google.com', '/search?q={}', '#2F343F'],
  ],
  // give suggestions as you type
  suggestions: true,
  // max amount of suggestions that will ever be displayed
  suggestionsLimit: 5,
  // the order and limit for each suggestion influencer
  // "Default" suggestions come from CONFIG.defaultSuggestions
  // "DuckDuckGo" suggestions come from the duck duck go search api
  // "History" suggestions come from your previously entered queries
  influencers: [
    { name: 'Default', limit: 5 },
    { name: 'History', limit: 2 },
    { name: 'DuckDuckGo', limit: 5 },
  ],
  // default search suggestions for the specified queries
  defaultSuggestions: {
    'r': ['r/r/unixporn', 'r/r/programming', 'r/r/webdev', 'r/r/technology', 'r/r/gaming'],

  },
  // instantly redirect when a key is matched
  // put a space before any other queries to prevent unwanted redirects
  instantRedirect: false,
  // open queries in a new tab
  newTab: false,
  // dynamic background colors when command domains are matched
  colors: true,
  // the delimiter between the key and your search query
  // e.g. to search GitHub for potatoes you'd type "g:potatoes"
  searchDelimiter: ':',
  // the delimiter between the key and a path
  // e.g. type "r/r/unixporn" to go to "reddit.com/r/unixporn"
  pathDelimiter: '/',
  // the delimiter between the hours and minutes in the clock
  clockDelimiter: '&nbsp;',
  // note: you can pass in your search query via the q query param
  // e.g. going to file:///path/to/tilde/index.html?q=hamsters is equivalent
  // to typing "hamsters" and pressing enter
};
