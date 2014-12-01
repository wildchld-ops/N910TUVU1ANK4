.class Lcom/android/settings/motion/MotionEnabler$3;
.super Ljava/lang/Object;
.source "MotionEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/MotionEnabler;->showMotionUnlockDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/MotionEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/MotionEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion/MotionEnabler$3;->this$0:Lcom/android/settings/motion/MotionEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/motion/MotionEnabler$3;->this$0:Lcom/android/settings/motion/MotionEnabler;

    # getter for: Lcom/android/settings/motion/MotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion/MotionEnabler;->access$000(Lcom/android/settings/motion/MotionEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_motion_tilt_to_unlock"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/motion/MotionEnabler$3;->this$0:Lcom/android/settings/motion/MotionEnabler;

    # getter for: Lcom/android/settings/motion/MotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion/MotionEnabler;->access$000(Lcom/android/settings/motion/MotionEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_unlock_camera_short_cut"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/motion/MotionEnabler$3;->this$0:Lcom/android/settings/motion/MotionEnabler;

    # getter for: Lcom/android/settings/motion/MotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion/MotionEnabler;->access$000(Lcom/android/settings/motion/MotionEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/motion/MotionEnabler$3;->this$0:Lcom/android/settings/motion/MotionEnabler;

    # getter for: Lcom/android/settings/motion/MotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion/MotionEnabler;->access$000(Lcom/android/settings/motion/MotionEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/motion/MotionEnabler$3;->this$0:Lcom/android/settings/motion/MotionEnabler;

    # invokes: Lcom/android/settings/motion/MotionEnabler;->broadcastMotionChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/motion/MotionEnabler;->access$200(Lcom/android/settings/motion/MotionEnabler;Z)V

    return-void
.end method
