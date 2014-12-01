.class Lcom/android/settings/FeatureSettings$11;
.super Ljava/lang/Object;
.source "FeatureSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FeatureSettings;

.field final synthetic val$setting_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/FeatureSettings;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/FeatureSettings$11;->this$0:Lcom/android/settings/FeatureSettings;

    iput-object p2, p0, Lcom/android/settings/FeatureSettings$11;->val$setting_type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    const/4 v10, 0x1

    iget-object v8, p0, Lcom/android/settings/FeatureSettings$11;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    const-string v8, "air_motion"

    iget-object v9, p0, Lcom/android/settings/FeatureSettings$11;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/FeatureSettings$11;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_engine"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "isEnable"

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/settings/FeatureSettings$11;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v8, p0, Lcom/android/settings/FeatureSettings$11;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "isEnable"

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/settings/FeatureSettings$11;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v8, p0, Lcom/android/settings/FeatureSettings$11;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_turn"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "isEnable"

    invoke-virtual {v1, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/settings/FeatureSettings$11;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v8, p0, Lcom/android/settings/FeatureSettings$11;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_item_move"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.sec.gesture.AIR_MOVE_SETTINGS_CHANGED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "isEnable"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/settings/FeatureSettings$11;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.settings.action.talkback_off"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/FeatureSettings$11;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string v8, "air_view"

    iget-object v9, p0, Lcom/android/settings/FeatureSettings$11;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/FeatureSettings$11;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "air_view_master_onoff"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "isEnable"

    invoke-virtual {v0, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/settings/FeatureSettings$11;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/settings/FeatureSettings$11;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "finger_air_view"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    const-string v8, "smart_stay"

    iget-object v9, p0, Lcom/android/settings/FeatureSettings$11;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/settings/FeatureSettings$11;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "intelligent_sleep_mode"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    const-string v8, "smart_pause"

    iget-object v9, p0, Lcom/android/settings/FeatureSettings$11;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/settings/FeatureSettings$11;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "smart_pause"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "isEnable"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/settings/FeatureSettings$11;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    const-string v8, "smart_scroll"

    iget-object v9, p0, Lcom/android/settings/FeatureSettings$11;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/FeatureSettings$11;->this$0:Lcom/android/settings/FeatureSettings;

    iget-object v8, v8, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "smart_scroll"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "isEnable"

    invoke-virtual {v6, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/settings/FeatureSettings$11;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
