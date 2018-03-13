import I18n from 'react-native-i18n';
import ru from './ru.json';
import de from './de.json';
import nl from './nl.json';
import en from './en.json';
import cs from './cs.json';

I18n.fallbacks = true;
I18n.translations = { ru, de, nl, en, cs };

export function strings(name, params = {}) {
  return I18n.t(name, params);
};

export default I18n;