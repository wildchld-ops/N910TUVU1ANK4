.class public final enum Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;
.super Ljava/lang/Enum;
.source "CocktailBarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/utils/CocktailBarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CocktailUpdatedState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

.field public static final enum COCKTAIL_UPDATED_CAR_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

.field public static final enum COCKTAIL_UPDATED_CONTEXTUAL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

.field public static final enum COCKTAIL_UPDATED_EMERGENCY_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

.field public static final enum COCKTAIL_UPDATED_KIDS_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

.field public static final enum COCKTAIL_UPDATED_KIOSK_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

.field public static final enum COCKTAIL_UPDATED_KNOX_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

.field public static final enum COCKTAIL_UPDATED_MIRROR_LINK_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

.field public static final enum COCKTAIL_UPDATED_NIGHT_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

.field public static final enum COCKTAIL_UPDATED_NORMAL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

.field public static final enum COCKTAIL_UPDATED_NOTHING:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

.field public static final enum COCKTAIL_UPDATED_QUICKTOOL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

.field public static final enum COCKTAIL_UPDATED_SETUP_WIZARD_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

.field public static final enum COCKTAIL_UPDATED_TABLE_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    const-string v1, "COCKTAIL_UPDATED_NOTHING"

    invoke-direct {v0, v1, v3}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NOTHING:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    new-instance v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    const-string v1, "COCKTAIL_UPDATED_NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NORMAL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    new-instance v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    const-string v1, "COCKTAIL_UPDATED_CONTEXTUAL"

    invoke-direct {v0, v1, v5}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_CONTEXTUAL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    new-instance v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    const-string v1, "COCKTAIL_UPDATED_QUICKTOOL"

    invoke-direct {v0, v1, v6}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_QUICKTOOL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    new-instance v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    const-string v1, "COCKTAIL_UPDATED_TABLE_MODE"

    invoke-direct {v0, v1, v7}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_TABLE_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    new-instance v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    const-string v1, "COCKTAIL_UPDATED_NIGHT_MODE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NIGHT_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    new-instance v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    const-string v1, "COCKTAIL_UPDATED_EMERGENCY_MODE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_EMERGENCY_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    new-instance v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    const-string v1, "COCKTAIL_UPDATED_KIDS_MODE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_KIDS_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    new-instance v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    const-string v1, "COCKTAIL_UPDATED_KIOSK_MODE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_KIOSK_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    new-instance v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    const-string v1, "COCKTAIL_UPDATED_SETUP_WIZARD_MODE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_SETUP_WIZARD_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    new-instance v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    const-string v1, "COCKTAIL_UPDATED_KNOX_MODE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_KNOX_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    new-instance v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    const-string v1, "COCKTAIL_UPDATED_CAR_MODE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_CAR_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    new-instance v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    const-string v1, "COCKTAIL_UPDATED_MIRROR_LINK_MODE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_MIRROR_LINK_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v1, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NOTHING:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NORMAL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_CONTEXTUAL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_QUICKTOOL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_TABLE_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NIGHT_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_EMERGENCY_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_KIDS_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_KIOSK_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_SETUP_WIZARD_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_KNOX_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_CAR_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_MIRROR_LINK_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->$VALUES:[Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;
    .locals 1

    sget-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->$VALUES:[Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    return-object v0
.end method
