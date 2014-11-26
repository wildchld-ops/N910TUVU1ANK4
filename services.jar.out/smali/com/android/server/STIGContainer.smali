.class public Lcom/android/server/STIGContainer;
.super Lcom/android/server/SEAMSContainer;
.source "STIGContainer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/SEAMSContainer;-><init>()V

    iput-object p1, p0, Lcom/android/server/SEAMSContainer;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public activateDomain(I)I
    .locals 1
    .param p1    # I

    const/4 v0, -0x2

    return v0
.end method

.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # [Ljava/lang/String;
    .param p3    # I
    .param p4    # I

    const/4 v0, -0x2

    return v0
.end method

.method public deActivateDomain(I)I
    .locals 1
    .param p1    # I

    const/4 v0, -0x2

    return v0
.end method

.method public getActivationStatus()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # [Ljava/lang/String;

    const/4 v0, -0x2

    return v0
.end method
