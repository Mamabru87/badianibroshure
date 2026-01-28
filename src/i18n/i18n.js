const DEFAULT_LANG = "it";
const STORAGE_KEY = "badianiLang";
const SUPPORTED = ["it", "en", "fr", "es"];

let dictionaries = { it: {}, en: {}, fr: {}, es: {} };
let currentLang = DEFAULT_LANG;
let ready = false;
const subscribers = new Set();

function normalizeLang(lang){
  if(!lang) return DEFAULT_LANG;
  const base = String(lang).toLowerCase().split("-")[0];
  return SUPPORTED.includes(base) ? base : DEFAULT_LANG;
}

function getStoredLang(){
  try{
    const saved = localStorage.getItem(STORAGE_KEY);
    return normalizeLang(saved);
  }catch{
    return DEFAULT_LANG;
  }
}

export function getLanguage(){
  return currentLang;
}

export function setLanguage(lang){
  currentLang = normalizeLang(lang);
  try{ localStorage.setItem(STORAGE_KEY, currentLang); }catch{}
  subscribers.forEach((fn) => fn(currentLang));
}

export function onLanguageChange(fn){
  subscribers.add(fn);
  return () => subscribers.delete(fn);
}

export function t(key, params){
  const dict = dictionaries[currentLang] || {};
  const fallback = dictionaries[DEFAULT_LANG] || {};
  let value = (dict && dict[key]) || (fallback && fallback[key]) || "";
  if(params && value){
    Object.keys(params).forEach((paramKey) => {
      value = value.replace(new RegExp(`{${paramKey}}`, "g"), params[paramKey]);
    });
  }
  return value;
}

function localeUrl(locale){
  return new URL(`./locales/${locale}.json`, import.meta.url).toString();
}

export async function initI18n(){
  if(ready) return;
  currentLang = getStoredLang();

  const locales = await Promise.all(
    SUPPORTED.map(async (locale) => {
      try{
        const response = await fetch(localeUrl(locale));
        if(!response.ok) throw new Error("fetch failed");
        const json = await response.json();
        return [locale, json];
      }catch{
        return [locale, {}];
      }
    })
  );

  dictionaries = locales.reduce((acc, [locale, json]) => {
    acc[locale] = json || {};
    return acc;
  }, {});

  ready = true;
  subscribers.forEach((fn) => fn(currentLang));
}
