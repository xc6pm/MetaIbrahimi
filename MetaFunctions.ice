module Meta
{
    exception MapNotFoundException {
        int mapId;
    }

    interface MetaFunctions
    {
        int verifyTicket(string ticket);

        string getMap(int mapId) throws MapNotFoundException;
    }
}