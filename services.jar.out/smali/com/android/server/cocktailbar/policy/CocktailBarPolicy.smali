.class public Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;
.super Ljava/lang/Object;
.source "CocktailBarPolicy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CocktailBarPolicy"

.field private static mInstance:Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;


# instance fields
.field private mCocktailMode:I

.field private mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mInstance:Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mCocktailMode:I

    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    return-void
.end method

.method public static getInstance(Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;)Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;
    .locals 1

    sget-object v0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mInstance:Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;-><init>(Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;)V

    sput-object v0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mInstance:Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;

    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mInstance:Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;

    return-object v0
.end method


# virtual methods
.method public canCloseCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailInfo;->getCategory()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :pswitch_0
    iget v4, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mCocktailMode:I

    if-eqz v4, :cond_2

    move v2, v3

    :cond_1
    :goto_0
    return v2

    :pswitch_1
    iget-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v5, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_CONTEXTUAL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-eq v4, v5, :cond_1

    move v2, v3

    goto :goto_0

    :cond_2
    iget v4, v1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    sparse-switch v4, :sswitch_data_0

    :cond_3
    move v2, v3

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/cocktailbar/CocktailInfo;->getCategory()I

    move-result v4

    const/high16 v5, 0x10000

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NOTHING:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    iput-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :sswitch_1
    iget-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v5, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_QUICKTOOL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-ne v4, v5, :cond_4

    sget-object v3, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NOTHING:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    iput-object v3, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_0

    :sswitch_2
    iget-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v5, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_TABLE_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-ne v4, v5, :cond_5

    sget-object v3, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NOTHING:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    iput-object v3, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_0

    :sswitch_3
    iget-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v5, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NIGHT_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-ne v4, v5, :cond_6

    sget-object v3, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NOTHING:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    iput-object v3, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x10001
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x20 -> :sswitch_2
        0x80 -> :sswitch_3
    .end sparse-switch
.end method

.method public canSendUpdateIntent(Lcom/samsung/android/cocktailbar/Cocktail;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canShowCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailInfo;->getCategory()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :pswitch_0
    iget v4, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mCocktailMode:I

    if-eqz v4, :cond_2

    move v2, v3

    :cond_1
    :goto_0
    return v2

    :pswitch_1
    iget-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v5, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_CONTEXTUAL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-eq v4, v5, :cond_1

    move v2, v3

    goto :goto_0

    :cond_2
    iget v4, v1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    sparse-switch v4, :sswitch_data_0

    :cond_3
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/cocktailbar/CocktailInfo;->getCategory()I

    move-result v4

    const/high16 v5, 0x10000

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v5, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_CONTEXTUAL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-eq v4, v5, :cond_1

    move v2, v3

    goto :goto_0

    :sswitch_1
    iget-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v5, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_QUICKTOOL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-eq v4, v5, :cond_1

    move v2, v3

    goto :goto_0

    :sswitch_2
    iget-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v5, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_TABLE_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-eq v4, v5, :cond_1

    move v2, v3

    goto :goto_0

    :sswitch_3
    iget-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v5, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NIGHT_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-eq v4, v5, :cond_1

    move v2, v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x10001
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x20 -> :sswitch_2
        0x80 -> :sswitch_3
    .end sparse-switch
.end method

.method public canUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;)Z
    .locals 8

    const/high16 v7, 0x10000

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailInfo;->getCategory()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :pswitch_0
    iget v5, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mCocktailMode:I

    if-eqz v5, :cond_3

    iget-object v5, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v6, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->COCKTAIL_PRIVATE_MODE_STATE:[Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    iget v7, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mCocktailMode:I

    aget-object v6, v6, v7

    if-ne v5, v6, :cond_2

    sget-object v5, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->COCKTAIL_PRIVATE_MODE:[Ljava/lang/String;

    iget v6, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mCocktailMode:I

    aget-object v5, v5, v6

    iget-object v6, v1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    :goto_0
    return v3

    :pswitch_1
    sget-object v4, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_CONTEXTUAL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    iput-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    iget-object v5, v1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, v1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->getCocktailUpdateStateByPrivateMode(Ljava/lang/String;)Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    move-result-object v2

    sget-object v5, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NOTHING:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-ne v2, v5, :cond_4

    move v3, v4

    goto :goto_0

    :cond_4
    iget-object v5, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-eq v5, v2, :cond_1

    move v3, v4

    goto :goto_0

    :cond_5
    iget v5, v1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    sparse-switch v5, :sswitch_data_0

    :cond_6
    iget-object v5, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v4, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NORMAL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    iput-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    goto :goto_0

    :sswitch_0
    iget-object v5, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v4, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NORMAL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    iput-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/cocktailbar/CocktailInfo;->getCategory()I

    move-result v5

    and-int/2addr v5, v7

    if-eqz v5, :cond_8

    sget-object v4, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_CONTEXTUAL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    iput-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    goto :goto_0

    :cond_8
    iget-object v5, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v6, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_CONTEXTUAL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-eq v5, v6, :cond_1

    move v3, v4

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/cocktailbar/CocktailInfo;->getCategory()I

    move-result v5

    and-int/2addr v5, v7

    if-nez v5, :cond_1

    iget-object v5, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v6, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_QUICKTOOL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-eq v5, v6, :cond_1

    move v3, v4

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/cocktailbar/CocktailInfo;->getCategory()I

    move-result v5

    and-int/2addr v5, v7

    if-nez v5, :cond_1

    iget-object v5, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v6, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_TABLE_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-eq v5, v6, :cond_1

    move v3, v4

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/cocktailbar/CocktailInfo;->getCategory()I

    move-result v5

    and-int/2addr v5, v7

    if-nez v5, :cond_1

    iget-object v5, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v6, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NIGHT_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-eq v5, v6, :cond_1

    move v3, v4

    goto/16 :goto_0

    :cond_9
    move v3, v4

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x10001
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x20 -> :sswitch_2
        0x80 -> :sswitch_3
    .end sparse-switch
.end method

.method public getCocktailMode()I
    .locals 1

    iget v0, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mCocktailMode:I

    return v0
.end method

.method public isAllowTransientBarCocktailBar()Z
    .locals 1

    iget v0, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mCocktailMode:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public setCocktailMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mCocktailMode:I

    return-void
.end method
