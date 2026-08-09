

module Meta
{
    struct ClientId
    {
        int id;
    }

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

    interface FetchWorldData
    {
        PlayerProfile getPlayerProfile(ClientId playerId);
    }

}
