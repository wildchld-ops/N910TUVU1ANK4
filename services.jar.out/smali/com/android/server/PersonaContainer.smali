.class public Lcom/android/server/PersonaContainer;
.super Lcom/android/server/SEAMSContainer;
.source "PersonaContainer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/SEAMSContainer;-><init>()V

    iput-object p1, p0, Lcom/android/server/SEAMSContainer;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # [Ljava/lang/String;
    .param p3    # I
    .param p4    # I

    const/4 v0, -0x1

    return v0
.end method

.method public loadContainerSetting(Ljava/lang/String;IZ)I
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Z

    const/4 v0, -0x1

    return v0
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # [Ljava/lang/String;
    .param p3    # I

    const/4 v0, -0x1

    return v0
.end method
