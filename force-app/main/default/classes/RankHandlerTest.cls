@isTest
public class RankHandlerTest {
    @isTest
    private static void rankPrizeTest() {
        RankHandler rnk = new RankHandler();
        string prizeGold = rnk.rankPrize(1);
        system.assertEquals('Gold', prizeGold);
        string prizeSilver = rnk.rankPrize(2);
        system.assertEquals('Silver', prizeSilver);
        string prizeBronze = rnk.rankPrize(3);
        system.assertEquals('Bronze', prizeBronze);
        string prizeTop10 = rnk.rankPrize(7);
        system.assertEquals('Top 10 certificate', prizeTop10);
        string prizeParticipant = rnk.rankPrize(13);
        system.assertEquals('Participation Certificate', prizeParticipant);

    }

    @isTest
    private static void rankPrizeSwitchTest() {
        RankHandler s  = new RankHandler();
        string prizeGold = s.rankPrizeSwitch(1);
        system.assertEquals('Gold', prizeGold);
        string prizeSilver = s.rankPrizeSwitch(2);
        system.assertEquals('Silver', prizeSilver);
        string prizeBronze = s.rankPrizeSwitch(3);
        system.assertEquals('Bronze', prizeBronze);
        string prizeTop10 = s.rankPrizeSwitch(8);
        system.assertEquals('Welcome to top 10!', prizeTop10);
        string prizeParticipant = s.rankPrizeSwitch(20);
        system.assertEquals('Thank you for your participation', prizeParticipant);
    }
}
