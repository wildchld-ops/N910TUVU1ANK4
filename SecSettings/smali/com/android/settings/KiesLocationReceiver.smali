.class public Lcom/android/settings/KiesLocationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KiesLocationReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "KiesLocationReceiver"

    const-string v1, "exit not supported device"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
