.class public Lcom/android/mms/UIEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UIEventReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/UIEventReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "Mms/UIEventReceiver"

    const-string v1, "ui event"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
