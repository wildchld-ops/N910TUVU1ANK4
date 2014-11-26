.class public Lcom/android/mms/rcs/transaction/StatusNotificationReceiver$NotificationData;
.super Ljava/lang/Object;
.source "StatusNotificationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/transaction/StatusNotificationReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationData"
.end annotation


# instance fields
.field public content:Ljava/lang/String;

.field public isGroupChat:Z

.field public isInvite:Z

.field public senderName:Ljava/lang/String;

.field public senderUri:Ljava/lang/String;

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
