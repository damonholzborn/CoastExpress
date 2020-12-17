let headerArea;
let menuButton;
let isLoaded = false;

const midiMap = {
	'a': {
		 'midiChannel': 102,
		 'cvSource': 104,
		 'gateSource': 106,
		 'bendRange': 108,
		 'aftertouch': 110,
		 'minVelocity': 112,
	},
	'b': {
		 'midiChannel': 103,
		 'cvSource': 105,
		 'gateSource': 107,
		 'bendRange': 109,
		 'aftertouch': 111,
		 'minVelocity': 113,
	},
	'keyboard': {
		 'legato': 118,
		 'portamento': 5,
	},
	'clock': {
		'midiClock': 114,
		'tempoDiv': 116,
  },
  'arp': {
		'arpToggle': 117,
		'arpMode': 119,
	},
}

let currentMIDIPort;
let workingPatch = {};
let savedWorkingPatchName;

const white = '#ECEDEC';
const flash = '#5E9F45';
const flashLength = 300;

window.onload = function() {

	// ***************************   Header Setup   ***************************

	headerArea = document.getElementById('header');
	menuButton = document.getElementById('menu_button');
	menuButton.addEventListener('touch', openMenu);
	menuButton.addEventListener('click', openMenu);
	function openMenu(event) {
		event.preventDefault()
		if (!menuButton.classList.contains('open')) {
			menuButton.classList.add('open');
			headerArea.style.height = (document.getElementById('welcome_message').clientHeight + 48) + 'px';
		}
		else {
			menuButton.classList.remove('open');
			headerArea.style.height = 'var(--headerheight)';
		}
	}

	// ***************************   Get Elements   ***************************

	const patchNameField = document.getElementById('patch_name');
	const patchNotesField = document.getElementById('patch_notes');
	const midiPortMenu = document.getElementById('midiPort');
	const buttonGroups = document.getElementsByClassName("button_group");
	const shareButton = document.getElementById('get_share_link');

	// ***************************   Widgets Setup   ***************************

	Nexus.colors.accent = "#ECEDEC";
	Nexus.colors.fill = "#1d1d1d";
	Nexus.colors.dark = "#ECEDEC";
	const sliderOptions = {
		'size': [320, 30],
		'mode': 'absolute',
		'min': 0,
		'max': 127,
		'step': 1,
		'value': 0
	}

	// ********* Patch Info *********

	patchNameField.addEventListener('change', function() {
		var value = patchNameField.value;

		if (value === 'New Patch') {
			var newPatchName = '';
			var foundDuplicate = false;
			var message = 'Enter a name for the new patch';

			while (newPatchName === '' || foundDuplicate) {
				newPatchName = prompt(message);
				if (newPatchName === '') {
					message = 'Patch name cannot be blank. Enter a name for the new patch or press Cancel to abort.';
				}
				else {
					foundDuplicate = Object.keys(localStorage).indexOf(newPatchName) !== -1;
					message = 'There is already a patch named ' + newPatchName + '. Enter a new name for the new patch or press Cancel to abort.';
				}
			}
			if (newPatchName === null) {
				patchNameField.value = workingPatch.patchName;
			}
			else {
				makeNewPatch(newPatchName);
			}
		}
		else if (value === 'Save As...') {
			var newPatchName = '';
			var defaultName = workingPatch.patchName + ' copy';
			var foundDuplicate = false;
			var message = 'Enter a name for the patch copy';

			while (newPatchName === '' || foundDuplicate) {
				newPatchName = prompt(message, defaultName);
				if (newPatchName === '') {
					message = 'Patch name cannot be blank. Enter a name for the patch copy or press Cancel to abort.';
				}
				else {
					foundDuplicate = Object.keys(localStorage).indexOf(newPatchName) !== -1;
					message = 'There is already a patch named ' + newPatchName + '. Enter a new name for the patch copy or press Cancel to abort.';
					defaultName = newPatchName;
				}
			}
			if (newPatchName === null) {
				patchNameField.value = workingPatch.patchName;
			}
			else {
				makeNewPatch(newPatchName, true);
			}
		}
		else if (value === 'Rename') {
			var newPatchName = '';
			var defaultName = workingPatch.patchName;
			var foundDuplicate = false;
			var message = 'Enter a new name for the patch.';

			while (newPatchName === '' || foundDuplicate) {
				newPatchName = prompt(message, defaultName);
				if (newPatchName === '') {
					message = 'Patch name cannot be blank. Enter a new name for the patch or press Cancel to abort.';
				}
				else {
					foundDuplicate = Object.keys(localStorage).indexOf(newPatchName) !== -1;
					message = 'There is already a patch named ' + newPatchName + '. Enter a new name for the patch or press Cancel to abort.';
					defaultName = newPatchName;
				}
			}
			if (newPatchName === null) {
				console.log('doh');
				patchNameField.value = workingPatch.patchName;
			}
			else {
				localStorage.removeItem(workingPatch.patchName);
				workingPatch.patchName = newPatchName;
				localStorage.setItem('workingPatchName', newPatchName);
				savedWorkingPatchName = newPatchName;
				savePatch();
				location.reload();
			}
		}
		else if (value === 'Delete') {
			var confirmation = confirm('Press OK to delete ' + workingPatch.patchName + '. THIS CANNOT BE UNDONE!');
			if (confirmation == true) {
				localStorage.removeItem(workingPatch.patchName);
				var allLocalStorage = Object.keys(localStorage);
				var foundAPatch = false;
				for (var i = 0; i < allLocalStorage.length; i++) {
					var name = allLocalStorage[i];
					if (name !== 'workingAuthor' && name !== 'workingPatchName') {
						localStorage.setItem('workingPatchName', name);
						foundAPatch = true;
						break;
					}
				}
				if (!foundAPatch) {
					savedWorkingPatchName = 'Untitled 1'
					makeNewPatch(savedWorkingPatchName);
				}
				location.reload();
			}
			else {
				patchNameField.value = workingPatch.patchName;
			}
		}
		else if (value === '---------') {

		}
		else {
			localStorage.setItem('workingPatchName', value);
			location.reload();
		}
	});

	patchNotesField.addEventListener('keyup', function() {
		workingPatch.patchNotes = patchNotesField.value;
		savePatch();
	});

	// ********* Share *********

	shareButton.addEventListener('touch', function() { sharePatch() });
	shareButton.addEventListener('click', function() { sharePatch() });

	// ********* MIDI Port Menu *********

	midiPortMenu.addEventListener('change', function() {
		workingPatch.midiPort = midiPortMenu.value;
		currentMIDIPort = Telegraphy.MIDI.getOutputByName(midiPortMenu.value);
		savePatch();
		setAllValues();
	});

	// ********* MIDI A & B Sliders *********

	const aBendRange = new Nexus.Slider('#aBendRange', sliderOptions);
	aBendRange.on('change', function(value) { setSlider(aBendRange, 'a', 'bendRange', value); });
	const aBendRangeValue = new Nexus.Number('#aBendRangeValue')
	aBendRangeValue.link(aBendRange);

	const aAftertouch = new Nexus.Slider('#aAftertouch', sliderOptions);
	aAftertouch.on('change', function(value) { setSlider(aAftertouch, 'a', 'aftertouch', value) });
	const aAftertouchValue = new Nexus.Number('#aAftertouchValue');
	aAftertouchValue.link(aAftertouch);

	const aMinVelocity = new Nexus.Slider('#aMinVelocity', sliderOptions);
	aMinVelocity.min = 1;
	aMinVelocity.on('change', function(value) { setSlider(aMinVelocity, 'a', 'minVelocity', value) });
	const aMinVelocityValue = new Nexus.Number('#aMinVelocityValue');
	aMinVelocityValue.link(aMinVelocity);

	const bBendRange = new Nexus.Slider('#bBendRange', sliderOptions);
	bBendRange.on('change', function(value) { setSlider(bBendRange, 'b', 'bendRange', value) });
	const bBendRangeValue = new Nexus.Number('#bBendRangeValue');
	bBendRangeValue.link(bBendRange);

	const bAftertouch = new Nexus.Slider('#bAftertouch', sliderOptions);
	bAftertouch.on('change', function(value) { setSlider(bAftertouch, 'b', 'aftertouch', value) });
	const bAftertouchValue = new Nexus.Number('#bAftertouchValue');
	bAftertouchValue.link(bAftertouch);

	const bMinVelocity = new Nexus.Slider('#bMinVelocity', sliderOptions);
	bMinVelocity.min = 1;
	bMinVelocity.on('change', function(value) { setSlider(bMinVelocity, 'b', 'minVelocity', value) });
	const bMinVelocityValue = new Nexus.Number('#bMinVelocityValue');
	bMinVelocityValue.link(bMinVelocity);


	// ********* Portamento Slider *********

	const portamento = new Nexus.Slider('#portamento', sliderOptions);
	portamento.on('change', function(value) { setSlider(portamento, 'keyboard', 'portamento', value) });
	const portamentoValue = new Nexus.Number('#portamentoValue');
	portamentoValue.link(portamento);

	// ********* Tempo Div Slider *********

	const tempoDiv = new Nexus.Slider('#tempoDiv', sliderOptions);
	tempoDiv.min = 1;
	tempoDiv.on('change', function(value) { setSlider(tempoDiv, 'clock', 'tempoDiv', value) });
	const tempoDivValue = new Nexus.Number('#tempoDivValue');
	tempoDivValue.link(tempoDiv);

	// ********* Button Groups *********

	for (let i = 0; i < buttonGroups.length; i++) {
		const buttonGroup = buttonGroups[i];
		const section = buttonGroup.dataset.section;
		const parameter = buttonGroup.dataset.parameter;

		const buttons = buttonGroup.getElementsByTagName('LI');
		for (let j = 0; j < buttons.length; j++) {
			const value = buttons[j].dataset.value;
			buttons[j].addEventListener('click', function() {
				setButtonGroup(buttonGroup, buttons[j], section, parameter, value)
			});
		}
	}

	// ********* Telegraphy *********

	Telegraphy.init({ 'midi': true }, function() {

		// ***************************   First Run or Load Patch   ***************************

		let sharedPatchCode = window.location.search.replace('?patch=', '');
		if (sharedPatchCode.length > 100) {
			savedWorkingPatchName = loadSharedPatch(sharedPatchCode);
		}

		if (!savedWorkingPatchName)  {
			savedWorkingPatchName = localStorage['workingPatchName'];
		}

		if (!savedWorkingPatchName && localStorage['savedSettings']) {
			console.log('yo');
			let legacySettings = JSON.parse(localStorage['savedSettings']);
			legacySettings.patchName = 'Untitled 1';
			localStorage.setItem('Untitled 1', JSON.stringify(legacySettings));
			localStorage.setItem('workingPatchName', 'Untitled 1');
			savedWorkingPatchName = 'Untitled 1';

			localStorage.removeItem('savedSettings');
		}

		if (savedWorkingPatchName) {
			workingPatch = JSON.parse(localStorage[savedWorkingPatchName]);

			let allLocalStorage = Object.keys(localStorage);
			allLocalStorage.sort();
			for (let i = 0; i < allLocalStorage.length; i++) {
				let name = allLocalStorage[i];
				if (name !== 'workingPatchName') {
					addPatchNameToSelect(name, false);
				}
			}

			loadSavedPatch();
		}
		else {
			savedWorkingPatchName = 'Untitled 1'
			makeNewPatch(savedWorkingPatchName);
			setTimeout(function() {
				menuButton.click();
			}, 1100);

			setTimeout(function() {
				menuButton.click();
			}, 1100);
		}

		let portNames = [];
		Telegraphy.MIDI.outputs.forEach(output => {
			let option = document.createElement('option');
			option.textContent = output.name;
			option.value = output.name;
			midiPortMenu.add(option);
			portNames.push(output.name);
		});

		if (workingPatch.midiPort) {
			if (portNames.indexOf(workingPatch.midiPort) !== -1) {
				midiPortMenu.value = workingPatch.midiPort;
				currentMIDIPort = Telegraphy.MIDI.getOutputByName(midiPortMenu.value);
			}
			else {
				alert('The previously selected MIDI port -- ' + workingPatch.midiPort + ' --  is not available. Connect the MIDI interface and relaod the page or select another port from the menu.');
			}
		}



		// ********* Init Values *********

		isLoaded = true;
		setAllValues();
	});

	// ***************************   Functions   ***************************

	function loadSavedPatch() {
		workingPatch = JSON.parse(localStorage[savedWorkingPatchName]);
		patchNameField.value = workingPatch.patchName;
	}

	function makeNewPatch(name, shouldcopy) {
		if (!shouldcopy) {
			workingPatch = {
				'midiPort': undefined,
				'a': {
					'midiChannel': 0,
					'cvSource': 0,
					'gateSource': 0,
					'bendRange': 14,
					'aftertouch': 0,
					'minVelocity': 1,
				},
				'b': {
					'midiChannel': 0,
					'cvSource': 0,
					'gateSource': 0,
					'bendRange': 14,
					'aftertouch': 0,
					'minVelocity': 1,
				},
				'keyboard': {
					'legato': 1,
					'portamento': 0,
				},
				'clock': {
					'midiClock': 0,
					'tempoDiv': 1,
			},
			'arp': {
					'arpToggle': 0,
					'arpMode': 0,
				},
			}
		}
		workingPatch.patchName = name;

		localStorage.setItem('workingPatchName', name);
		localStorage.setItem(workingPatch.patchName, JSON.stringify(workingPatch));

		addPatchNameToSelect('Untitled 1', true);

		if (name !== 'Untitled 1') {
			location.reload();
		}
	}

	function addPatchNameToSelect(name, selected) {
		var option = document.createElement('option');
		option.textContent = name;
		option.value = name;
		if (selected) {
			option.selected = true;
		}
		patchNameField.add(option);
	}

	function sendSetting(section, parameter, value) {
		if (isLoaded) {
			let valueInt = parseInt(value);
			workingPatch[section][parameter] = valueInt;
			if (currentMIDIPort) {
				let ccNumber = midiMap[section][parameter];
				currentMIDIPort.sendControlChange(ccNumber, valueInt, 1, {'time': 0});
			}
			savePatch();
		}
	}

	function setSlider(slider, group, parameter, value) {
		sendSetting(group, parameter, value);
		if (currentMIDIPort) {
			slider.colorize('accent', flash);
			setTimeout(() => {
				slider.colorize('accent', white);
			}, flashLength);
		}
	}

	function setButtonGroup(buttongroup, selected, section, parameter, value) {
		sendSetting(section, parameter, value);
		const buttons = buttongroup.getElementsByTagName('LI');
		for (let i = 0; i < buttons.length; i++) {
			buttons[i].classList.remove('selected');
		}
		if (currentMIDIPort) {
			selected.classList.add('flash');
		}
		setTimeout(() => {
			selected.classList.remove('flash');
			selected.classList.add('selected');
		}, flashLength);
	}

	function savePatch() {
		localStorage.setItem(savedWorkingPatchName, JSON.stringify(workingPatch));
	}

	function setAllValues() {
		if ( workingPatch.patchNotes) {
			patchNotesField.value = workingPatch.patchNotes;
		}

		setButtonGroup( document.getElementById('aMIDIChannel'), document.getElementById('aMIDIChannel' + (workingPatch.a.midiChannel + 1)), 'a', 'midiChannel', workingPatch.a.midiChannel);
		setButtonGroup( document.getElementById('aCVSource'), document.getElementById('aCVSource' + workingPatch.a.cvSource), 'a', 'cvSource', workingPatch.a.cvSource);
		setButtonGroup( document.getElementById('aGateSource'), document.getElementById('aGateSource' + workingPatch.a.gateSource), 'a', 'gateSource', workingPatch.a.gateSource);
		aBendRange.value = workingPatch.a.bendRange;
		aAftertouch.value = workingPatch.a.aftertouch;
		aMinVelocity.value = workingPatch.a.minVelocity;

		setButtonGroup( document.getElementById('bMIDIChannel'), document.getElementById('bMIDIChannel' + (workingPatch.b.midiChannel + 1)), 'b', 'midiChannel', workingPatch.b.midiChannel);
		setButtonGroup( document.getElementById('bCVSource'), document.getElementById('bCVSource' + workingPatch.b.cvSource), 'b', 'cvSource', workingPatch.b.cvSource);
		setButtonGroup( document.getElementById('bGateSource'), document.getElementById('bGateSource' + workingPatch.b.gateSource), 'b', 'gateSource', workingPatch.b.gateSource);
		bBendRange.value = workingPatch.b.bendRange;
		bAftertouch.value = workingPatch.b.aftertouch;
		bMinVelocity.value = workingPatch.b.minVelocity;

		setButtonGroup( document.getElementById('legato'), document.getElementById('legato' + workingPatch.keyboard.legato), 'keyboard', 'legato', workingPatch.keyboard.legato);
		portamento.value = workingPatch.keyboard.portamento;

		setButtonGroup( document.getElementById('midiClock'), document.getElementById('midiClock' + workingPatch.clock.midiClock), 'clock', 'midiClock', workingPatch.clock.midiClock);
		tempoDiv.value = workingPatch.clock.tempoDiv;

		setButtonGroup( document.getElementById('arpToggle'), document.getElementById('arpToggle' + workingPatch.arp.arpToggle), 'arp', 'arpToggle', workingPatch.arp.arpToggle);
		setButtonGroup( document.getElementById('arpMode'), document.getElementById('arpMode' + workingPatch.arp.arpMode), 'arp', 'arpMode', workingPatch.arp.arpMode);
	}

	// ********* Patch Sharing *********

	function sharePatch() {
		let patchString =  JSON.stringify(workingPatch);
		patchString = patchString.replace('a', '/a');
		patchString = patchString.replace('b', '/b')
		patchString = patchString.replace('midiChannel', '/c');
		patchString = patchString.replace('cvSource', '/d');
		patchString = patchString.replace('gateSource', '/e');
		patchString = patchString.replace('bendRange', '/f');
		patchString = patchString.replace('aftertouch', '/g');
		patchString = patchString.replace('minVelocity', '/d');
		patchString = patchString.replace('midiChannel', '/e');
		patchString = patchString.replace('cvSource', '/f');
		patchString = patchString.replace('gateSource', '/g');
		patchString = patchString.replace('bendRange', '/h');
		patchString = patchString.replace('aftertouch', '/i');
		patchString = patchString.replace('minVelocity', '/j');
		patchString = patchString.replace('keyboard', '/k');
		patchString = patchString.replace('legato', '/l');
		patchString = patchString.replace('portamento', '/m');
		patchString = patchString.replace('clock', '/n');
		patchString = patchString.replace('midiClock', '/o');
		patchString = patchString.replace('tempoDiv', '/p');
		patchString = patchString.replace('arp', '/q');
		patchString = patchString.replace('arpToggle', '/r');
		patchString = patchString.replace('arpMode', '/s');
		patchString = patchString.replace('patchName', '/t');
		patchString = patchString.replace('patchNotes', '/u');
		var patchCompressed = LZString.compressToEncodedURIComponent(patchString);
		console.log(patchCompressed);
		var copyPatchURL = prompt('Your patch is encoded in the URL below. To share your patch, copy the link (make sure to get the whole thing). You can then paste the URL in an email to send to a friend, share at the Exquisite Coast thread on llllllll.co, or post on social media.', window.location.href + '?patch=' + patchCompressed);
	}

	function loadSharedPatch(sharedpatchcode) {
		let sharedPatchUncompressed = LZString.decompressFromEncodedURIComponent(sharedpatchcode);

		if (!sharedPatchUncompressed) {
			alert('The patch appears to be invalid. Please check the URL and try again');
			return undefined
		}

		sharedPatchUncompressed = sharedPatchUncompressed.replace('/a', 'a');
		sharedPatchUncompressed = sharedPatchUncompressed.replace('/b', 'b');
		sharedPatchUncompressed = sharedPatchUncompressed.replace('/c', 'midiChannel');
		sharedPatchUncompressed = sharedPatchUncompressed.replace('/d', 'cvSource');
		sharedPatchUncompressed = sharedPatchUncompressed.replace('/e', 'gateSource');
		sharedPatchUncompressed = sharedPatchUncompressed.replace('/f', 'bendRange');
		sharedPatchUncompressed = sharedPatchUncompressed.replace('/g', 'aftertouch');
		sharedPatchUncompressed = sharedPatchUncompressed.replace('/d', 'minVelocity');
		sharedPatchUncompressed = sharedPatchUncompressed.replace('/e', 'midiChannel');
		sharedPatchUncompressed = sharedPatchUncompressed.replace('/f', 'cvSource');
		sharedPatchUncompressed = sharedPatchUncompressed.replace('/g', 'gateSource');
		sharedPatchUncompressed = sharedPatchUncompressed.replace('/h', 'bendRange');
		sharedPatchUncompressed = sharedPatchUncompressed.replace('/i', 'aftertouch');
		sharedPatchUncompressed = sharedPatchUncompressed.replace('/j', 'minVelocity');
		sharedPatchUncompressed = sharedPatchUncompressed.replace('/k', 'keyboard');
		sharedPatchUncompressed = sharedPatchUncompressed.replace('/l', 'legato');
		sharedPatchUncompressed = sharedPatchUncompressed.replace('/m', 'portamento');
		sharedPatchUncompressed = sharedPatchUncompressed.replace('/n', 'clock');
		sharedPatchUncompressed = sharedPatchUncompressed.replace('/o', 'midiClock');
		sharedPatchUncompressed = sharedPatchUncompressed.replace('/p', 'tempoDiv');
		sharedPatchUncompressed = sharedPatchUncompressed.replace('/q', 'arp');
		sharedPatchUncompressed = sharedPatchUncompressed.replace('/r', 'arpToggle');
		sharedPatchUncompressed = sharedPatchUncompressed.replace('/s', 'arpMode');
		sharedPatchUncompressed = sharedPatchUncompressed.replace('/t', 'patchName');
		sharedPatchUncompressed = sharedPatchUncompressed.replace('/u', 'patchNotes');

		let sharedPatchUncompressedObject;
		try {
			sharedPatchUncompressedObject = JSON.parse(sharedPatchUncompressed);
		} catch (error) {
			alert('The patch appears to be invalid. Please check the URL and try again');
			return undefined
		}
		console.log(sharedPatchUncompressedObject);
		var savedWorkingPatchName = sharedPatchUncompressedObject.patchName;
		var cancelLoad = false;
		while (Object.keys(localStorage).indexOf(savedWorkingPatchName) !== -1 && !cancelLoad) {
			var newPatchName = prompt('You already have a patch named ' + savedWorkingPatchName + '. Please enter a new name for the shared patch.', savedWorkingPatchName);
			if (newPatchName === null) {
				return undefined
			}
			else if (newPatchName !== '') {
				savedWorkingPatchName = newPatchName;
			}
		}

		sharedPatchUncompressedObject.patchName = savedWorkingPatchName;
		localStorage.setItem('workingPatchName', savedWorkingPatchName);
		localStorage.setItem(savedWorkingPatchName, JSON.stringify(sharedPatchUncompressedObject));

		history.pushState(sharedpatchcode, '', window.location.pathname);
		return savedWorkingPatchName
	}

}