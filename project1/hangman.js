//set up the variables*********************************//
var makeInputArr;
var buttonOne = $('#buttonOne');
var buttonTwo = $('#buttonTwo');
var startGame = $('startGame');
var $letterInput = $('letterInput');
var p = $('#wordInputArr');
var $wordInput = $(wordInput);
var $wordInputTwo = $(wordInputTwo);
var secondInputs = document.getElementsByClassName('secondInputs');

var wordArray = [];
var wordInputTwoArray = [];

var form = document.getElementById('wordInput');
var health = document.getElementById("health");
var livesCounter = document.getElementById('livesCounter');
var form2 = document.getElementById('wordInputTwo');

var lives = 5;
var x;
//************************************************//

//************ MUSIC *********************************//
ffmusic.volume = 0.2;
var goodSound = function playIt() {
    document.getElementById("good-sound").play();
};
var pageMusic = function playIt() {
    document.getElementById("ffmusic").play();
};
var badSound = function playIt() {
    document.getElementById("horn").play();
};
var victorySound = function playIt() {
    document.getElementById("victory").play();
};
var boo = function playIt() {
    document.getElementById("boo").play();
};
//************************************************//
// $("").on('keyup', function (e) {
//     if (e.keyCode == 13) {
//       $('#wordInput').preventDefault();
//
//     }
// });
//click to start game after user inputs word
buttonOne.click(function() {
    if (startGame) {
        pageMusic();
        console.log('it works');
        //**** set a variable to the wordInput *********//
        userWord = $wordInput.val();
        makeInputArr();
        spanValues();
        form.replaceWith('');
        hideAnswer();
        document.getElementById('wordInputTwo').focus();
}
});
//************************************************//
//******* Player 2 using clicks to enter guesses **//
buttonTwo.click(function() {
    document.getElementById('wordInputTwo').focus();
    letterGuess = $wordInputTwo.val();
    var guess = false;
    for (i = 0; i < wordArray.length; i++) {
        var currentLetter = wordArray[i];

        //****** if Correct guess **********************//
        if (letterGuess === currentLetter) {
            $('span').eq(i).show();
            guess = true;
            console.log('you guessed right');
            $('#wordInputTwo').val('');
            document.getElementById('wordInputTwo').focus();
            wordInputTwoArray.push(currentLetter);

            //**** plays sound when getting a right guess ***//
            goodSound();
            //************************************************//

            //******* comparing users correct letters to the original word to declare winner  **********//
            if (wordArray.length === wordInputTwoArray.length) {
                console.log("You just humiliated Player 1's intelligence");
                console.log('winner winner');
                victorySound();
                ffmusic.pause();
                ffmusic.currentTime = 0;
                alert('You da best! Player 1 played themself')
            }

        }
    }
    //************************************************//

    //********** if user guesses wrong letter ************//
    if (guess === false) {
        lives--;
        $('#livesCounter').html(lives);
        console.log('you guessed wrong');
        $('#wordInputTwo').val('');
        document.getElementById('wordInputTwo').focus();
        health.value = lives;
        badSound();

    }
    //************************************************//

    //********** Player 2 runs out of lives ************//
    if (lives === 0) {
        console.log('Player 1 has made you into a loser');
        $('#wordInputTwo').val('');
        document.getElementById('wordInputTwo').focus();
        ffmusic.pause();
        ffmusic.currentTime = 0;
        boo();
        return alert('Player 1 has given you an L. Enjoy');


    }
});
//************************************************//


//** function to take userWord and split into array ****//
function makeInputArr() {

    wordArray = userWord.split('');
    console.log(wordArray);
    p.val(wordArray).hide();
}
//************************************************//

//** take array values and create spans for each value **//
function spanValues() {
    for (i = 0; i < wordArray.length; i++) {
        $('body').append($(`<div class='letterHolder'><span> ${wordArray[i]} </span></div>`));
        buttonOne.hide();
    }
}
//************************************************//

//*** replace wordArray values with underlines *********//
function hideAnswer() {
    $('span').hide();
    $('.letterHolder').css('bottom-border', '5px solid');
}
//************************************************//
//use enter instead of mouse click
//
//    document.getElementById('buttonTwo').onclick = doClick;
//     document.getElementById('buttonOne').onclick = doClick;
//    document.getElementById('wordInputTwo').onkeypress = function(e) {
//        doClick('submit', e);
//    };
//    document.getElementById('wordInput').onkeypress = function(e) {
//        doClick('submit', e);
//    };
// };
//
// function doClick(wordInput,e)
// {
//   //the purpose of this function is to allow the enter key to
//   //point to the correct button to click.
//   var ev = e || window.event;
//   var key = ev.keyCode;
//
//   if (key == 13)
//   {
//      //Get the button the user wants to have clicked
//      var btn = document.getElementById(buttonOne);
//      if (btn !== null)
//      {
//         //If we find the button click it
//         btn.click();
//         ev.preventDefault();
//      }
//   }
// }
