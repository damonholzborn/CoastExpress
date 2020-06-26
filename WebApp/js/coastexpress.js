var headerArea;
var menuButton;
var isLoaded = false;
var firstRun = true;

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

let currentSettings;
let currentMIDIPort;
const savedSettings = localStorage.savedSettings;

if (savedSettings) {
	firstRun = false;
	currentSettings = JSON.parse(savedSettings);
}
else {
	currentSettings = {
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

window.onload = function() {

	if (firstRun) {
		setTimeout(function() {
			menuButton.click();
		}, 1100);
	}

	// ********* Header Setup *********

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

	// ********* MIDI Port Menu *********

	const midiPortMenu = document.getElementById('midiPort');
	midiPortMenu.addEventListener('change', function() {
		currentSettings.midiPort = midiPortMenu.value;
		currentMIDIPort = Telegraphy.MIDI.getOutputByName(midiPortMenu.value);
		saveToLocalStorage();
		setAllValues();
	});

	// ********* Telegraphy *********

	Telegraphy.init({ midi: true }, function() {
		let portNames = [];
		Telegraphy.MIDI.outputs.forEach(output => {
			var option = document.createElement('option');
			option.textContent = output.name;
			option.value = output.name;
			midiPortMenu.add(option);
			portNames.push(output.name);
		});

		if (currentSettings.midiPort) {
			if (portNames.indexOf(currentSettings.midiPort) !== -1) {
				midiPortMenu.value = currentSettings.midiPort;
				currentMIDIPort = Telegraphy.MIDI.getOutputByName(midiPortMenu.value);
			}
			else {
				alert('The previously selected MIDI port -- ' + currentSettings.midiPort + ' --  is not available. Connect the MIDI interface and relaod the page or select another port from the menu.');
			}
		}

		// ********* Init Values *********

		isLoaded = true;
		setAllValues();

	});

	// ********* Button Groups *********

	const buttonGroups = document.getElementsByClassName("button_group");
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

	// ********* Nexus Options *********

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

	// ********* MIDI A & B Sliders *********

	const aBendRange = new Nexus.Slider('#aBendRange', sliderOptions);
	aBendRange.on('change', function(value) { sendSetting('a', 'bendRange', value) });
	const aBendRangeValue = new Nexus.Number('#aBendRangeValue')
	aBendRangeValue.link(aBendRange);

	const aAftertouch = new Nexus.Slider('#aAftertouch', sliderOptions);
	aAftertouch.on('change', function(value) { sendSetting('a', 'aftertouch', value) });
	const aAftertouchValue = new Nexus.Number('#aAftertouchValue');
	aAftertouchValue.link(aAftertouch);

	const aMinVelocity = new Nexus.Slider('#aMinVelocity', sliderOptions);
	aMinVelocity.min = 1;
	aMinVelocity.on('change', function(value) { sendSetting('a', 'minVelocity', value) });
	const aMinVelocityValue = new Nexus.Number('#aMinVelocityValue');
	aMinVelocityValue.link(aMinVelocity);

	const bBendRange = new Nexus.Slider('#bBendRange', sliderOptions);
	bBendRange.on('change', function(value) { sendSetting('b', 'bendRange', value) });
	const bBendRangeValue = new Nexus.Number('#bBendRangeValue');
	bBendRangeValue.link(bBendRange);

	const bAftertouch = new Nexus.Slider('#bAftertouch', sliderOptions);
	bAftertouch.on('change', function(value) { sendSetting('b', 'aftertouch', value) });
	const bAftertouchValue = new Nexus.Number('#bAftertouchValue');
	bAftertouchValue.link(bAftertouch);

	const bMinVelocity = new Nexus.Slider('#bMinVelocity', sliderOptions);
	bMinVelocity.min = 1;
	bMinVelocity.on('change', function(value) { sendSetting('b', 'minVelocity', value) });
	const bMinVelocityValue = new Nexus.Number('#bMinVelocityValue');
	bMinVelocityValue.link(bMinVelocity);

	// ********* Portamento Slider *********

	const portamento = new Nexus.Slider('#portamento', sliderOptions);
	portamento.on('change', function(value) { sendSetting('keyboard', 'portamento', value) });
	const portamentoValue = new Nexus.Number('#portamentoValue');
	portamentoValue.link(portamento);

	// ********* Tempo Div Slider *********

	const tempoDiv = new Nexus.Slider('#tempoDiv', sliderOptions);
	tempoDiv.min = 1;
	tempoDiv.on('change', function(value) { sendSetting('clock', 'tempoDiv', value) });
	const tempoDivValue = new Nexus.Number('#tempoDivValue');
	tempoDivValue.link(tempoDiv);

	// ***************************   Functions   ***************************

	function sendSetting(section, parameter, value) {
		if (isLoaded && currentMIDIPort) {
			let ccNumber = midiMap[section][parameter];
			let valueInt = parseInt(value);
			currentMIDIPort.sendControlChange(ccNumber, valueInt, 1, {'time': 0});
			currentSettings[section][parameter] = valueInt;
			saveToLocalStorage();
		}
	}

	function setButtonGroup(buttongroup, selected, section, parameter, value) {
		sendSetting(section, parameter, value);
		const buttons = buttongroup.getElementsByTagName('LI');
		for (let i = 0; i < buttons.length; i++) {
			buttons[i].classList.remove('selected');
		}
		selected.classList.add('selected');
	}

	function saveToLocalStorage() {
		localStorage.setItem('savedSettings', JSON.stringify(currentSettings));
	}

	function setAllValues() {
		setButtonGroup( document.getElementById('aMIDIChannel'), document.getElementById('aMIDIChannel' + (currentSettings.a.midiChannel + 1)), 'a', 'midiChannel', currentSettings.a.midiChannel);
		setButtonGroup( document.getElementById('aCVSource'), document.getElementById('aCVSource' + currentSettings.a.cvSource), 'a', 'cvSource', currentSettings.a.cvSource);
		setButtonGroup( document.getElementById('aGateSource'), document.getElementById('aGateSource' + currentSettings.a.gateSource), 'a', 'gateSource', currentSettings.a.gateSource);
		aBendRange.value = currentSettings.a.bendRange;
		aAftertouch.value = currentSettings.a.aftertouch;
		aMinVelocity.value = currentSettings.a.minVelocity;

		setButtonGroup( document.getElementById('bMIDIChannel'), document.getElementById('bMIDIChannel' + (currentSettings.b.midiChannel + 1)), 'b', 'midiChannel', currentSettings.b.midiChannel);
		setButtonGroup( document.getElementById('bCVSource'), document.getElementById('bCVSource' + currentSettings.b.cvSource), 'b', 'cvSource', currentSettings.b.cvSource);
		setButtonGroup( document.getElementById('bGateSource'), document.getElementById('bGateSource' + currentSettings.b.gateSource), 'b', 'gateSource', currentSettings.b.gateSource);
		bBendRange.value = currentSettings.b.bendRange;
		bAftertouch.value = currentSettings.b.aftertouch;
		bMinVelocity.value = currentSettings.b.minVelocity;

		setButtonGroup( document.getElementById('legato'), document.getElementById('legato' + currentSettings.keyboard.legato), 'keyboard', 'legato', currentSettings.keyboard.legato);
		portamento.value = currentSettings.keyboard.portamento;

		setButtonGroup( document.getElementById('midiClock'), document.getElementById('midiClock' + currentSettings.clock.midiClock), 'clock', 'midiClock', currentSettings.clock.midiClock);
		tempoDiv.value = currentSettings.clock.tempoDiv;

		setButtonGroup( document.getElementById('arpToggle'), document.getElementById('arpToggle' + currentSettings.arp.arpToggle), 'arp', 'arpToggle', currentSettings.arp.arpToggle);
		setButtonGroup( document.getElementById('arpMode'), document.getElementById('arpMode' + currentSettings.arp.arpMode), 'arp', 'arpMode', currentSettings.arp.arpMode);
	}
}