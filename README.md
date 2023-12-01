# VORP-Salary-Valuation
This visualization uses the VORP metric to evaluate underpaid or overpaid players.

Value over Replacement Player (VORP) converts the BPM rate into an estimate of each player's overall contribution to the team, measured vs. what a theoretical "replacement player" would provide, where the "replacement player" is defined as a player on minimum salary or not a normal member of a team's rotation. A long and comprehensive discussion on defining this level for the NBA was had at Tom Tango's blog, and is worth a read. (Tom Tango is a baseball sabermetrics expert, and one of the originators of the replacement level framework and the Wins Above Replacement methodology common now in baseball.)

The conclusion was to establish -2.0 as replacement level for the NBA, measured in terms of points above or below average per 100 possessions.

Now, players will have BPMs below that -2.0 replacement level. In basketball, there can be several reasons why:

The player is actually below replacement level skill. (Sometimes this is because they are young and developing).
The player is not actually that bad, but is having bad shooting luck.
The player is playing in a bad situation/context for them, where their good qualities are minimized and weaknesses exaggerated.
The player is being developed (being asked to stretch their skills beyond their current skill level). This happens more often in the NBA than, for instance, in baseball.
BPM is not capturing what a player contributes. This is particularly an issue for elite defenders where BPM simply does not recognize them from their box score statistics.
If one were to define a "replacement level" for offense and defense, it would be -1.7 on offense and -0.3 on defense – though the concept of replacement level for components doesn't necessarily make sense. Almost all point guards would be well below the -0.3 level on defense, since a guard's role is primarily to focus on offense. The reverse is true of post players. It's an interesting exercise, but ultimately OVORP and DVORP aren't that useful, and will not be displayed here.
So, to calculate VORP, the formula is simply: [BPM - (-2.0)] * (% of possessions played) * (team games/82). This yields the number of points the player is producing over a replacement player, per 100 TEAM possessions over an entire season. This normalizes all of the players to the same pace environment, so if a team plays at a much faster pace, they in reality would have a much larger number of possessions and a larger average actual point differential, but this calculation looks per 100 possessions.

As an example: In 2017, LeBron had a BPM of +7.6, and he played 70% of Cleveland's minutes. His VORP, then, would be [7.6 – (-2.0)] * 0.70 * 82/82 = 6.7.

The beauty of VORP is that like WAR in baseball, it should track linearly with salary. A player with a VORP of 4.0 is worth, on the market, about twice what a player of VORP 2.0 is worth. Sometimes good players play only a few minutes for reasons outside their control, and would be worth more because they should be getting more minutes. Still, for a crude estimate, VORP is valuable. It measures reasonably accurately what a player did produce in terms of value for a given team.

To convert VORP to an estimate of wins over replacement, simply multiply by 2.7. This translates a player's efficiency differential approximately into wins, using the conversion rate near league-average rather than that in the diminishing returns area of the Pythagorean formula. By this methodology, Michael Jordan in 1989 was worth about 31 wins. (In reality, he would quickly push an average team into the diminishing returns region of the points-to-wins conversion.)
