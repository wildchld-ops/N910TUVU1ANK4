.class public Lcom/android/server/cocktailbar/utils/CocktailBarUtils;
.super Ljava/lang/Object;
.source "CocktailBarUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;,
        Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;
    }
.end annotation


# static fields
.field public static final COCKTAIL_PRIVATE_MODE:[Ljava/lang/String;

.field public static final COCKTAIL_PRIVATE_MODE_STATE:[Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

.field private static final TAG:Ljava/lang/String; = "CocktailBarUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "emergencymode"

    aput-object v1, v0, v4

    const-string v1, "kidsmode"

    aput-object v1, v0, v5

    const-string v1, "kioskmode"

    aput-object v1, v0, v6

    const-string/jumbo v1, "setupwizard"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "knoxmode"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "carmode"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mirrorlink"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->COCKTAIL_PRIVATE_MODE:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v1, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NORMAL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_EMERGENCY_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_KIDS_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_KIOSK_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_SETUP_WIZARD_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_KNOX_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_CAR_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_MIRROR_LINK_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->COCKTAIL_PRIVATE_MODE_STATE:[Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCocktailUpdateStateByPrivateMode(Ljava/lang/String;)Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;
    .locals 4

    sget-object v1, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NOTHING:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-nez p0, :cond_0

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->COCKTAIL_PRIVATE_MODE:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    sget-object v3, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->COCKTAIL_PRIVATE_MODE:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->COCKTAIL_PRIVATE_MODE_STATE:[Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    aget-object v1, v3, v0

    :cond_1
    move-object v2, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
