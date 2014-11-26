.class public Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;
.super Ljava/lang/Object;
.source "CardManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mInstance:Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContentResolver:Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;
    .locals 1
    .param p0    # Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mInstance:Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mInstance:Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mInstance:Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;

    return-object v0
.end method

.method private isRegistered()Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SmartAssistantCardProviderRegistered"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private removeCardInner(Ljava/lang/String;)I
    .locals 4
    .param p1    # Ljava/lang/String;

    const-string v0, "card_key=? AND card_provider=?"

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mPackageName:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderContract$Card;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method


# virtual methods
.method public removeCard(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->isRegistered()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;

    const-string v2, "CardProvider is not registered"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to remove a card. cardId is empty."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->removeCardInner(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2

    sget-object v1, Lcom/samsung/android/sdk/smartassistant/cardprovider/CardManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to remove card."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
