.class public Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;
.super Ljava/lang/Object;
.source "CocktailBarManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CocktailExtraInfo"
.end annotation


# instance fields
.field public isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NOTHING:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    return-void
.end method
