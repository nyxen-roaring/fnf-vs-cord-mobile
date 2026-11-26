package options;

import backend.Localization;

class LanguageSettingsSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = 'Language:';
		rpcTitle = 'Language Settings Menu';

		addOption(new Option(
			'Language',
			'Choose the game language. Translated dialogue loads when a matching language file exists.',
			'language',
			'string',
			['English', 'Español']
		));

		super();
	}
}
