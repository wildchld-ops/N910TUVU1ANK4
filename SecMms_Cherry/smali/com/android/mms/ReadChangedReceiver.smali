.class public Lcom/android/mms/ReadChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ReadChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ReadChangedReceiver$1;,
        Lcom/android/mms/ReadChangedReceiver$ReadChangedHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/ReadChangedReceiver"

.field private static final UPDATE_BADGE:I = 0x1

.field private static final UPDATE_BADGE_DELAY_MS:J = 0x3e8L

.field private static final handler:Lcom/android/mms/ReadChangedReceiver$ReadChangedHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/mms/ReadChangedReceiver$ReadChangedHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/ReadChangedReceiver$ReadChangedHandler;-><init>(Lcom/android/mms/ReadChangedReceiver$1;)V

    sput-object v0, Lcom/android/mms/ReadChangedReceiver;->handler:Lcom/android/mms/ReadChangedReceiver$ReadChangedHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "Mms/ReadChangedReceiver"

    const-string v1, "onReceive()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/ReadChangedReceiver;->handler:Lcom/android/mms/ReadChangedReceiver$ReadChangedHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/android/mms/ReadChangedReceiver;->handler:Lcom/android/mms/ReadChangedReceiver$ReadChangedHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
