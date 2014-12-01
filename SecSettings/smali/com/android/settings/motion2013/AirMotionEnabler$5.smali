.class Lcom/android/settings/motion2013/AirMotionEnabler$5;
.super Ljava/lang/Object;
.source "AirMotionEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion2013/AirMotionEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/AirMotionEnabler;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler$5;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    # getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$100(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_glance_view"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler$5;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    # getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$100(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_scroll"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler$5;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    # getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$100(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_turn"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler$5;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    # getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$100(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_item_move"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler$5;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    # getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$100(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_clip"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler$5;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    # getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$100(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_call_accept"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler$5;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    # invokes: Lcom/android/settings/motion2013/AirMotionEnabler;->broadcastMotionChanged(Z)V
    invoke-static {v0, v3}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$300(Lcom/android/settings/motion2013/AirMotionEnabler;Z)V

    return-void
.end method
