.class Lcom/android/settings/mirrorlink/MirrorLink$MlApp;
.super Ljava/lang/Object;
.source "MirrorLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/mirrorlink/MirrorLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MlApp"
.end annotation


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mEntityName:Ljava/lang/String;

.field private mNonRestricted:Ljava/lang/String;

.field private mRestricted:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;

.field private mValidDate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;->mAppName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEntityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;->mEntityName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getNonRestricted()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;->mNonRestricted:Ljava/lang/String;

    return-object v0
.end method

.method public getRestricted()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;->mRestricted:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getValidDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;->mValidDate:Ljava/lang/String;

    return-object v0
.end method

.method public setEntityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;->mEntityName:Ljava/lang/String;

    return-void
.end method

.method public setNonRestricted(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;->mNonRestricted:Ljava/lang/String;

    return-void
.end method

.method public setRestricted(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;->mRestricted:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;->mStatus:Ljava/lang/String;

    return-void
.end method

.method public setValidDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;->mValidDate:Ljava/lang/String;

    return-void
.end method
