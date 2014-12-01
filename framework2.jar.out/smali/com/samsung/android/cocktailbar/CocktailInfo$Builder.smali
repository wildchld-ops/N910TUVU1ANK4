.class public Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
.super Ljava/lang/Object;
.source "CocktailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCategory:I

.field private mContentInfo:Landroid/os/Bundle;

.field private mContentView:Landroid/widget/RemoteViews;

.field private mContext:Landroid/content/Context;

.field private mDisplayPolicy:I

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContext:Landroid/content/Context;

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mOrientation:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mDisplayPolicy:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mCategory:I

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentInfo:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/cocktailbar/CocktailInfo;
    .locals 2

    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailInfo;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/CocktailInfo;-><init>()V

    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mOrientation:I

    # setter for: Lcom/samsung/android/cocktailbar/CocktailInfo;->mOrientation:I
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->access$002(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I

    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mDisplayPolicy:I

    # setter for: Lcom/samsung/android/cocktailbar/CocktailInfo;->mDisplayPolicy:I
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->access$102(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I

    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mCategory:I

    # setter for: Lcom/samsung/android/cocktailbar/CocktailInfo;->mCategory:I
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->access$202(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    # setter for: Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentView:Landroid/widget/RemoteViews;
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->access$302(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    # setter for: Lcom/samsung/android/cocktailbar/CocktailInfo;->mUserId:I
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->access$402(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentInfo:Landroid/os/Bundle;

    # setter for: Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentInfo:Landroid/os/Bundle;
    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailInfo;->access$502(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-object v0
.end method

.method public setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mCategory:I

    return-object p0
.end method

.method public setContentInfo(Landroid/os/Bundle;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentInfo:Landroid/os/Bundle;

    return-object p0
.end method

.method public setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mDisplayPolicy:I

    return-object p0
.end method

.method public setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->mOrientation:I

    return-object p0
.end method
