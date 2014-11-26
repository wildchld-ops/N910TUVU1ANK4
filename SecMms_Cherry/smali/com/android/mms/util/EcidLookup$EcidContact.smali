.class Lcom/android/mms/util/EcidLookup$EcidContact;
.super Ljava/lang/Object;
.source "EcidLookup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/EcidLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EcidContact"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field pendingNotification:Ljava/lang/Runnable;

.field queryPending:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/util/EcidLookup$EcidContact;-><init>(Ljava/lang/String;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p3    # Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/util/EcidLookup$EcidContact;->name:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/mms/util/EcidLookup$EcidContact;->queryPending:Z

    iput-object p3, p0, Lcom/android/mms/util/EcidLookup$EcidContact;->pendingNotification:Ljava/lang/Runnable;

    return-void
.end method
