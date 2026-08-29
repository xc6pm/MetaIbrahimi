module Meta
{
    struct SkinColor
    {
        byte r;
        byte g;
        byte b;
    }

    struct PlayerProfile
    {
        string Username;
        byte CharacterType;

        byte HeadSkin;
        SkinColor HeadColor;

        byte ShirtSkin;
        SkinColor ShirtColor;

        byte PantsSkin;
        SkinColor PantsColor;

        byte ShoeSkin;
        SkinColor ShoeColor;
    }

    exception NotFoundException {
        int entityId;
    }

    interface MetaFunctions
    {
        int verifyTicket(string ticket);

        string getMap(int mapId) throws NotFoundException;

        PlayerProfile getPlayerProfile(int userId) throws NotFoundException;
    }
}