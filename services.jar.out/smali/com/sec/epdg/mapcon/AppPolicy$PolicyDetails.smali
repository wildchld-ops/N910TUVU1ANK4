.class Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;
.super Ljava/lang/Object;
.source "AppPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/mapcon/AppPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PolicyDetails"
.end annotation


# instance fields
.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private final mPreferredRat:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

.field private final mProcessName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;->mPreferredRat:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    iput-object p2, p0, Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;->mProcessName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method protected getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method protected getPreferredRat()Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;->mPreferredRat:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    return-object v0
.end method

.method protected getProcessName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;->mPreferredRat:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
