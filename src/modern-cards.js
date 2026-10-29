/*
 * Modern Cards template component helpers
 * akCards.toggle( el ) toggles the action that contains el: is-active, aria-pressed and, when the
 * action icon is an outlined icon (fa-*-o), its filled version. Returns the new state and triggers
 * "akcardtoggle" on the action. akTravelCard is kept as an alias for version 1 pages.
 * Spotlight design: the light follows the pointer through the --ak-x / --ak-y custom properties
 * (corrected for the CSS zoom of the Size attribute).
 * Flip designs: hover flips with a mouse and keyboard focus shows the back (CSS); on touch screens
 * a tap toggles .is-flipped. Taps on the card's own buttons and links are left alone.
 * akCards.flip( el [, state] ) flips a card from code.
 */
( function() {
    var akCards = window.akCards || {
        toggle: function( el ) {
            var btn = $( el ).closest( ".ak-Card-btn" ),
                icon = btn.find( ".ak-Card-btnIcon" ),
                on = !btn.hasClass( "is-active" ),
                outlined = icon.data( "akOutlined" );

            if ( outlined === undefined ) {
                outlined = ( ( icon.attr( "class" ) || "" ).match( /\bfa-[\w-]+-o\b/ ) || [ "" ] )[ 0 ];
                icon.data( "akOutlined", outlined );
            }
            btn.toggleClass( "is-active", on ).attr( "aria-pressed", on );
            if ( outlined ) {
                icon.toggleClass( outlined, !on ).toggleClass( outlined.replace( /-o$/, "" ), on );
            }
            btn.trigger( "akcardtoggle", { active: on } );
            return on;
        }
    };

    window.akCards = akCards;
    window.akTravelCard = window.akTravelCard || akCards;

    if ( !akCards.spotlightBound ) {
        akCards.spotlightBound = true;
        document.addEventListener( "pointermove", function( event ) {
            var card = event.target.closest && event.target.closest( ".ak-Card--spotlight" ),
                rect, zoom;

            if ( card ) {
                rect = card.getBoundingClientRect();
                // sized cards use CSS zoom: pointer and rect are in screen px, the property is in card px
                zoom = card.currentCSSZoom || 1;
                card.style.setProperty( "--ak-x", ( event.clientX - rect.left ) / zoom + "px" );
                card.style.setProperty( "--ak-y", ( event.clientY - rect.top ) / zoom + "px" );
            }
        }, { passive: true } );
    }

    if ( !akCards.flipBound ) {
        akCards.flipBound = true;
        akCards.flip = function( el, state ) {
            var flip = $( el ).closest( ".ak-Flip" );
            return flip.toggleClass( "is-flipped", state ).hasClass( "is-flipped" );
        };
        $( document ).on( "click", ".ak-Flip", function( event ) {
            if ( $( event.target ).closest( "a, button, .ak-Card-btn" ).length ) {
                return;
            }
            if ( window.matchMedia( "(hover: none)" ).matches ) {
                akCards.flip( this );
            }
        } );
    }
} )();
