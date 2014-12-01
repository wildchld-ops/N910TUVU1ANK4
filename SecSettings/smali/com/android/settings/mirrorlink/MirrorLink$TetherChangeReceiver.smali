.class Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MirrorLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/mirrorlink/MirrorLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/mirrorlink/MirrorLink;


# direct methods
.method private constructor <init>(Lcom/android/settings/mirrorlink/MirrorLink;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/mirrorlink/MirrorLink;Lcom/android/settings/mirrorlink/MirrorLink$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;-><init>(Lcom/android/settings/mirrorlink/MirrorLink;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "availableArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v4, "activeArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v4, "erroredArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v7, p0, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    # invokes: Lcom/android/settings/mirrorlink/MirrorLink;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v7, v4, v5, v6}, Lcom/android/settings/mirrorlink/MirrorLink;->access$400(Lcom/android/settings/mirrorlink/MirrorLink;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    const/4 v5, 0x1

    # setter for: Lcom/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z
    invoke-static {v4, v5}, Lcom/android/settings/mirrorlink/MirrorLink;->access$502(Lcom/android/settings/mirrorlink/MirrorLink;Z)Z

    iget-object v4, p0, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    # invokes: Lcom/android/settings/mirrorlink/MirrorLink;->updateState()V
    invoke-static {v4}, Lcom/android/settings/mirrorlink/MirrorLink;->access$600(Lcom/android/settings/mirrorlink/MirrorLink;)V

    goto :goto_0

    :cond_2
    const-string v4, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    # setter for: Lcom/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z
    invoke-static {v4, v6}, Lcom/android/settings/mirrorlink/MirrorLink;->access$502(Lcom/android/settings/mirrorlink/MirrorLink;Z)Z

    iget-object v4, p0, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    # invokes: Lcom/android/settings/mirrorlink/MirrorLink;->updateState()V
    invoke-static {v4}, Lcom/android/settings/mirrorlink/MirrorLink;->access$600(Lcom/android/settings/mirrorlink/MirrorLink;)V

    goto :goto_0

    :cond_3
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    const-string v5, "connected"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/android/settings/mirrorlink/MirrorLink;->mUsbConnected:Z
    invoke-static {v4, v5}, Lcom/android/settings/mirrorlink/MirrorLink;->access$702(Lcom/android/settings/mirrorlink/MirrorLink;Z)Z

    iget-object v4, p0, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    # getter for: Lcom/android/settings/mirrorlink/MirrorLink;->mUsbConnected:Z
    invoke-static {v4}, Lcom/android/settings/mirrorlink/MirrorLink;->access$700(Lcom/android/settings/mirrorlink/MirrorLink;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/settings/mirrorlink/MirrorLink;->access$800(Lcom/android/settings/mirrorlink/MirrorLink;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "usb_tethering_enabled"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    iget-object v4, p0, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    # setter for: Lcom/android/settings/mirrorlink/MirrorLink;->mTetheringEnabled:Z
    invoke-static {v4, v6}, Lcom/android/settings/mirrorlink/MirrorLink;->access$902(Lcom/android/settings/mirrorlink/MirrorLink;Z)Z

    iget-object v4, p0, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    # invokes: Lcom/android/settings/mirrorlink/MirrorLink;->updateState()V
    invoke-static {v4}, Lcom/android/settings/mirrorlink/MirrorLink;->access$600(Lcom/android/settings/mirrorlink/MirrorLink;)V

    goto :goto_0
.end method
