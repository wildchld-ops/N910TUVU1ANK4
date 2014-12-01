.class Lcom/android/settings/LockscreenMenuSettings$8;
.super Ljava/lang/Object;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockscreenMenuSettings;->setMotionCameraShortCut(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LockscreenMenuSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/LockscreenMenuSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/LockscreenMenuSettings$8;->this$0:Lcom/android/settings/LockscreenMenuSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings$8;->this$0:Lcom/android/settings/LockscreenMenuSettings;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_unlock_camera_short_cut"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings$8;->this$0:Lcom/android/settings/LockscreenMenuSettings;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings$8;->this$0:Lcom/android/settings/LockscreenMenuSettings;

    # invokes: Lcom/android/settings/LockscreenMenuSettings;->broadcastMotionChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/LockscreenMenuSettings;->access$400(Lcom/android/settings/LockscreenMenuSettings;Z)V

    return-void
.end method
