package io.hedwig.dp.more.eventaggregator;

/**
 * 
 * KingJoffrey observes events from KingsHand.
 *
 */
public class KingJoffrey implements EventObserver {

	@Override
	public void onEvent(Event e) {
		System.out.println("Received event from the King's Hand: " + e.toString());
	}
}
